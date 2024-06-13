rm(list=ls(a=T))

library(evoldiver)
library(phangorn)
library(stringr)
library(caper)

dir <- ".../Methods-Dino-Decline/sakamoto_method_phylogenetic"
ver <- "short_analysis"
rdir <- "002-Data"

# set read in path
rpath <- paste(dir, ver, rdir, sep = "/")

# list out file names in read in path
fnms <- list.files(rpath)

# read in ages
fnm <- "ages_Ntips.txt"
path <- paste(rpath, fnm, sep = "/")
ages <- fread(path)
rm(path)
ages.dt <- ages[, c("Taxon", "FAD", "LAD"), with=F]


# read in trees
fnm <- "trees_TimeScaled.tre"
path <- paste(rpath, fnm, sep = "/")
tr.ls <- read.tree(path)
rm(path)
nms <- str_pad(1:length(tr.ls), 3, "left", pad = "0")

N <- 1:length(tr.ls)

# merge tip labels with age ranges
dm.ls <- vector(mode = "list", length=length(tr.ls))
# names(dm.ls) <- names(tr.ls)
for(i in N) {
  # i <- 1
  tr <- tr.ls[[i]]
  tx <- tr$tip.label
  dm <- data.table(Taxon=tx)
  dm <- merge(dm, ages.dt, by="Taxon")
  dm <- dm[match(tx, Taxon)]
  dm.ls[[i]] <- dm
}

###### FOLLOWING CODE FOR CHECKING TAXON MEMBERSHIP

# # count saurischian taxa
# sr <- numeric(length = length(tr.ls))
# for(i in N) {
#   # i <- 1
#   tr <- tr.ls[[i]]
#   tx <- tr$tip.label
# 
#   saur <- clade.members(getMRCA(tr, c("Herrerasaurus_ischigualastensis", "Archaeopteryx_lithographica")), tr, tip.labels=T)
#   # saur <- clade.members(getMRCA(tr, c("Nyasasaurus_parringtoni", "Archaeopteryx_lithographica")), tr, tip.labels=T)
#   sr[i] <- length(saur)
# }
# sr
# mean(sr)
# 
# # count theropod taxa
# th <- numeric(length = length(tr.ls))
# for(i in N) {
#   # i <- 1
#   tr <- tr.ls[[i]]
#   tx <- tr$tip.label
# 
#   .th <- clade.members(getMRCA(tr, c("Nyasasaurus_parringtoni", "Archaeopteryx_lithographica")), tr, tip.labels=T)
#   th[i] <- length(.th)
# }
# th
# mean(th)
# 
# # count sauropod taxa
# s <- numeric(length = length(tr.ls))
# for(i in N) {
#   # i <- 1
#   tr <- tr.ls[[i]]
#   tx <- tr$tip.label
# 
#   .s1 <- clade.members(getMRCA(tr, c("Panphagia_protos", "Brachiosaurus_altithorax")), tr, tip.labels=T)
#   .s2 <- clade.members(getMRCA(tr, c("Pampadromaeus_barberenai", "Brachiosaurus_altithorax")), tr, tip.labels=T)
#   if(length(.s1) < length(.s2)) {.s <- .s2}else{.s <- .s1}
#   s[i] <- length(.s)
# }
# s
# mean(s)
# 
# # count ornithischian taxa
# o <- numeric(length = length(tr.ls))
# for(i in N) {
#   # i <- 1
#   tr <- tr.ls[[i]]
#   tx <- tr$tip.label
# 
#   .o <- clade.members(getMRCA(tr, c("Eocursor_parvus", "Triceratops_horridus")), tr, tip.labels=T)
#   o[i] <- length(.o)
# }
# o
# mean(o)
# 
# # count hadro taxa
# h <- numeric(length = length(tr.ls))
# for(i in N) {
#   # i <- 1
#   tr <- tr.ls[[i]]
#   tx <- tr$tip.label
#   
#   .h <- clade.members(getMRCA(tr, c("Lurdusaurus_arenatus", "Hypacrosaurus_altispinus")), tr, tip.labels=T)
#   h[i] <- length(.h)
# }
# h
# mean(h)
# 
# # count ceratopsid taxa
# c <- numeric(length = length(tr.ls))
# for(i in N) {
#   # i <- 1
#   tr <- tr.ls[[i]]
#   tx <- tr$tip.label
#   
#   .c <- clade.members(getMRCA(tr, c("Triceratops_horridus", "Centrosaurus_apertus")), tr, tip.labels=T)
#   c[i] <- length(.c)
# }
# c
# mean(c)

