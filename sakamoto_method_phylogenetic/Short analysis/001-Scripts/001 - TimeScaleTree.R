rm(list = ls(a=T))
library(evoldiver)
library(paleotree)

dir <- ".../Methods-Dino-Decline/sakamoto_method_phylogenetic"
rdir <- "Trees from Lloyed et al. 2016"

rpath <- paste(dir, rdir, sep = "/")

# Read in 100 randomly sampled trees:
fnm <- "dinosaur_dating_100_mpts.tre"
path <- paste(rpath, fnm, sep = "/")
trees <- read.tree(path)
rm(path)
trees <- lapply(trees, drop.tip, tip="allzero")
Ntip(trees[[1]])

# Get ages in paleotree format:
fnm <- "dinosaur_timeList.txt"
path <- paste(rpath, fnm, sep = "/")
timeList <- dget(path)
rm(path)

# read in Hedman dates
fnm <- "Hedman_dates.txt"
path <- paste(rpath, fnm, sep = "/")
hedman <- read.delim(path, sep = ",", header=F)
rm(path)
cond <- grepl("Dino", hedman$V1)
dino.dates <- hedman[cond, ]
dino.dates.dt <- data.table(t(dino.dates[,-1]))
nms <- gsub(".node.Dino", "", dino.dates[,1])
setnames(dino.dates.dt, nms)
# root.age <- round(median(unlist(dino.dates.dt)))
root.age <- 248.7 # median Hedman estimate (Lloyd et al. 2016) when including Nysasaurus

geol.ages <- timeList$int.times
geol.ages.dt <- data.table(rownames(geol.ages), geol.ages)
setnames(geol.ages.dt, c("Strat_Int", "MAX_AGE", "MIN_AGE"))
taxon.age.id <- timeList$taxon.times
tx.age.dt <- data.table(rownames(taxon.age.id), taxon.age.id)
setnames(tx.age.dt, c("Taxon", "FAD_ID", "LAD_ID"))

# check T. rex
tx.age.dt[grepl("Tyrannosaurus", Taxon)]
# Taxon FAD_ID LAD_ID
# 1: Tyrannosaurus_rex     76     78
geol.ages.dt[76, ]
# Strat_Int FAD_AGE LAD_AGE
# 1: Campanian    83.6    72.1
geol.ages.dt[78, ]
# Strat_Int FAD_AGE LAD_AGE
# 1: Maastrichtian    72.1      66

tx.dt.ls <- vector(mode = "list", length = nrow(tx.age.dt))
for(i in 1:nrow(tx.age.dt)){
  .tx.dt <- tx.age.dt[i, ]
  .fad.id <- .tx.dt$FAD_ID
  .lad.id <- .tx.dt$LAD_ID
  .fad <- geol.ages.dt[.fad.id, ]
  setnames(.fad, paste("FAD", names(.fad), sep = "_"))
  .lad <- geol.ages.dt[.lad.id, ]
  setnames(.lad, paste("LAD", names(.lad), sep = "_"))
  tx.dt.ls[[i]] <- data.table(.tx.dt, .fad, .lad)
}
tx.dt <- rbindlist(tx.dt.ls)

ages <- tx.dt[, c("Taxon", "FAD_MAX_AGE", "LAD_MIN_AGE")]
setnames(ages, names(ages)[-1], c("FAD", "LAD"))

ages.df <- as.data.frame(ages[, -1])
rownames(ages.df) <- ages$Taxon
ages.df <- ages.df[is.element(rownames(ages.df), trees[[1]]$tip.label), ]

nnode <- Nnode(trees[[1]])
trees.scaled <- lapply(trees, timePaleoPhy, timeData = ages.df, type="equal", add.term=F, node.mins=c(root.age, rep(NA, nnode-1)))
class(trees.scaled) <- "multiPhylo"


# set up write out path
wdir <- "V2.0-ShortTree"
wsdir <- "002-Data"
wpath <- paste(dir, wdir, wsdir, sep = "/")
if(!dir.exists(wpath))dir.create(wpath)

# write out time trees
fnm <- "trees_TimeScaled.tre"
path <- paste(wpath, fnm, sep = "/")
write.tree(trees.scaled, path)
rm(path)

# write out ages
ages.dt <- merge(ages, tx.dt, by="Taxon")
ages.dt <- ages.dt[is.element(Taxon, trees[[1]]$tip.label)]

fnm <- "ages_Ntips.txt"
path <- paste(wpath, fnm, sep = "/")
write.table(ages.dt, path, quote = F, sep = "\t", col.names = T, row.names = F)
rm(path)
