% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use_ligand_to_target.R
\name{get_target_genes_ligand_oi}
\alias{get_target_genes_ligand_oi}
\title{Get a set of predicted target genes of a ligand of interest}
\usage{
get_target_genes_ligand_oi(ligand_oi, ligand_target_matrix, error_rate = 0.1, cutoff_method = "distribution", fdr_method = "global", output = "logical",ligands_position = "cols")
}
\arguments{
\item{ligand_oi}{The ligand of interest of which top target genes should be returned}

\item{ligand_target_matrix}{A matrix of ligand-target probabilty scores.}

\item{error_rate}{FDR for cutoff_method "fdrtool" and "distribution"; number between 0 and 1 indicating which top fraction of target genes should be returned for cutoff_method "quantile". Default: 0.1}

\item{cutoff_method}{Method to determine which genes can be considered as a target of a ligand and which genes not, based on the ligand-target probability scores. Possible options: "distribution", "fdrtool" and "quantile". Default: "distribution".}

\item{fdr_method}{Only relevant when cutoff_method is "fdrtool". Possible options: "global" and "local". Default: "global".}

\item{output}{Determines whether a vector with target gene names should be returned ("gene_symbols") or a logical vector indicating for every target gene whether or not it is a target ("logical").}

\item{ligands_position}{Indicate whether the ligands in the ligand-target matrix are in the rows ("rows") or columns ("cols"). Default: "cols"}
}
\value{
A vector with target gene names should be returned ("gene_symbols") or a logical vector indicating for every target gene whether or not it is a target ("logical").
}
\description{
\code{get_target_genes_ligand_oi} Get a set of predicted target genes of a ligand of interest.
}
\examples{
\dontrun{
## Generate the ligand-target matrix from loaded weighted_networks
weighted_networks = construct_weighted_networks(lr_network, sig_network, gr_network,source_weights_df)
ligands = list("TNF","BMP2",c("IL4","IL13"))
ligand_target_matrix = construct_ligand_target_matrix(weighted_networks, ligands)
targets = get_target_genes_ligand_oi("BMP2", ligand_target_matrix, error_rate = 0.1, cutoff_method = "distribution", fdr_method = "global", output = "logical",ligands_position = "cols")
}
}
