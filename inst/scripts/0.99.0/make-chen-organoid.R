### =========================================================================
###  Chen Organoid
### =========================================================================

library(SummarizedExperiment)
library(S4Vectors)
library(here)

load(file=here("data", "allomics_processed_ratios.RData"))

# create metadata file
meta.masspec = DataFrame(day = sapply(strsplit(colnames(organoid.phosphoproteome.ratio), "_"), "[[",1),
          replicate = sapply(strsplit(colnames(organoid.phosphoproteome.ratio), "_"), "[[", 2))
meta.rna = DataFrame(day = sapply(strsplit(colnames(organoid.transcriptome.ratio), "_"), "[[",1),
                     replicate = sapply(strsplit(colnames(organoid.transcriptome.ratio), "_"), "[[", 2))

# convert to summarized experiment object
organoid.phosphoproteome.se = SummarizedExperiment(assays=list(ratios = organoid.phosphoproteome.ratio),
                                                   colData = meta.masspec)
organoid.proteome.se = SummarizedExperiment(assays=list(ratios = organoid.proteome.ratio),
                                                   colData = meta.masspec)
organoid.transcriptome.se = SummarizedExperiment(assays=list(ratios = organoid.transcriptome.ratio),
                                            colData = meta.rna)

# save individually as an rds file
saveRDS(organoid.phosphoproteome.se, here("data", "0.99.0", "chen-organoid", "phosphoproteome.rds"))
saveRDS(organoid.proteome.se, here("data", "0.99.0", "chen-organoid", "proteome.rds"))
saveRDS(organoid.transcriptome.se, here("data", "0.99.0", "chen-organoid", "transcriptome.rds"))
