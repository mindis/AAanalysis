% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/price_fabric_splits.R
\name{price_fabric_splits}
\alias{price_fabric_splits}
\title{Price and fabric Splitting}
\usage{
price_fabric_splits(fabric_threshold = c(0, 150, 250, 500, 1000),
  group_fabric = "YES", data_group, price_cluster_criteria = "Automatic",
  price_cluster_number = 2, price_threshold = NA, report_progress,
  fabric = "fabric", Price = "ARP", Article_id = "Article_Number")
}
\arguments{
\item{fabric_threshold}{A numeric vector indicating the thresholds used to split by fabric. By default 0-149,150-249,250-499,500-1000 is provided}

\item{group_fabric}{a text string indicating if group of fabric is required ("YES") or not ("NOT")}

\item{data_group}{input dataset containing all the attributes and the price and fabric weight (for apparel)}

\item{price_cluster_criteria}{A string, if informed as "Manual", will use the manual price segments, otherwise, automatic segments will be applied}

\item{price_cluster_number}{A number defining the number of preferable clusters when the criteria is set to "Automatic"}

\item{price_threshold}{A numeric vector indicating the thresholds used to split by price. This is used when user have set price_cluster_criteria equal to Manual}

\item{report_progress}{A logging interface}

\item{fabric}{A text string indicating the column name of fabric}

\item{Price}{A text string indicating the column name of Price}

\item{Article_id}{A text string indicating the column name of Article_id}

\item{split_by_fabric}{A boolean vector indicating if spliting by factor should be performed - receives "YES" and "NO" values}

\item{split_by_price}{A boolean vector indicating if spliting by price should be performed - receives "YES" and "NO" values}
}
\value{
a dataset that is similar to the input dataset but includes (a) the group fabric variable depending on the parameter selection, (b) the price grouping
}
\description{
Due to the fact that all variables in the model will be treated as categorical, we group price and fabric weight.
Exif the fabric variable exists, it prints the fabric distribution and if split_by_fabric is set to "YES", it creates a new table including the fabric_group variable used for the splitting.
If fabric_group is set to 'YES' then it groups the initial fabric variable to higher level based on the value set by the user in the fabric_threshold.
it prints the price distribution and creates price clusters based on an "Automatic" or "Manual" procedure.
If "Automatic" it uses K-Means to group the price. If the set is used to "Manual" then the user can set his own price thresholds
}
\details{
requires grDevices and stats package
}
\examples{
\dontrun{
#Define primary attributes based on global attribute creation function
price_fabric_splits(split_by_fabric="YES",
fabric_threshold=200,
data_group_v0,
split_by_price = "YES",
price_cluster_criteria= "Manual",
price_cluster_number=NA,
price_threshold=c(60))
}
}
\author{
Alan Fortuny <Alan.FortunySicart@adidas-group.com>

Nikolaos Kapodistrias <n.kapodistrias@accenture.com>

Ilektra Kocheila <ilektra.kocheila@accenture.com>
}
