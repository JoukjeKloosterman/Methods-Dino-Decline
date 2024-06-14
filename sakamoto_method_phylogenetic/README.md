# Phylogenetic GLMMs
This directory contains all the scripts, raw data and output for the analysis of the phylogenetic GLMMs.
The data was downloaded from: [Sakamoto et al. (2021)](https://osf.io/uct2p/)

The output data in [Short Analysis/003-DataPrepped](Short%20analysis/003-DataPrepped) and [Short Analysis/004-Output--MCMCglmm](Short%20analysis/004-Output--MCMCglmm) is the same as the data from the download, the data was too large to provide through GitHib. In both directories the commandline output can be found, as a way to show that the analysis worked.
The log data and plot in [Short Analysis/004-Output--MCMCglmm](Short%20analysis/004-Output--MCMCglmm) contains information and summaries about the models as well as the DIC.

## Usage
To use the scripts in [Short Analysis/001-Scripts](Short%20analysis/001-Scripts), replace the dir variable to your own directory in each script. And unzip [Trees from Lloyd et al. 2016.zip](Trees%20from%20Lloyd%20et%20al.%202016.zip).

Then run the following bash script to install dependencies and execute the analysis:
```shell
bash "run_analysis.sh"
```
## Dependencies
[This](install_packages.R) file contains the code to install the following packages:

- remotes
- evoldiver
- MCMCglmm
- stringr
- paleotree
- phangorn
- caper

## Author
Joukje Kloosterman

## License 
Code relased under the MIT license. 