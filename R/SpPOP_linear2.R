#'  Generation of spatial population includes multiple auxiliary variables along with spatially varying model parameters generated based on linear function of latitudes and longitudes
#' @param xlat numeric vector
#' @param ylong numeric vector
#' @param k   integer
#' @param N   integer; population size i.e. N= (k * k)
#' @return The developed function returns a dataframe of spatially generated population consist of simulated response variable (i.e. Y) along with their spatial coordinates, spatially varying coefficients and three explanatory variables (i.e. X1, X2, and X3). The auxiliary variables
#'         have been generated independently from uniform distribution U(0,1) and the regression coefficients are generated as linear function of latitudes and longitudes.
#' @examples
#' sp_linear2<-SpPOP_linear2(100,10,c(1:10),c(1:10))
#' @references
#'
#'  1. Wang, Ning., Mei, Chang-Lin. and Yan, Xiao-Dong. (2008). Local Linear Estimation of Spatially Varying Coefficient Models: An Improvement on the Geographically Weighted Regression Technique.
#'     Environment and Planning A: Economy and Space, 40(4), 986-1005.<DOI:10.1068/a3941>.
#'
#'
#'  2. Chao, Liu., Chuanhua, Wei. and Yunan, Su. (2018). Geographically weighted regression model-assisted estimation in survey sampling. Journal of Nonparametric Statistics. <DOI:10.1080/10485252.2018.1499907>.
#'
#' @export
#' @import qpdf
#' @import numbers
#' @importFrom stats rnorm runif
SpPOP_linear2<-function(N,k,xlat,ylong) {

  xy_grid <- expand.grid(xlat,ylong)
  xy_grid
  names(xy_grid) <- c("x","y")

  N<-nrow(xy_grid)
  k<-sqrt(nrow(xy_grid))
  id<-seq(1:N)

  # generation of auxiliary variable from uniform distribution
  X1<-runif(N,0,1)
  X1
  X2<-runif(N,0,1)
  X2
  X3<-runif(N,0,1)
  X3
  # error term drawn independently from normal distribution N(0,1)

  e<- rnorm(N, mean=0, sd=1)
  e

  # generation of spatial coordinates of locations

  Latitude<-(mod((id-1),k))
  Latitude

  Longitude<-(as.integer((id-1)/k))
  Longitude

  spa_location<-as.data.frame(cbind(Latitude,Longitude))
  names(spa_location)<-cbind("Latitude","Longitude")
  spa_location

  # generation of regression coefficients

  B0<-(Latitude+Longitude)/6
  B1<-(Latitude/3)
  B2<-(Longitude/3)
  B3<-(2*Longitude)

  # spatially varying model for generating the dataset
  Y_sim<-B0+(B1*X1)+(B2*X2)+(B3*X3)+ e
  Y_sim<-as.data.frame(Y_sim)

  # simulated data along with spatial coordinates and model parameters
  spa_pop<-cbind(Y_sim,X1,X2,X3,Latitude,Longitude,B0,B1,B2,B3)
  spa_pop<-as.data.frame(spa_pop)
  names(spa_pop)=cbind("Y","X1","X2","X3","latitude","longitude","B0","B1","B2","B3")
  return(spa_pop)

}
