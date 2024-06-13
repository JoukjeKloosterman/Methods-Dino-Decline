rm(list=ls(a=T))

library(evoldiver)
library(MCMCglmm)
library(stringr)

# set parent directory
dir <- ".../Methods-Dino-Decline/sakamoto_method_phylogenetic"
ver <- "short_analysis"

# set read in directory
rdir <- "003-DataPrepped"
# set read in path
rpath <- paste(dir, ver, rdir, sep = "/")

# list out file names in read in path
fnms <- list.files(rpath)

# get data and tree names
dt.nms <- fnms[grepl("\\.txt", fnms)]
tr.nms <- fnms[grepl("\\.tre", fnms)]
nms <- gsub("\\.tre", "", tr.nms)

# read in tip data
dt.paths <- paste(rpath, dt.nms, sep = "/")
dt.ls <- lapply(dt.paths, fread)
names(dt.ls) <- nms

# read in trees
tr.paths <- paste(rpath, tr.nms, sep = "/")
tr.ls <- lapply(tr.paths, read.tree)
names(tr.ls) <- nms

# set priors
prior1 <- list(R = list(V=1, nu=0.002), G=list(G1 = list(V = 1, nu = 1, alpha.mu = 0, alpha.V = 25^2)))
# set number of iterations
nitt <- 1E06
# set sampling interval
thin <- 1E03
# set burnin
burnin <- 1E05

# create invA
inv.ls <- lapply(tr.ls, invA.MCMCglmm)

# define formulae
f.1 <- Nodes ~ Time + Num_Occ
f.2 <- Nodes ~ Time + Time2 + Num_Occ
f.3 <- Nodes ~ TimeSqrt + Num_Occ
f.4 <- Nodes ~ Th + O + S + C + H +
  Time_Th + Time_O + Time_S + Time_C + Time_H +
  Num_Occ
f.5 <- Nodes ~ Th + O + S + C + H +
  Time_Th + Time_O + Time_S + Time_C + Time_H +
  Time2_Th + Time2_O + Time2_S + 
  Num_Occ
f.6 <- Nodes ~ Th + O + S + C + H +
  Time_C + Time_H +
  TimeSq_Th + TimeSq_O + TimeSq_S + 
  Num_Occ

# make list of formulae
formulae1 <- list(f.1, f.2, f.3)
formulae2 <- list(f.4, f.5, f.6)

# formulae <- formulae1
formulae <- formulae2
md <- 1:length(formulae)
md.num <- str_pad(md, 3, "left", pad = "0")
mod.nms <- paste("Model", paste(md.num, sep = ""), sep = "_")
if(length(md)==1){
  models <- paste("Model", paste(md.num, collapse = "-"), sep = "_")
}else{
  models <- paste("Model", paste(range(md.num), collapse = "-"), sep = "_")
}
names(formulae) <- mod.nms


# set write out directory
wdir <- "004-Output--MCMCglmm"
wpath <- paste(dir, ver, wdir, sep = "/")
if(!dir.exists(wpath)) dir.create(wpath)

# create directories for each set of tree and data
wpaths <- paste(wpath, nms, sep = "/")
for(i in 1:length(wpaths)){
  .wpath <- wpaths[i]
  if(!dir.exists(.wpath)) dir.create(.wpath)
}

# fit model
n <- 1:length(dt.ls)
# n <- 52
# n <- 2:length(dt.ls)
# n <- 91
for(i in n){
  .dt <- dt.ls[[i]]
  .tr <- tr.ls[[i]]
  .inv <- inv.ls[[i]]
  .wpath <- wpaths[i]
  .nm <- nms[i]
  # fit models
  N <- 1:length(formulae)
  # N <- 7:length(formulae)
  # N <- length(formulae)
  # N <- 1:6
  for(j in N){
    cat("----" ,.nm, "-", names(formulae)[j], ": INITIATING ----\n----\n----\n----\n")
    .mod <- MCMCglmm(formulae[[j]], data = .dt, random = ~ Taxon,
                     ginverse=list(Taxon=.inv), family="poisson", prior=prior1,
                     nitt=nitt, thin=thin, burnin=burnin, pl=T)
    # summary(mod)
    # mod.ls[[i]] <- .mod
    .path <- paste(.wpath, paste(names(formulae)[j], ".RData", sep=""), sep="/")
    save(list=".mod", file=.path)
    cat("----" ,.nm, "-", names(formulae)[j], ": COMPLETED ----\n----\n----\n----\n")
    Sys.sleep(0.5)
    rm(.mod, .path)
  }# end loop j
}# end loop i

