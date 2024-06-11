#!/bin/bash

#Rscript "../install_packages.R"

Rscript "../../../prepare_pyrate_data.R" -i "../../../../raw_data/our_pbdb/pbdb_data_with_class_location_20240429.csv" -f "Tyrannosauridae"

Rscript "../../../running_pyrate_utilities.R" -p "/home/jkloosterman/project_dino_decline/condamine_paper/PyRate/pyrate_utilities.r"

bash "../../../running_pyrate_commands.sh" -p "/home/jkloosterman/project_dino_decline/condamine_paper/PyRate/PyRate.py" -s "../../../Cretaceous_stages.txt"