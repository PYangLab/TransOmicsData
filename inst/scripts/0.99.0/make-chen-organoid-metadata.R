meta <- data.frame(
  Title =  sprintf("Chen organoid %s", c("phosphoproteome", "proteome", "transcriptome")),
  Description = "developmental timecourse of the early neural organoid up to 8 days",
  BiocVersion="3.16",
  Genome="hg38",
  SourceType = "RData",
  SourceUrl = c("https://proteomecentral.proteomexchange.org/cgi/GetDataset?ID=PXD047423", "https://proteomecentral.proteomexchange.org/cgi/GetDataset?ID=PXD047423", "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE248901"),
  SourceVersion = '0.0',
  Species = "Homo sapiens",
  TaxonomyId=9606,
  Coordinate_1_based="NA",
  DataProvider=c("PRIDE", "PRIDE", "NCBI"),
  Maintainer="Di Xiao <di.xiao@sydney.edu.au>",
  RDataClass= "SummarizedExperiment",
  DispatchClass="Rds",
  RDataPath = file.path("TransOmicsData", "0.99.0", "chen-organoid", c("phosphoproteome.rds", "proteome.rds", "transcriptome.rds")),
  stringsAsFactors = FALSE
)

write.csv(meta, file="inst/extdata/0.99.0/metadata-chen-organoid.csv", row.names=FALSE)
