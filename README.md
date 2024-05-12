[![DOI](https://zenodo.org/badge/724362799.svg)](https://zenodo.org/doi/10.5281/zenodo.11044448)

## Introduction
The TransOmicsData ExperimentHub package contains datasets spanning various biological contexts such as in vitro embryonic and tissue-specific development in mouse and human. It covers multiple omics sequencing technologies such as (single-cell)-RNAseq, mass spectrometry and ChIP-seq. This package was developed to provide convenient access to raw or pre-processed data for comparative trans-omics analysis.

## Installation
The package is currently available through Bioconductor (version 3.19):

``` r
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("TransOmicsData")
```

## Table of Data

| Title | Description | Omics | Species | Reference |
| ----- | ----------- | ----- | ------- | --------- |
| chen-organoid | neural organoid differentiation | phosphoproteome, proteome, transcriptome, single-cell transcriptome | human | 
| xiao-myogenesis | C2C12 myogenesis differentiation | phosphoproteome, proteome | mouse | [Xiao et al., 2022](https://doi.org/10.1016/j.isci.2022.104489)
| yang-esc | ESC to epiLC differentiation | epigenome, phosphoproteome, proteome, transcriptome | mouse | [Yang et al., 2019](https://doi.org/10.1016/j.cels.2019.03.012)

## Shiny App

Explore the human cerebral organoid trans-omics data interactively on [Shiny](http://shiny.maths.usyd.edu.au/hCOmultiome/)

## Citation
If this work was useful, please consider citing :

```r
citation("TransOmicsData")
```
