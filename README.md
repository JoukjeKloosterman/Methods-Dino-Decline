# Methods-Dino-Decline

## Overview
This repository contains the code and data that were used in our comparative analysis between phylogenetic GLMMs and PyRate.

We have downloaded and adapted the commands of the PyRate analysis by Condamine et al. (2021)[^1]. We have also downloaded data and code from Sakamoto et al. (2021)[^2].

## Data
Data from the following studies and databases have been downloaded:

- [Condamine et al. (2021)](https://figshare.com/articles/dataset/Dinosaur_biodiversity_declined_well_before_the_asteroid_impact_influenced_by_ecological_and_environmental_pressures/14169575/1)
- [Sakamoto et al. (2021)](https://osf.io/uct2p/)
- [Paleobiology Database, accessed 29-04-2024](https://paleobiodb.org/classic/displayDownloadGenerator)

We included two datasets from Condamine et al., the first contains the edited published data and the second contains unedited raw data.

A copy of the data can be found in the [raw_data directory](raw_data).

[^1]: Condamine, F.L., Guinot, G., Benton, M.J. et al. Dinosaur biodiversity declined well before the asteroid impact, influenced by ecological and environmental pressures. Nat Commun 12, 3833 (2021). https://doi.org/10.1038/s41467-021-23754-0

[^2]: Sakamoto M, Benton MJ, Venditti C. Strong support for a heterogeneous speciation decline model in Dinosauria: a response to claims made by Bonsor et al. (2020). R Soc Open Sci. 2021 Aug 25;8(8):202143. doi: 10.1098/rsos.202143. PMID: 34457325; PMCID: PMC8385376. 

## Reanalysis: PyRate
A tutorial on how reanalyze our analysis using PyRate can be found [here](condamine_method_pyrate/README.md).

## Reanalysis: Phylogenetic GLMMs
A tutorial on how to reanalyze our analysis for the phylogenetic GLMMs approach can be found [here](sakamoto_method_phylogenetic/README.md).

## Author
Joukje Kloosterman

## License
Code relased under the MIT license. 