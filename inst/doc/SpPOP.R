## -----------------------------------------------------------------------------
# Examples: Generate an uniform two dimensional grid of lattice points 

library(SpPOP)
coords_grid=expand.grid(c(1:5),c(1:5))
coords_grid=as.data.frame(coords_grid)
names(coords_grid)=cbind("x","y")
coords_grid
plot(coords_grid)

# Examples: Simulated population along with spatial coordinates and spatially varying model parameters

library(SpPOP)

coords_grid=expand.grid(c(1:5),c(1:5))
coords_grid=as.data.frame(coords_grid)
names(coords_grid)=cbind("x","y")
coords_grid
N<-nrow(coords_grid)
N
k<-sqrt(nrow(coords_grid))
k

sp_linear1<-SpPOP_linear1(25,5,c(1:5),c(1:5))
sp_linear1


## -----------------------------------------------------------------------------
# Examples: Simulated population along with spatial coordinates and spatially varying model parameters

library(SpPOP)
sp_linear2<-SpPOP_linear2(25,5,c(1:5),c(1:5))
sp_linear2


## -----------------------------------------------------------------------------
# Examples: Simulated population along with spatial coordinates and spatially varying model parameters

library(SpPOP)
sp_linear3<-SpPOP_linear3(25,5,c(1:5),c(1:5))
sp_linear3


## -----------------------------------------------------------------------------
# Examples: Simulated population along with spatial coordinates and spatially varying model parameters

library(SpPOP)
sp_linear4<-SpPOP_linear4(25,5,c(1:5),c(1:5))
sp_linear4


## -----------------------------------------------------------------------------
# Examples: Simulated population along with spatial coordinates and spatially varying model parameters

library(SpPOP)
sp_linear5<-SpPOP_linear5(25,5,c(1:5),c(1:5))
sp_linear5


## -----------------------------------------------------------------------------
# Examples: Simulated population along with spatial coordinates and spatially varying model parameters

library(SpPOP)
sp_nonlinear1<-SpPOP_nonlinear1(25,5,c(1:5),c(1:5))
sp_nonlinear1


## -----------------------------------------------------------------------------
# Examples: Simulated population along with spatial coordinates and spatially varying model parameters

library(SpPOP)
sp_nonlinear2<-SpPOP_nonlinear2(25,5,c(1:5),c(1:5))
sp_nonlinear2


## -----------------------------------------------------------------------------
# Examples: Simulated population along with spatial coordinates and spatially varying model parameters

library(SpPOP)
sp_nonlinear3<-SpPOP_nonlinear3(25,5,c(1:5),c(1:5))
sp_nonlinear3


## -----------------------------------------------------------------------------
# Examples: Simulated population along with spatial coordinates and spatially varying model parameters

library(SpPOP)
sp_nonlinear4<-SpPOP_nonlinear4(25,5,c(1:5),c(1:5))
sp_nonlinear4


## -----------------------------------------------------------------------------
# Examples: Simulated population along with spatial coordinates and spatially varying model parameters

library(SpPOP)
sp_nonlinear5<-SpPOP_nonlinear5(25,5,c(1:5),c(1:5))
sp_nonlinear5


