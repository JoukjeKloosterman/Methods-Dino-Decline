#!/usr/bin/env Rscript

# ====================================================
# Script Name: install_packages.R
# Author: Joukje Kloosterman
# Date: 14-06-2024
# Description: Script to install packages need in R files.
# ====================================================

# List of packages
packages <- c("scales", "optparse", "stringr", "dplyr")

# Check if packages installed
packages <- packages[!packages %in% installed.packages()]

# Install packages that were not yet installed
if(length(packages) != 0) {install.packages(packages, dependencies = TRUE)} 

# End of Script