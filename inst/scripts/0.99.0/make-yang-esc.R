### =========================================================================
###  Yang ESC
### =========================================================================

library(SummarizedExperiment)
library(S4Vectors)
library(here)

load(file=here("data", "ESC.RData"))

# create metadata file
meta.epigenome = DataFrame(marker = sapply(strsplit(colnames(ESC.epigenome.TSS.rpkm), "_"), "[[",1),
                         timepoint = sapply(strsplit(colnames(ESC.epigenome.TSS.rpkm), "_"), "[[", 2))
meta.phospho = DataFrame(timepoint = sapply(strsplit(colnames(ESC.phosphoproteome.ratio), "_"), "[[",1),
                         replicate = sapply(strsplit(colnames(ESC.phosphoproteome.ratio), "_"), "[[", 2))
meta.protein = DataFrame(quant_type =  sapply(strsplit(colnames(ESC.proteome.ratio), "\\."), function(x) paste(x[1], x[2], sep=".")),
                         timepoint = sapply(strsplit(colnames(ESC.proteome.ratio), "\\.|_"), "[[", 3),
                         replicate = sapply(strsplit(colnames(ESC.proteome.ratio), "\\.|_"), function(x) ifelse(length(x) == 4, x[4], "pooled")))
meta.rna = DataFrame(timepoint = sapply(strsplit(colnames(ESC.transcriptome.ratio), "_"), "[[",2),
                         replicate = sapply(strsplit(colnames(ESC.transcriptome.ratio), "_"), "[[", 1))

# convert to summarized experiment object
esc.epigenome.se = SummarizedExperiment(assays=list(ratios = ESC.epigenome.TSS.rpkm),
                                              colData = meta.epigenome)
esc.phosphoproteome.se = SummarizedExperiment(assays=list(ratios = ESC.phosphoproteome.ratio),
                                                   colData = meta.phospho)
esc.proteome.se = SummarizedExperiment(assays=list(ratios = ESC.proteome.ratio),
                                            colData = meta.protein)
esc.transcriptome.se = SummarizedExperiment(assays=list(ratios = ESC.transcriptome.ratio),
                                                 colData = meta.rna)

# save individually as an rds file
saveRDS(esc.phosphoproteome.se, here("data", "0.99.0", "yang-esc","phosphoproteome.rds"))
saveRDS(esc.proteome.se, here("data", "0.99.0", "yang-esc", "proteome.rds"))
saveRDS(esc.transcriptome.se, here("data", "0.99.0", "yang-esc", "transcriptome.rds"))
saveRDS(esc.epigenome.se, here("data", "0.99.0", "yang-esc", "epigenome.rds"))
