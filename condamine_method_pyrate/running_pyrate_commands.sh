#!/bin/bash

# ====================================================
# Script Name: pyrate_analysis.sh
# Author: Joukje Kloosterman
# Date: 14-06-2024
# Description: This script runs a series of PyRate analyses and generates plots.
# Usage: pyrate_analysis.sh -i input_file -p pyrate_file -s stages
# Options:
#   -i input: Input prefix for PyRate scripts (default: PyRate_Inputs)
#   -p pyrate: Path to the PyRate executable (required)
#   -s stages: Stages parameter for PyRate (required)
#   -h: Display this help message
# ====================================================

# Initialize our own variables
OPTIND=1         # Reset in case getopts has been used previously in the shell.
input="PyRate_Inputs" # Default input value

# Process command-line options
while getopts ":i:p:s:h?" opt; do
    case "$opt" in
    h|\?)
        echo "Usage: $0 [-i input] [-p pyrate] [-s stages]"
        echo "Options:"
        echo "  -i input: Input prefix for PyRate scripts (default: PyRate_Inputs)"
        echo "  -p pyrate: Path to the PyRate executable (required)"
        echo "  -s stages: Stages parameter for PyRate (required)"
        echo "  -h: Display this help message"
        exit 0
        ;;
    i)  input=$OPTARG
        ;;
    p)  pyrate=$OPTARG
        ;;
    s)  stages=$OPTARG
        ;;
    :)
      echo "Option -${OPTARG} requires an argument."
      exit 1
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      exit 1
      ;;
    esac
done

# Remove options from positional parameters
shift "$(( OPTIND - 1 ))"

# Check if pyrate variable is set
if [ -z "$pyrate" ]; then
        echo 'Missing -p: Please provide the pyrate file.' >&2
        exit 1
fi

# Check if stages variable is set
if [ -z "$stages" ]; then
        echo 'Missing -s: Please provide stages.' >&2
        exit 1
fi

# Run first PyRate command to find best model
python3 "${pyrate}" "./${input}_PyRate.py" -j 2 -qShift "${stages}" -mG -PPmodeltest

# Run the BCMCMC analysis from PyRate
python3 "${pyrate}" "./${input}_PyRate.py" —A 2 -qShift "${stages}" -mG -j 2 -n 5000000 -p 5000 -s 5000 -wd ./BDMCMC -log_marginal_rates 1 -out _BDMCMC

# Change directory to BDMCMC logs directory
cd "BDMCMC/pyrate_mcmc_logs/" || exit

# Generate plots for BDMDMC analysis
python3 "${pyrate}" -plot2 ./ -tag "${input}" -b 100

# Return to original directory
cd "../../" || exit

# Run the RJMCMC analysis from PyRate
python3 "${pyrate}" "./${input}_PyRate.py" -A 4 -qShift "${stages}" -mG -j 2 -n 5000000 -p 5000 -s 5000 -wd ./RJMCMC -out _RJMCMC

# Change directory to RJMCMC logs directory
cd "RJMCMC/pyrate_mcmc_logs/" || exit

# Combine RJMCMC logs
python3 "${pyrate}" -combLogRJ ./ -b 100

# Plot RJMCMC plots
python3 "${pyrate}" -plotRJ ./