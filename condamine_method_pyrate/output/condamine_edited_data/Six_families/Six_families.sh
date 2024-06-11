#!/bin/bash

#Rscript "../install_packages.R"

source "../../../../../condamine_paper/condamine_env/bin/activate"

cp "../../../../raw_data/condamine_pbdb/edited_pbdb/PyRate Inputs/Dataset 1 - All dinosaurs/AllDino.txt" "./PyRate_Inputs.txt"

Rscript "../../../running_pyrate_utilities.R" -p "/home/jkloosterman/project_dino_decline/condamine_paper/PyRate/pyrate_utilities.r"

bash "../../../running_pyrate_commands.sh" -p "/home/jkloosterman/project_dino_decline/condamine_paper/PyRate/PyRate.py" -s "../../../Cretaceous_stages.txt"