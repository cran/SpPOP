#'  Generation of spatial population along with spatially varying model parameters generated based on non-linear function of latitudes and longitudes
#' @param xlat numeric vector
#' @param ylong numeric vector
#' @param k   integer
#' @param N   integer; population size i.e. N= (k * k)
#' @return The developed function returns a dataframe of spatially generated population consist of simulated response variable (i.e. Y) along with their spatial coordinates, spatially varying coefficients and one explanatory variable (i.e. X). The auxiliary variable
#'         has been generated following U(0,2) and the regression coefficients are generated as non-linear function of latitudes and longitudes.
#' @examples
#' sp_nonlinear4<-SpPOP_nonlinear4(100,10,c(1:10),c(1:10))
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
SpPOP_nonlinear4<-function(N,k,xlat,ylong) {

  xy_grid <- expand.grid(xlat,ylong)
  xy_grid
  names(xy_grid) <- c("x","y")

  N<-nrow(xy_grid)
  k<-sqrt(nrow(xy_grid))
  id<-seq(1:N)

  # generation of auxiliary variable from uniform distribution
  X<-runif(N,0,2)
  X

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

  B0<-2*sin((pi*Latitude)/6)
  B1<-(Latitude^2+Longitude^2)/18

  # spatially varying model for generating the dataset
  # Relationship between Y and X in non-linear in the model
  Y_sim<-B0+exp(B1*X)+ e
  Y_sim<-as.data.frame(Y_sim)

  # simulated data along with spatial coordinates and model parameters
  spa_pop<-cbind(Y_sim,X,Latitude,Longitude,B0,B1)
  spa_pop<-as.data.frame(spa_pop)
  names(spa_pop)=cbind("Y","X","latitude","longitude","B0","B1")
  return(spa_pop)

}
