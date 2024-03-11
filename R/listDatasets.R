#' List all datasets
#'
#' This lists the summary information for all available datasets in the \pkg{TransOmicsData} package.
#'
#' @details
#' This package contains datasets spanning various biological contexts such as in vitro embryonic and tissue-specific development in mouse and human extracted from different sequencing technologies.
#'
#'
#' @return
#' A \linkS4class{DataFrame}, containing the following fields
#' \itemize{
#' \item \code{Title}, short name of this data.
#' \item \code{Description}, description of the data.
#' \item \code{Omics}, omic layers profiled in the data.
#' \item \code{Species}, species of the data.
#' \item \code{RDataPath}, the corresponding rds files in this package.
#' }
#'
#' @author Carissa Chen
#'
#' @examples
#' listDatasets()
#'
#' @export
#' @importFrom S4Vectors DataFrame
#' @importFrom utils read.table
listDatasets <- function() {
    path <- system.file("extdata", "manifest.txt", package = "TransOmicsData")
    DataFrame(read.table(path, stringsAsFactors = FALSE, header = TRUE, sep = "\t"))
}
