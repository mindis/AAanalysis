% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/computation_inc_sales.R
\name{computation_inc_sales}
\alias{computation_inc_sales}
\title{Computation of Incremental Sales}
\usage{
computation_inc_sales(raw_range_data_att = raw_range_data_att,
  prim_attr_weights, primary_attributes, analysis_filters, save_path,
  saveResults = TRUE, Article_id = "Article_Number",
  Volume = "norm_sales")
}
\arguments{
\item{raw_range_data_att}{A data frame with article number, normalized sales and attributes without grouping (used in the regression). This is usually from the output of function  Global attribute creation, the saved "Attribute_data_mapping....." Rda file in data scientist folder.}

\item{prim_attr_weights}{A numeric vector of the primary weight importance, same order as they appear in raw_range_data_att}

\item{primary_attributes}{A character vector indicating the columns sused as attributes}

\item{analysis_filters}{A string vector indicating the criteria that define the analysis group}

\item{save_path}{An interface used for save in-memory results as files in the local file system}

\item{saveResults}{A boolean to select if functions ouputs plot results}

\item{Article_id}{A text string indicating the column name of Article_id}

\item{Volume}{A text string indicating the column name of norm_sales}
}
\value{
An data frame with the incremental sales and other relevant calculations of the incrementality
}
\description{
A function that computes the incremental sales per article based on selected attribute weights and gives the incremental sales of all articles, allowing us to pick the one with lowest total incremenatl sales contribution
}
\examples{
\dontrun{
computation_inc_sales(raw_range_data_att=raw_range_data_att,
prim_attr_weights=c(0.2355152,0.2222791,0.2339549,0.3082508),
analysis_filters=1,
wd=~/Projects/Assortment Apparel SS18,
saveResults = TRUE)
}

}
\author{
Alan Fortuny <Alan.FortunySicart@adidas-group.com>

Nikolaos Kapodistrias <n.kapodistrias@accenture.com>
}
