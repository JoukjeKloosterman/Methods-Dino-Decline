#!/bin/bash

Rscript "./install_packages.R"

Rscript "./short_analysis/001-Scripts/001 - TimeScaleTree.R"

Rscript "./short_analysis/001-Scripts/002 - prep data.R"

Rscript "./short_analysis/001-Scripts/003 - fit MCMCglmm output.R"

Rscript "./short_analysis/001-Scripts/004 - post proc MCMCglmm output.R"
