#!/usr/bin/env Rscript

library("optparse")

option_list = list(
  make_option(c("-i", "--input"), type="character", default="PyRate_Inputs.txt", help="PyRate dataset input file name. \n
              With four columns:\n
               1) Taxon name,\n 2) Max age,\n 3) Min age,\n and 4) extinct or extant."),
  make_option(c("-p", "--pyrate"), type="character", default=NULL,
              help="Path to PyRate utilities R file; pyrate_utilities.r"),
  make_option(c("-d", "--directory"), type="character",default=getwd(),
              help="Output directory.")
);


opt_parser <- OptionParser(option_list=option_list);
opt <- parse_args(opt_parser)

if(is.null(opt$pyrate)) {
  cat("Please enter the path to pyrate_utilities.r\n")
  print_help(opt_parser)
  quit(status=1)
}

if(is.null(opt$input)) {
  cat("Please enter the path to your PyRate input data\n")
  print_help(opt_parser)
  quit(status=1)
}

source(opt$pyrate)
setwd(opt$directory)
hydro.ages<-extract.ages(file=opt$input, replicates=100)

