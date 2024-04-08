### =========================================================================
###  Chen Organoid
### =========================================================================

library(SummarizedExperiment)
library(S4Vectors)
library(here)

load(file=here("data", "allomics_processed_ratios.RData"))
scRNA_counts = readRDS(file=here("data", "scRNA_count_matrix.rds"))
scRNA_meta = read.delim2(file=here("data", "scRNA_metadata.txt"))

# create metadata file
meta.masspec = DataFrame(day = sapply(strsplit(colnames(organoid.phosphoproteome.ratio), "_"), "[[",1),
          replicate = sapply(strsplit(colnames(organoid.phosphoproteome.ratio), "_"), "[[", 2))
meta.rna = DataFrame(day = sapply(strsplit(colnames(organoid.transcriptome.ratio), "_"), "[[",1),
                     replicate = sapply(strsplit(colnames(organoid.transcriptome.ratio), "_"), "[[", 2))
meta.scrna = DataFrame(scRNA_meta)

# convert to summarized experiment object
organoid.phosphoproteome.se = SummarizedExperiment(assays=list(ratios = organoid.phosphoproteome.ratio),
                                                   colData = meta.masspec)
organoid.proteome.se = SummarizedExperiment(assays=list(ratios = organoid.proteome.ratio),
                                                   colData = meta.masspec)
organoid.transcriptome.se = SummarizedExperiment(assays=list(ratios = organoid.transcriptome.ratio),
                                            colData = meta.rna)
organoid.sctranscriptome.se = SummarizedExperiment(assays=list(counts = scRNA_counts[, rownames(meta.scrna)]), colData = meta.scrna)

# save individually as an rds file
saveRDS(organoid.phosphoproteome.se, here("data", "0.99.0", "chen-organoid", "phosphoproteome.rds"))
saveRDS(organoid.proteome.se, here("data", "0.99.0", "chen-organoid", "proteome.rds"))
saveRDS(organoid.transcriptome.se, here("data", "0.99.0", "chen-organoid", "transcriptome.rds"))
saveRDS(organoid.sctranscriptome.se, here("data", "0.99.0", "chen-organoid", "sctranscriptome.rds"))
