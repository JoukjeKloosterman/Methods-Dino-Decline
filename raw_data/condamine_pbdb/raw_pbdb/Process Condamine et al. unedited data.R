library("dplyr")

setwd("/Users/joukj/OneDrive/Documents/Bachelor Bioinformatics/Afstuderen/Uitvoering/Original data Condamine/")

ankylosauridae <- read.table("Ankylosauridae_1623818338-occs.tab.txt", sep="\t", header = T)
troodontidae <- read.table("Troodontidae_92184112209-occs.tab.txt", sep="\t", header = T)
dromaesauridae <- read.table("Dromaeosauridae_92184112209-occs.tab.txt", sep="\t", header = T)
ceratopsidae <- read.table("Ceratopsidae_1623818338-occs.tab.txt", sep = "\t", header = T)
hadrosauridae <- read.table("Hadrosauridae_1623818338-occs.tab.txt", sep = "\t", header = T)
tyrannosauridae <- read.table("Tyrannosauridae_1623818338-occs.tab.txt", sep = "\t", header = T)

all_dino <- bind_rows(bind_rows(bind_rows(bind_rows(bind_rows(ankylosauridae, ceratopsidae), troodontidae), dromaesauridae), hadrosauridae), tyrannosauridae)

datasets <- list(ankylosauridae=ankylosauridae, troodontidae=troodontidae, dromaesauridae=dromaesauridae, hadrosauridae=hadrosauridae, ceratopsidae=ceratopsidae, tyrannosauridae=tyrannosauridae, all_dino=all_dino)

for (name in names(datasets)) {
  
  set_subset <- subset(datasets[[name]], select = c("occurrence.genus_name", "ma_max", "ma_min"))
  
  set_subset$status <- "extinct"
  
  set_subset <- subset(set_subset, select = c("occurrence.genus_name", "status", "ma_max", "ma_min"))
  
  write.table(set_subset, file =  paste0("//wsl.localhost/Ubuntu/home/jkloosterman/project_dino_decline/Methods-Dino-Decline/raw_data/condamine_pbdb/raw_pbdb/", name, "_raw_pbdb.txt", sep = ""), sep = "\t", row.names = FALSE, quote = FALSE)
  
}
 