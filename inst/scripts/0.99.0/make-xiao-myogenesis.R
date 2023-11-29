### =========================================================================
###  Xiao Myogenesis
### =========================================================================

library(SummarizedExperiment)
library(S4Vectors)
library(here)

load(file=here("data", "C2C12.diff.phos_v2.RData"))
load(file=here("data", "C2C12.diff.proteome_v1.RData"))
load(file=here("data", "C2C12.inhibitors.phospho_v3.RData"))
load(file=here("data", "C2C12.inhibitors.proteome_v3.RData"))

# create metadata file
meta.diff.phospho = DataFrame(time.point = sapply(strsplit(colnames(phospho.pnorm), "_"), "[[",1),
                              replicate = sapply(strsplit(colnames(phospho.pnorm), "_"), "[[", 2))
meta.diff.prot = DataFrame(time.point = sapply(strsplit(colnames(C2C12.proteome.ruv), "_"), "[[",1),
                           replicate = sapply(strsplit(colnames(C2C12.proteome.ruv), "_"), "[[", 2))

meta.inhi.phospho = DataFrame(condition = sapply(strsplit(colnames(inhibitors.pnorm), "_"), "[[",1),
                              replicate = sapply(strsplit(colnames(inhibitors.pnorm), "_"), "[[", 2))
meta.inhi.prot = DataFrame(condition = sapply(strsplit(colnames(inhibitors.proteome.ruv), "_"), "[[",1),
                           replicate = sapply(strsplit(colnames(inhibitors.proteome.ruv), "_"), "[[", 2))

# convert to summarized experiment object
myogenesis.diff.phosphoproteome.se = SummarizedExperiment(assays=list(ratios = phospho.pnorm),
                                                          colData = meta.diff.phospho)
myogenesis.diff.proteome.se = SummarizedExperiment(assays=list(ratios = C2C12.proteome.ruv),
                                                   colData = meta.diff.prot)

myogenesis.inhibition.phosphoproteome.se = SummarizedExperiment(assays=list(ratios = inhibitors.pnorm),
                                                                colData = meta.inhi.phospho)
myogenesis.inhibition.proteome.se = SummarizedExperiment(assays=list(ratios = inhibitors.proteome.ruv),
                                                         colData = meta.inhi.prot)


# save individually as an rds file
saveRDS(myogenesis.diff.phosphoproteome.se, here("data", "0.99.0", "xiao-myogenesis","differentiation.phosphoproteome.rds"))
saveRDS(myogenesis.diff.proteome.se, here("data", "0.99.0", "xiao-myogenesis", "differentiation.proteome.rds"))

saveRDS(myogenesis.inhibition.phosphoproteome.se, here("data", "0.99.0", "xiao-myogenesis", "inhibition.phosphoproteome.rds"))
saveRDS(myogenesis.inhibition.proteome.se, here("data", "0.99.0", "xiao-myogenesis", "inhibition.proteome.rds"))
