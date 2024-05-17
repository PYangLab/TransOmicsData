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
| chen-organoid | cerebral organoid differentiation | phosphoproteome, proteome, transcriptome, single-cell transcriptome | human | [Chen et al., Cell Reports, 2024](https://doi.org/10.1016/j.celrep.2024.114219)
| xiao-myogenesis | C2C12 myogenesis differentiation | phosphoproteome, proteome | mouse | [Xiao et al., iScience, 2022](https://doi.org/10.1016/j.isci.2022.104489)
| yang-esc | mouse ESC to epiLC differentiation | epigenome, phosphoproteome, proteome, transcriptome | mouse | [Yang et al., Cell Systems, 2019](https://doi.org/10.1016/j.cels.2019.03.012)

## Shiny App

Explore the human cerebral organoid trans-omic data interactively on [http://shiny.maths.usyd.edu.au/hCOmultiome/](http://shiny.maths.usyd.edu.au/hCOmultiome/).

Explore the mouse ESC to epiLC differentiation trans-omic data interactively on [http://www.stemcellatlas.org/](http://www.stemcellatlas.org/)

## Citation
If this work was useful, please consider citing the original publications:

1. For `chen-organoid` dataset, cite: Carissa Chen, Scott Lee, Katherine G. Zyner, Milan Fernando, Victoria Nemeruck, Emilie Wong, Lee L. Marshall, Jesse R. Wark, Nader Aryamanesh, Patrick P.L. Tam, Mark E. Graham, Anai Gonzalez-Cordero, Pengyi Yang (2024) Trans-omic profiling uncovers molecular controls of early human cerebral organoid formation, *Cell Reports*, 43(5):114219. [Fulltext](https://doi.org/10.1016/j.celrep.2024.114219)
2. For `xiao-myogenesis` dataset, cite: Di Xiao, Marissa Caldow, Hani Jieun Kim, Ronnie Blazev, Rene Koopman, Deborah Manandi, Benjamin L. Parker, Pengyi Yang (2022) Time-resolved phosphoproteome and proteome analysis reveals kinase signaling on master transcription factors during myogenesis, *iScience*, 25(6):104489. [Fulltext](https://doi.org/10.1016/j.isci.2022.104489)
3. For `yang-esc` dataset, cite: Pengyi Yang, Sean J. Humphrey, Senthilkumar Cinghu, Rajneesh Pathania, Andrew J. Oldfield, Dhirendra Kumar, Dinuka Perera, Jean Y.H. Yang, David E. James, Matthias Mann, Raja Jothi (2019) Multi-omic profiling reveals dynamics of the phased progression of pluripotency, *Cell Systems*, 8(5):427-445.e10. [Fulltext](https://www.sciencedirect.com/science/article/pii/S2405471219301152)

For the package citation, please enter:

```r
citation("TransOmicsData")
```
