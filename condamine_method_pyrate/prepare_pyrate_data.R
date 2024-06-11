#!/usr/bin/env Rscript

# ====================================================
# Script Name: prepare_pyrate_data.R
# Author: Joukje Kloosterman
# Date: 14-06-2024
# Description: Script to load PBDB data and prepare PyRate input data.
# ====================================================

# Load necessary libraries
library("optparse")
library("stringr")
library("dplyr")

# Define command-line options
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
  make_option(c("-f", "--family"), type="character", default=NA,
              help="Select the family to include in the analysis.\n
              Comma seperate more families. eg. Ceratopsidae,Hadrosauridae"),
  make_option(c("-g", "--download"), type="logical", default=FALSE,
              help="Set T/TRUE to download the latest dinosaur dataset from Paleobiology Database.", ),
  make_option(c("-t", "--time"), type="character", default="145,66",
              help="Set time interval limit for downloading dataset from Paleobiology Database. eg. 145,66")

); 

# Parse command-line options
opt_parser <- OptionParser(option_list=option_list);
opt <- parse_args(opt_parser)

# Set working directory
setwd(opt$directory)

# Check if download option is a logical
if (is.na(opt$download)){
  cat("Set -g/--download option to TRUE/FALSE.\n")
  print_help(opt_parser)
  quit(status=1)
}

# Check if input file or download option was given
if(is.null(opt$input) & !(opt$download)) {
  cat("Please enter dinosaur dataset manually using the -i/--input option.\nOr set -g/--download option to TRUE.\n")
  print_help(opt_parser)
  quit(status=1)
 }

# Check if interval consists of two intervals
if (!(length(strsplit(opt$time, ",")[[1]]) == 2)){
  cat("Please enter a time interval consiting of a min and max age. eg. 145,66\n")
  print_help(opt_parser)
  quit(status=1)
} else {
  times <- strsplit(opt$time, ",")[[1]]
  times <- c(as.numeric(times[1]), as.numeric(times[2]))
  for (interval in times) {
    # Check if interval is not NA
    if (is.na(interval)){
      cat("Please enter a time interval consiting of a min and max age as numeric. eg. 145,66\n")
      print_help(opt_parser)
      quit(status=1)
    }
  }
}

# Download latest dataset from Paleobiology Database
if(opt$download){
  base <- "https://paleobiodb.org/data1.2/occs/list.tsv?"
  query <- "base_name=CLADE&max_ma=INT1&min_ma=INT2&show=loc"
  grep("CLADE", query)                     
  grep("CLADE", query, value = TRUE)      
  grepl("CLADE", query)                      
  query <- gsub("CLADE", "dinosauria", query)
  query <- gsub("INT1", max(times), query)
  query <- gsub("INT2", min(times), query)
  query <- paste0(base, query)
  library(curl)
  curl_download(query, "occs.tsv")
  pbdb_data <- read.csv("occs.tsv", sep = "\t") 

}

# Open input file from user
if(!(is.null(opt$input))){
  tryCatch({
    pbdb_data <- read.csv(opt$input, sep = "\t")
  }, error = function(e) {
    print(paste("Error in loading data:", e))
  })

}

# Make copy of dataset
pbdb_data_subset <- pbdb_data

# Constants and parameters from command-line options
selections <- c(opt$rank, opt$class, opt$country, opt$family)
names(selections) <- c("opt$rank", "opt$class", "opt$country", "opt$family")

# Select necessary rows and columns from dataset
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

# Add status column to dataset
pbdb_data_subset$status <- "extinct"

# Select and sort columns in right order
pbdb_data_subset <- subset(pbdb_data_subset, select = c("accepted_name", "status", "max_ma", "min_ma"))

# Write PyRate input data to file
write.table(pbdb_data_subset, file = opt$out, sep = "\t", row.names = FALSE, quote = FALSE)

# End of script
