---
title: "TransOmicsData"
output: github_document
---

## Introduction
The TransOmicsData ExperimentHub package contains datasets spanning various biological contexts such as in vitro embryonic and tissue-specific development in mouse and human. It covers multiple omics sequencing technologies such as RNAseq, mass spectrometry and ChIP-seq. This package was developed to provide convenient access to raw or pre-processed data for comparative trans-omics analysis.

## Installation
You can install the package through Bioconductor:

``` r
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("TransOmicsData")
```