# assign group membership
for(i in N) {
  # i <- 1
  tr <- tr.ls[[i]]
  
  o <- clade.members(getMRCA(tr, c("Eocursor_parvus", "Triceratops_horridus")), tr, tip.labels=T)
  s1 <- clade.members(getMRCA(tr, c("Panphagia_protos", "Brachiosaurus_altithorax")), tr, tip.labels=T)
  s2 <- clade.members(getMRCA(tr, c("Pampadromaeus_barberenai", "Brachiosaurus_altithorax")), tr, tip.labels=T)
  if(length(s1) < length(s2)) {s <- s2}else{s <- s1}
  th <- clade.members(getMRCA(tr, c("Nyasasaurus_parringtoni", "Archaeopteryx_lithographica")), tr, tip.labels=T)
  
  c <- clade.members(getMRCA(tr, c("Triceratops_horridus", "Centrosaurus_apertus")), tr, tip.labels=T)
  h <- clade.members(getMRCA(tr, c("Lurdusaurus_arenatus", "Hypacrosaurus_altispinus")), tr, tip.labels=T)
  
  dm <- copy(dm.ls[[i]])
  
  dm[, Group:=0]
  dm[is.element(Taxon, th), Group:=1]
  dm[is.element(Taxon, s), Group:=2]
  dm[is.element(Taxon, c), Group:=4]
  dm[is.element(Taxon, h), Group:=5]
  dm[is.element(Taxon, o) & !is.element(Taxon, h) & !is.element(Taxon, c), Group:=3]
  
  # dm[!{is.element(Taxon, o) | is.element(Taxon, s) |is.element(Taxon, th)}]
  
  dm <- dm[match(tr$tip.label, Taxon)]
  dm.ls[[i]] <- dm
}

# check taxon count by group
dm[, length(Taxon), by="Group"]

# create Time and node count covariates
for(i in N) {
  # i <- 1
  tr <- tr.ls[[i]]
  dm <- copy(dm.ls[[i]])
  time <- pathLengths(tr)
  nodes <- nodeCount(tr)
  time <- data.table(Taxon=names(time), Time=time)
  time[, Time2:=Time^2]
  time[, TimeSqrt:=sqrt(Time)]
  nodes <- data.table(Taxon=names(nodes), Nodes=nodes, Speciation=log(nodes))
  nodes[, Speciation2:=Speciation^2]
  dm <- merge(dm, time, by="Taxon")
  dm <- merge(dm, nodes, by="Taxon")
  dm <- dm[match(tr$tip.label, Taxon)]
  dm.ls[[i]] <- dm
}
dm.ls

# create dummy code and interaction terms
for(i in N) {
  # i <- 1
  tr <- tr.ls[[i]]
  dm <- copy(dm.ls[[i]])
  dm[, C:=0]
  dm[, H:=0]
  dm[, O:=0]
  dm[, S:=0]
  dm[, Th:=0]
  dm[Group==5, H:=1]
  dm[Group==4, C:=1]
  dm[Group==3, O:=1]
  dm[Group==2, S:=1]
  dm[Group==1, Th:=1]
  dm[, Time_H:=Time*H]
  dm[, Time_C:=Time*C]
  dm[, Time_O:=Time*O]
  dm[, Time_S:=Time*S]
  dm[, Time_Th:=Time*Th]
  dm[, Time2_O:=Time_O^2]
  dm[, Time2_S:=Time_S^2]
  dm[, Time2_Th:=Time_Th^2]
  dm[, TimeSq_O:=sqrt(Time_O)]
  dm[, TimeSq_S:=sqrt(Time_S)]
  dm[, TimeSq_Th:=sqrt(Time_Th)]
  
  dm <- dm[match(tr$tip.label, Taxon)]
  dm.ls[[i]] <- dm
  rm(dm)
}
dm.ls

dm <- dm.ls[[1]]

# read in occurrence data
fnm <- "PBDB_Occurrences-20190305.txt"
path <- paste(rpath, fnm, sep = "/")
pbdb <- fread(path)
rm(path)

pbdb[, accepted_name:=gsub(" ", "_", accepted_name)]
pbdb[accepted_rank=="species" | accepted_rank=="genus"]

dm.tx <- dm$Taxon
pbdb.tx <- pbdb$accepted_name
pbdb.genus <- gsub("([[:alpha:]]+)_(.+)", "\\1", pbdb.tx)

nrow(dm)
cond1 <- is.element(dm.tx, pbdb.tx); sum(cond1); sum(!cond1)
dm.tx.unmatched <- dm.tx[!cond1]
dm.tx.unmatched <- gsub("^cf_", "", dm.tx.unmatched)
genus.unmatched <- gsub("([[:alpha:]]+)_(.+)", "\\1", dm.tx.unmatched)

cond2 <- is.element(genus.unmatched, pbdb.genus)
genus.matched <- genus.unmatched[cond2]
genus.unmatched2 <- genus.unmatched[!cond2]

tx.matched <- dm.tx[cond1]
pbdb.matched1 <- pbdb[is.element(accepted_name, tx.matched)]
countUnique(pbdb.matched1$accepted_name)
pbdb.occ1 <- pbdb.matched1[, length(identified_name), by="accepted_name"]
# setnames(pbdb.occ1, "accepted_name", "Taxon")

dm.tx.unmatched

