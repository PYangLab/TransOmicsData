meta <- data.frame(
  Title = c("chen-organoid", "xiao-myogenesis", "yang-esc"),
  Description = c("neural organoid differentiation", "C2C12 myogenesis differentiation", "ESC to epiLC differentiation"),
  Omics = c("phosphoproteome, proteome, transcriptome, single-cell transcriptome", "phosphoproteome, proteome", "epigenome, phosphoproteome, proteome, transcriptome"),
  Species = c("human", "mouse", "human"),
  RDataPath = c(file.path("TransOmicsData", "0.99.0", "chen-organoid"),
                file.path("TransOmicsData", "0.99.0", "xiao-myogenesis"),
                file.path("TransOmicsData", "0.99.0", "yang-esc")),
  stringsAsFactors = FALSE
)

write.table(meta, "inst/extdata/manifest.txt", sep="\t")
