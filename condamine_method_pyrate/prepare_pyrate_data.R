#!/usr/bin/env Rscript

library("optparse")
library("stringr")
library("dplyr")


option_list = list(
  make_option(c("-i", "--input"), type="character", default=NULL, 
              help="Dataset file name."),
  make_option(c("-o", "--out"), type="character", default="PyRate_Inputs.txt", 
              help="Output file name [default= %default]."),
  make_option(c("-d", "--directory"), type="character",default=getwd(),
              help="Output directory."),
  make_option(c("-c", "--class"), type="character", default=NA, 
              help="Select class type to include in the analysis.\n
              Comma separate more classes. eg. Ornithischia,Saurischia"),
  make_option(c("-r", "--rank"), type="character", default="species,genus",
                help="Select accepted rank to include in the analysis.\n
              Comma separate more ranks. eg. species,genus\n
              [default = %default]"),
  make_option(c("-n", "--country"), type="character", default=NA,
              help="Select the country to include in the analysis.\n
              Comma seperate the two letter abriviations. eg. MX,US"),
  # make_option(c("-d", "--download"), type="logical", default=TRUE,
              # help="Download the latest dataset from Paleobiology Database."),
  make_option(c("-f", "--family"), type="character", default=NA,
              help="Select the family to include in the analysis.\n
              Comma seperate more families. eg. Ceratopsidae,Hadrosauridae")
); 


opt_parser <- OptionParser(option_list=option_list);
opt <- parse_args(opt_parser)

setwd(opt$directory)


 if(is.null(opt$input)) { 
  cat("Mandatory input argument not found\n")
  print_help(opt_parser)
  quit(status=1)
}

pbdb_data <- read.csv(opt$input, sep = ",")

pbdb_data_subset <- pbdb_data

selections <- c(opt$rank, opt$class, opt$country, opt$family)
names(selections) <- c("opt$rank", "opt$class", "opt$country", "opt$family")

for (selection in names(selections)) {
  if(!(is.na(selections[selection]))) {
    include <- strsplit(selections[selection], ",")
    pbdb_include_subset <- pbdb_data[0,]
    
    for (item in include[[selection]]) {
      pbdb_include_set <- pbdb_data[0,]
      if(selection=="opt$class"){
        pbdb_include_set <- subset(pbdb_data, class == item)
      }
      if(selection=="opt$rank") {
         pbdb_include_set <- subset(pbdb_data, accepted_rank == c(item))
         head(pbdb_include_set)
      }
      if(selection=="opt$family"){
        pbdb_include_set <- subset(pbdb_data, family == item)
      }
      if(selection=="opt$country") {
        pbdb_include_set <- subset(pbdb_data, country == item)
      }
  
      pbdb_include_subset <- rbind(pbdb_include_subset, pbdb_include_set)
    }
    
    pbdb_data_subset <- pbdb_include_subset
  }
  
}

pbdb_data_subset$status <- "extinct"

pbdb_data_subset <- subset(pbdb_data_subset, select = c("accepted_name", "status", "max_ma", "min_ma"))

write.table(pbdb_data_subset, file = opt$out, sep = "\t", row.names = FALSE, quote = FALSE)








  

