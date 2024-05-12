meta <- data.frame(
  Title = c("chen-organoid", "xiao-myogenesis", "yang-esc"),
  Description = c("neural organoid differentiation", "C2C12 myogenesis differentiation", "ESC to epiLC differentiation"),
  Omics = c("phosphoproteome, proteome, transcriptome, single-cell transcriptome", "phosphoproteome, proteome", "epigenome, phosphoproteome, proteome, transcriptome"),
  Species = c("human", "mouse", "mouse"),
  RDataPath = c(file.path("TransOmicsData", "0.99.0", "chen-organoid"),
                file.path("TransOmicsData", "0.99.0", "xiao-myogenesis"),
                file.path("TransOmicsData", "0.99.0", "yang-esc")),
  Reference = c("Chen et al. Trans-omic Profiling Uncovers Molecular Controls of the Early Human Cerebral Organoid Formation. 2024",
  "Xiao et al. Time-resolved phosphoproteome and proteome analysis reveals kinase signaling on master transcription factors during myogenesis. 2022",
  "Yang et al. Multi-omic Profiling Reveals Dynamics of the Phased Progression of Pluripotency. 2019"),        
  stringsAsFactors = FALSE
)

write.table(meta, "inst/extdata/manifest.txt", sep="\t")
