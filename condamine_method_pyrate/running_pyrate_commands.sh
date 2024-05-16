#!/bin/bash

# Initialize our own variables
OPTIND=1         # Reset in case getopts has been used previously in the shell.
input="PyRate_Inputs"

while getopts ":i:p:s:h?" opt; do
    case "$opt" in
    h|\?)
        echo "Usage: $0 [-i input] [-p pyrate] [-s stages]"
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

shift "$(( OPTIND - 1 ))"

if [ -z "$pyrate" ]; then
        echo 'Missing -p: Please provide the pyrate file.' >&2
        exit 1
fi

if [ -z "$stages" ]; then
        echo 'Missing -s: Please provide stages.' >&2
        exit 1
fi

python3 "${pyrate}" "./${input}_PyRate.py" -j 2 -qShift "${stages}" -mG -PPmodeltest

python3 "${pyrate}" "./${input}_PyRate.py" —A 2 -qShift "${stages}" -mG -j 2 -n 5000000 -p 5000 -s 5000 -wd ./BDMCMC -log_marginal_rates 1 -out _BDMCMC

cd "BDMCMC/pyrate_mcmc_logs/" || exit

python3 "${pyrate}" -plot2 ./ -tag "${input}" -b 100

cd "../../" || exit

python3 "${pyrate}" "./${input}_PyRate.py" -A 4 -qShift "${stages}" -mG -j 2 -n 5000000 -p 5000 -s 5000 -wd ./RJMCMC -out _RJMCMC

cd "RJMCMC/pyrate_mcmc_logs/" || exit

python3 "${pyrate}" -combLogRJ ./ -b 100
python3 "${pyrate}" -plotRJ ./