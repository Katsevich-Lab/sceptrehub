# 1. highmoi_example.zip
# 2. highmoi_example_data.rds
# 3. grna_target_data_frame_highmoi.rda
# 4. lowmoi_example_data.rda
# 5. parse_example.zip

gasp_desc <- "A high multiplicity-of-infection CRISPRi screen of candidate enhancers in K562 cells. The original authors aimed to link candidate enhancers to genes by testing for changes in gene expression in response to CRISPR perturbations of the candidate enhancers. The authors designed a library of gRNAs to target 5,779 candidate enhancers and 381 transcription start sites (TSSs). Each genomic element was targeted by two gRNAs (with a subset of the candidate enhancers targeted by four gRNAs). Additionally, the authors designed 100 negative control gRNAs, each of which targeted a gene desert or no location in the genome at all. The authors sequenced 207,324 single cells, measuring the gene and gRNA expression profile of each. This is a downsampled version of the orignal data."
papalexi_desc <- "A low multiplicity-of-infection CRISPRko screen of gene TSSs in THP1 cells. The original authors aimed to link perturbations of genes to changes in the expression of other genes. The authors designed 101 targeting gRNAs to target 26 gene TSSs (with four gRNAs per TSS, on average). The authors additionally designed nine non-targeting gRNAs. The authors profiled the gene and gRNA expression profiles of 20,729 single cells. This is a downsampled version of the original data."
parse_desc <- "A low multiplicity-of-infection CRISPR screen of LN18 cells conducted by Parse Biosciences. The data containin 51,243 cells and three gRNAs. This is a version of the original data in which the cells are downsampled."

metadata <- data.frame(Title = c("High multiplicity-of-infection CRISPRi screen of putative enhancers (cell ranger format)",
                                 "High multiplicity-of-infection CRISPRi screen of putative enhancers (R object format)",
                                 "Low multiplicity-of-infection CRISPRko screen of gene transcription start sites",
                                 "Parse Biosciences single-cell CRISPR screen"),
                       Description = c(rep(gasp_desc, 2), papalexi_desc, parse_desc),
                       BiocVersion = rep("3.19", 4),
                       Genome = c(rep("hg19", 2), "hg19", "hg38"),
                       SourceType = c(rep("MTX", 2), "TSV", "MTX"),
                       SourceUrl = c(rep("https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE120861", 2),
                                     "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE153056",
                                     "https://www.parsebiosciences.com/datasets/technical-performance-of-crispr-detect-in-cell-lines/"),
                       SourceVersion = c(rep("Jan 04, 2019", 2), "Jan 06, 2024", "Apr 21, 2024"),
                       Species = rep("Homo sapiens", 4),
                       TaxonomyId = rep("9606", 4),
                       Coordinate_1_based = rep(TRUE, 4),
                       DataProvider = c(rep("University of Washington", 2), "New York Genome Center", "Parse Biosciences"),
                       Maintainer = rep("Bioconductor Package Maintainer <maintainer@bioconductor.org>", 4),
                       RDataClass = c("Matrix", "list", "list", "Matrix"),
                       DispatchClass = c("FilePath", "Rda", "Rda", "FilePath"),
                       Location_Prefix = rep("https://zenodo.org/records/10999688/files/", 4),
                       RDataPath = c("highmoi_example.zip",
                                     "highmoi_example_data.rda",
                                     "lowmoi_example_data.rda",
                                     "parse_example.zip"),
                       Tags = c("high-MOI", "high-MOI", "low-MOI", "low-MOI"))
write.csv()
