## Introduction
The TransOmicsData ExperimentHub package contains datasets spanning various biological contexts such as in vitro embryonic and tissue-specific development in mouse and human. It covers multiple omics sequencing technologies such as (single-cell)-RNAseq, mass spectrometry and ChIP-seq. This package was developed to provide convenient access to raw or pre-processed data for comparative trans-omics analysis.

## Installation
The package is currently available through Bioconductor (development version 3.19):

``` r
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

# The following initializes usage of Bioc devel
BiocManager::install(version='devel')

BiocManager::install("TransOmicsData")
```
## Citation
From within R, enter:

```r
citation("TransOmicsData")
```
