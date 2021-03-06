% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{source_biplot}
\alias{source_biplot}
\title{Create Biplot}
\usage{
source_biplot(
  data,
  group,
  var1,
  var2,
  tdf1 = c(mean = 0, sd = 0),
  tdf2 = c(mean = 0, sd = 0),
  x_lab = "",
  y_lab = ""
)
}
\arguments{
\item{data}{A data frame}

\item{group}{Groups of sources to be plotted}

\item{var1}{X-axis isotope}

\item{var2}{Y-axis isotope}

\item{tdf1}{trophic discrimination factor for var 1 entered as
tdf1 = c(mean, sd)}

\item{tdf2}{trophic discrimination factor for var 1 entered as
tdf1 = c(mean, sd)}

\item{x_lab}{X-axis label}

\item{y_lab}{Y-axis label}
}
\value{
Plot
}
\description{
Create a biplot for group means and standard deviations with an option to
shift by trophic discrimination factor means and standard deviations.
Function is built for plotting source data
}
\examples{
iso_data <- data.frame(iso_a = c(2.2, 4.4, 3.3, 5.1, 3.4),
iso_b = c(1.6, 3.9, 5.2, 4.2, 3.7),
prot = c("bug", "bug", "bug", "plant", "plant"))
source_biplot(iso_data, prot, iso_a, iso_b, tdf1 = c(2, 1), tdf2 = c(1, 1),
             x_lab = "A", y_lab = "B")
}
