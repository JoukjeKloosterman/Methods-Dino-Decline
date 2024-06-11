#!/bin/bash


# ====================================================
# Script Name: template_run_analysis.sh
# Author: Joukje Kloosterman
# Date: 14-06-2024
# Description: This script gives a template to analyze Paleobiology Databse with PyRate.
# ====================================================

# Initiate variables
ENVIRONMENT="environment/bin/activate" # Replace with environment
DATASET="PBDB_dataset.txt" # Replace with own data
PYRATE_DIR="PyRate" # Replace with directory to PyRate

# Install packages from R
Rscript "install_packages.R"

# Set up environment
source "${ENVIRONMENT}"

# Run first Rscript to prepare data for PyRate input
Rscript "prepare_pyrate_data.R" -i ${DATASET} -f "Hadrosauridae,Ceratopsidae,Ankylosauridae,Dromaeosauridae,Troodontidae,Tyrannosauridae"

# Run PyRate utilities script
Rscript "running_pyrate_utilities.R" -p "${PYRATE_DIR}/pyrate_utilities.r"

# Run PyRate commands used in analysis and make plots
bash "running_pyrate_commands.sh" -p "${PYRATE_DIR}/PyRate.py" -s "Cretaceous_stages.txt"