# read in manually matched taxa
fnm <- "MatchTaxa_PBDB.txt"
path <- paste(rpath, fnm, sep = "/")
dt.tx <- fread(path)
rm(path)

# read in manually matched taxa
fnm <- "MatchTaxa_PBDB 2.txt"
path <- paste(rpath, fnm, sep = "/")
dt.tx2 <- fread(path)
rm(path)

dt.tx <- rbindlist(list(dt.tx, dt.tx2))

# dt.tx2 <- dt.tx[AcceptedName_PBDB!="" & AcceptedName_PBDB!="Somphospondyli"]
# dt.tx3 <- dt.tx[AcceptedName_PBDB=="" | AcceptedName_PBDB=="Somphospondyli"]
dt.tx2 <- dt.tx[AcceptedName_PBDB!="" & AcceptedName_PBDB!="Somphospondyli" & AcceptedName_PBDB!="Sauropoda" & AcceptedName_PBDB!="Stegosaurus"]
dt.tx3 <- dt.tx[AcceptedName_PBDB=="" | AcceptedName_PBDB=="Somphospondyli" | AcceptedName_PBDB=="Sauropoda" | AcceptedName_PBDB=="Stegosaurus"]

pbdb.matched2 <- pbdb[is.element(accepted_name, dt.tx2$AcceptedName_PBDB)]
countUnique(pbdb.matched2$accepted_name)

pbdb.occ2 <- pbdb.matched2[, length(identified_name), by="accepted_name"]
# setnames(pbdb.occ2, "accepted_name", "Taxon")

occ3 <- dt.tx3[, length(InPBDB), by="Taxon_Data"]
setnames(occ3, "Taxon_Data", "Taxon")

setnames(dt.tx2, c("Taxon_Data", "AcceptedName_PBDB"), c("Taxon", "accepted_name"))
dt.tx2 <- merge(dt.tx2, pbdb.occ2, by="accepted_name")
occ2 <- dt.tx2[, c("Taxon", "V1"), with=F]
occ2[Taxon=="Mantellisaurus_sp_NHMUK_R3741", Taxon:="cf_Mantellisaurus_sp_NHMUK_R3741"]

setnames(pbdb.occ1, "accepted_name", "Taxon")

pbdb.occ1
occ2
occ3
occ <- rbindlist(list(pbdb.occ1, occ2, occ3))

occ[grepl("Alectrosaurus", Taxon)]
occ[Taxon=="Alectrosaurus_sp_GIN_100_50", Taxon:="cf_Alectrosaurus_sp_GIN_100_50"]

occ[grepl("Megaraptor", Taxon)]
occ[Taxon=="Megaraptor_sp_NMV_P186076", Taxon:="cf_Megaraptor_sp_NMV_P186076"]

countUnique(occ$Taxon)
setnames(occ, "V1", "Num_Occ")
countUnique(dm$Taxon)
dm$Taxon[!is.element(dm$Taxon, occ$Taxon)]

occ.t <- pbdb[, length(occurrence_no), by="min_ma"]
occ.t <- occ.t[order(min_ma, decreasing = T)]
setnames(occ.t, c("LAD", "Occ_LAD"))
barplot(occ.t$Occ_LAD)

# merge number of occurrences
for(i in N){
  # i <- 1
  tr <- tr.ls[[i]]
  dm <- copy(dm.ls[[i]])
  
  dm <- merge(dm, occ, by="Taxon")
  dm[, Num_Occ:=log10(Num_Occ)]
  cnms <- names(dm)
  dm <- merge(dm, occ.t, by="LAD", all.x=T)
  dm <- dm[, c(cnms, "Occ_LAD"), with=F]
  dm[is.na(Occ_LAD), Occ_LAD:=1]
  dm[, Occ_LAD:=log10(Occ_LAD)]
  
  dm <- dm[match(tr$tip.label, Taxon)]
  dm.ls[[i]] <- dm
}

class(tr.ls) <- "multiPhylo"

# write out prepped data
wdir <- "003-DataPrepped"
wpath <- paste(dir, ver, wdir, sep = "/")
if(!dir.exists(wpath)) dir.create(wpath)

# # save R objects
# wnms <- "RWorkspace.RData"
# path <- paste(wpath, wnms, sep = "/")
# save(list = c("dm.ls", "tr.ls"), file = path)
# rm(path)

wnms <- paste("data_", nms, ".txt", sep = "")
paths <- paste(wpath, wnms, sep = "/")
# write out data
for(i in 1:length(dm.ls)){
  .dm <- dm.ls[[i]]
  write.table(.dm, paths[i], quote=F, col.names=T, row.names=F, sep="\t")
}
# write out trees
wnms <- paste("tree_", nms, ".tre", sep = "")
paths <- paste(wpath, wnms, sep = "/")
# write out trees
for(i in 1:length(tr.ls)){
  .tr <- tr.ls[[i]]
  write.tree(.tr, paths[i])
}

