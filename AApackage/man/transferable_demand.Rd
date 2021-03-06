% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transferable_demand.R
\name{transferable_demand}
\alias{transferable_demand}
\title{Transferable Demand}
\usage{
transferable_demand(raw_range_data_att, prim_attr_weights, analysis_filters,
  retain_threshold = 0.99, portfolio_threshold = 0.5, primary_attributes,
  report_progress, grouping, Article_id = "Article_Number",
  Volume = "norm_sales")
}
\arguments{
\item{raw_range_data_att}{A data frame with the articles in scope, with normalized and relevant attributes with all levels}

\item{prim_attr_weights}{A numeric vector indicating the weight of each primary attribute based on the regression analysis}

\item{analysis_filters}{A string vector indicating the criteria that define the analysis group}

\item{retain_threshold}{A numeric value indicating the percentage of sales that need to be retained from the deletion of articles}

\item{portfolio_threshold}{A numeric value to indicate which is the maximum article drop %}

\item{primary_attributes}{A string vector indicasting the primary attributes names}

\item{report_progress}{A logging interface}

\item{grouping}{A string vector indicating grouping}

\item{Article_id}{A text string indicating the column name of Article_id}

\item{Volume}{A text string indicating the column name of norm_sales}
}
\value{
A list with the top5 report
}
\description{
Performs an iterative process of deleting articles with low incremental sales and redistributing their sales to those that have same attributes. The allocation is done based on the significance of the attributes and normalized sales. The algorithm estimates the amount of sales that are being lost and the amount of sales that are being transfered to the rest of the portfolio.
}
\details{
requires scale, reshape and ggplot2 package
}
\examples{
\dontrun{
  transferable_demand(raw_range_data_att=raw_range_data_att,
  prim_attr_weights=c(0.2394654,0.2253099,0.2247120,0.3105127),
  analysis_filters=1,
  retain_threshold=0.99,
  portfolio_threshold=0.5,
  data,
  primary_attributes=primary_attributes,
  wd=~/Projects/Assortment Apparel SS18
  saveResults = TRUE)
}

}
\author{
Nikolaos Kapodistrias <n.kapodistrias@accenture.com>

Alan Fortuny <Alan.FortunySicart@adidas-group.com>
}
