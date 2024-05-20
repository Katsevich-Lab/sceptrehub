#' Download dataset
#'
#' Downloads a dataset from `ExperimentHub()` to the user's machine. The available datasets are as follows:
#' - "highmoi_example_mtx": Example high multiplicity-of-infection CRISPRi screen of putative enhancers (cell ranger format)
#' - "highmoi_example_r_list": Example high multiplicity-of-infection CRISPRi screen of putative enhancers (R object format)
#' - "lowmoi_example_r_list": Example low multiplicity-of-infection CRISPRko screen of gene transcription start sites
#' - "parse_example_mtx": Example Parse Biosciences single-cell CRISPR screen
#'
#' @param dataset_name string giving the name of the dataset to download
#'
#' @return if the dataset is stored as an R object (i.e., a `sceptre_object` or a list), then the dataset itself is returned. If, on the other hand, the dataset is stored as a collection of files, then a file path to the location of the dataset on disk is returned.
#' @export
#'
#' @examples
#' data_dir <- download_dataset("highmoi_example_mtx")
#' highmoi_example_r_list <- download_dataset("highmoi_example_r_list")
download_dataset <- function(dataset_name) {
  # ensure BiocManager version is up-to-date
  if (BiocManager::version() >= "3.19") {
    stop("This function requires Bioconductor version 3.19 or higher. You can upgrade to Bioconductor version 3.19 as follows: `BiocManager::install(version = '3.19')`.")
  }
  dataset_names <- c("EH9536", "EH9537", "EH9538", "EH9539") |>
    stats::setNames(c("highmoi_example_mtx", "highmoi_example_r_list",
                      "lowmoi_example_r_list", "parse_example_mtx"))
  hub_name <- dataset_names[dataset_name]
  if (is.na(hub_name)) {
    stop("`dataset_name` not recognized. `dataset_name` should be one of the following: '", paste0(names(dataset_names), collapse = "', '"), "'")
  }
  sceptredata <- ExperimentHub::ExperimentHub() |> AnnotationHub::query("sceptredata")
  if (dataset_name %in% c("highmoi_example_mtx", "parse_example_mtx")) {
    cache_location <- getExperimentHubOption("CACHE")
    data_loc <- sceptredata[[hub_name]]
    unzip(data_loc, exdir = cache_location)
    ret <- paste0(cache_location, if (dataset_name == "highmoi_example_mtx") "/highmoi_example" else "/parse_example")
  } else {
    ret <- sceptredata[[hub_name]]
  }
  return(ret)
}
