#!/bin/bash

#Rscript "../install_packages.R"

source "../../../../../condamine_paper/condamine_env/bin/activate"

Rscript "../../../prepare_pyrate_data.R" -i "../../../../raw_data/sakamoto_pbdb/PBDB_Occurrences-20190305.txt" -f "Ankylosauridae"

Rscript "../../../running_pyrate_utilities.R" -p "/home/jkloosterman/project_dino_decline/condamine_paper/PyRate/pyrate_utilities.r"

bash "../../../running_pyrate_commands.sh" -p "/home/jkloosterman/project_dino_decline/condamine_paper/PyRate/PyRate.py" -s "../../../Cretaceous_stages.txt"