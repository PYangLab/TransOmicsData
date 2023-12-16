meta <- data.frame(
  Title =  sprintf("Yang ESC %s", c("epigenome", "phosphoproteome", "proteome", "transcriptome")),
  Description = "timecourse of ESC differentiation to EpiLCs",
  BiocVersion="3.19",
  Genome="mm10",
  SourceType = "RData",
  SourceUrl = c("https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE117896",
                "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE117896",
                "https://proteomecentral.proteomexchange.org/cgi/GetDataset?ID=PXD010621",
                "https://proteomecentral.proteomexchange.org/cgi/GetDataset?ID=PXD010621"),
  SourceVersion = '0.0',
  Species = "Mus musculus",
  TaxonomyId=10090,
  Coordinate_1_based="NA",
  DataProvider=c("NCBI", "PRIDE", "PRIDE", "NCBI"),
  Maintainer="Di Xiao <di.xiao@sydney.edu.au>",
  RDataClass= "SummarizedExperiment",
  DispatchClass="Rds",
  RDataPath = file.path("TransOmicsData", "0.99.0", "yang-esc", c("epigenome.rds", "phosphoproteome.rds",
                                                                  "proteome.rds", "transcriptome.rds")),
  stringsAsFactors = FALSE
)

write.csv(meta, file="inst/extdata/0.99.0/metadata-yang-esc.csv", row.names=FALSE)
