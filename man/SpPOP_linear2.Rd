% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SpPOP_linear2.R
\name{SpPOP_linear2}
\alias{SpPOP_linear2}
\title{Generation of spatial population includes multiple auxiliary variables along with spatially varying model parameters generated based on linear function of latitudes and longitudes}
\usage{
SpPOP_linear2(N, k, xlat, ylong)
}
\arguments{
\item{N}{integer; population size i.e. N= (k * k)}

\item{k}{integer}

\item{xlat}{numeric vector}

\item{ylong}{numeric vector}
}
\value{
The developed function returns a dataframe of spatially generated population consist of simulated response variable (i.e. Y) along with their spatial coordinates, spatially varying coefficients and three explanatory variables (i.e. X1, X2, and X3). The auxiliary variables
        have been generated independently from uniform distribution U(0,1) and the regression coefficients are generated as linear function of latitudes and longitudes.
}
\description{
Generation of spatial population includes multiple auxiliary variables along with spatially varying model parameters generated based on linear function of latitudes and longitudes
}
\examples{
sp_linear2<-SpPOP_linear2(100,10,c(1:10),c(1:10))
}
\references{
1. Wang, Ning., Mei, Chang-Lin. and Yan, Xiao-Dong. (2008). Local Linear Estimation of Spatially Varying Coefficient Models: An Improvement on the Geographically Weighted Regression Technique.
    Environment and Planning A: Economy and Space, 40(4), 986-1005.<DOI:10.1068/a3941>.


 2. Chao, Liu., Chuanhua, Wei. and Yunan, Su. (2018). Geographically weighted regression model-assisted estimation in survey sampling. Journal of Nonparametric Statistics. <DOI:10.1080/10485252.2018.1499907>.
}
