% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/residuals_statistics.R
\name{statistic_value}
\alias{statistic_value}
\title{Calculates the Cramer von Mises value or
Kolmogorov value
given a linear model compatible with
`fitted.values` and `residuals` functions.}
\usage{
statistic_value(model, value = "cvm_value")
}
\arguments{
\item{model}{An existing fit from a linear model function.}

\item{value}{Type of value to compute, can be `cvm_value` or `kmv_value`.}
}
\value{
The statistic value of the model.
}
\description{
Calculates the Cramer von Mises value or
Kolmogorov value
given a linear model compatible with
`fitted.values` and `residuals` functions.
}
\examples{
x <- 1:10
y <- 2*x + rnorm(10)
model <- lm(y~x-1)
statistic_value(model)
statistic_value(model, value = "cvm_value")
statistic_value(model, value = "kmv_value")
}
