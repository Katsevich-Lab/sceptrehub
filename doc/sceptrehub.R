## ----echo=FALSE,results="hide"------------------------------------------------
library(Matrix)

## -----------------------------------------------------------------------------
library(sceptredata)
data(highmoi_example_data)

## -----------------------------------------------------------------------------
grna_matrix <- highmoi_example_data$grna_matrix
dim(grna_matrix)

## -----------------------------------------------------------------------------
response_matrix <- highmoi_example_data$response_matrix
dim(response_matrix)

## -----------------------------------------------------------------------------
extra_covariates <- highmoi_example_data$extra_covariates
head(extra_covariates)

## -----------------------------------------------------------------------------
gene_names <- highmoi_example_data$gene_names
head(gene_names)

## -----------------------------------------------------------------------------
data(grna_target_data_frame_highmoi)
head(grna_target_data_frame_highmoi)

## -----------------------------------------------------------------------------
directories <- paste0(
  system.file("extdata", package = "sceptredata"), 
  "/highmoi_example/gem_group_", 1:2
)
directories # file paths to the example data on your computer

## -----------------------------------------------------------------------------
list.files(directories[1])

## -----------------------------------------------------------------------------
list.files(directories[2])

## -----------------------------------------------------------------------------
data(lowmoi_example_data)

## -----------------------------------------------------------------------------
grna_matrix <- lowmoi_example_data$grna_matrix
dim(grna_matrix)

## -----------------------------------------------------------------------------
response_matrix <- lowmoi_example_data$response_matrix
dim(response_matrix)

## -----------------------------------------------------------------------------
extra_covariates <- lowmoi_example_data$extra_covariates
head(extra_covariates)

## -----------------------------------------------------------------------------
grna_target_data_frame <- lowmoi_example_data$grna_target_data_frame
head(grna_target_data_frame)

## -----------------------------------------------------------------------------
directory <- paste0(system.file("extdata", package = "sceptredata"), "/parse_example/")
directory # location of the data on your computer

## -----------------------------------------------------------------------------
list.files(directory)

## -----------------------------------------------------------------------------
library(sessioninfo); session_info()

