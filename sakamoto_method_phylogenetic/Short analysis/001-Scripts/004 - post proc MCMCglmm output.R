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


# set read in directory
rdir2 <- "004-Output--MCMCglmm"
rpath <- paste(dir, ver, rdir2, sep = "/")

# create directories for each set of tree and data
rpaths <- paste(rpath, nms, sep = "/")


# n <- 1:length(dt.ls)
# read in all saved models
mod.ls <- vector(mode = "list", length = length(nms))
for(i in 1:length(rpaths)){
  .path <- rpaths[i]
  rnms <- list.files(.path)
  rnms <- rnms[grepl("\\.RData", rnms)]
  rnms <- rnms[grepl("^Model_", rnms)]
  
  .mod.ls <- vector(mode = "list", length=length(rnms))
  for(j in 1:length(rnms)){
    rnm <- rnms[j]
    path <- paste(.path, rnm, sep="/")
    load(path)
    rm(path)
    .mod.ls[[j]] <- .mod
  }
  # .nms <- gsub("Model_", "", rnms)
  .nms <- gsub("\\.RData", "", rnms)
  names(.mod.ls) <- .nms
  mod.ls[[i]] <- .mod.ls
}# end loop i
names(mod.ls) <- nms
sapply(mod.ls, length)

# get DIC for all models
dic.ls <- lapply(mod.ls, sapply, DIC.MCMCglmm)
summ.ls <- lapply(mod.ls, lapply, summary)
devs.ls <- lapply(mod.ls, lapply, function(x){x$Deviance})

cond <- sapply(mod.ls, length) == 3
sum(cond)
sapply(dic.ls[cond], function(x){which(x==min(x))})

dic.diff <- sapply(dic.ls[cond], function(x){x[2] - x[3]})
summary(dic.diff)
hist(dic.diff)

dic.2 <- sapply(dic.ls[cond], function(x){x[2]})
dic.3 <- sapply(dic.ls[cond], function(x){x[3]})


