meta <- data.frame(
  Title =  sprintf("Xiao myogenesis %s", c("differentation phosphoproteome",
                                          "differentiation proteome",
                                          "inhibition phosphoproteome",
                                          "inhibition proteome")),
  Description = "timecourse of C2C12 differentiation up to 5 days",
  BiocVersion="3.16",
  Genome="mm10",
  SourceType = "RData",
  SourceUrl = "https://proteomecentral.proteomexchange.org/cgi/GetDataset?ID=PXD028713",
  SourceVersion = '0.0',
  Species = "Mus musculus",
  TaxonomyId=10090,
  Coordinate_1_based="NA",
  DataProvider="PRIDE",
  Maintainer="Di Xiao <di.xiao@sydney.edu.au>",
  RDataClass= "SummarizedExperiment",
  DispatchClass="Rds",
  RDataPath = file.path("TransOmicsData", "0.99.0", "xiao-myogenesis", c("differentation.phosphoproteome.rds",
                                                                     "differentation.proteome.rds",
                                                                     "inhibition.phosphoproteome.rds",
                                                                     "inhibition.proteome.rds")),
  stringsAsFactors = FALSE
)

write.csv(meta, file="inst/extdata/0.99.0/metadata-xiao-myogenesis.csv", row.names=FALSE)
