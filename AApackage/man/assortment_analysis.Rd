% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assortment_analysis.R
\name{assortment_analysis}
\alias{assortment_analysis}
\title{Assortment Analysis}
\usage{
assortment_analysis(data)
}
\arguments{
\item{data}{The required data to run the analysis : Article,Groupings,Volume,Price,Attributes}
}
\value{
A list containing two data frames, the attribute guidance report and the top 5
}
\description{
It is the main function that runs all of the assortment analysis using all the functions made for that purpose. The code is a wraper of functions
that provide guidance on which are the relevant attribute to explain sales performance, and the article drop recommendation.
}
\details{
requires sqldf package
}
\author{
Alan Fortuny <Alan.FortunySicart@adidas-group.com>
}
