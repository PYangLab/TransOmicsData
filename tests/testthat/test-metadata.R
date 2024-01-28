library(testthat)
library(TransOmicsData)

test_that("metadata file can be loaded", {
    metadata <- system.file("extdata", "manifest.txt", package = "TransOmicsData")
    expect_true(file.exists(metadata))
})
