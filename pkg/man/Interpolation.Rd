\name{Interpolation}
\alias{Interpolation}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A function to do bi-directionnal linear interpolation over x and y. 
}
\description{
Interpolation takes a three columns data frame to do a linear interpolation over X with points seperated by intervX then over Y with points seperated by intervY.
}
\usage{
Interpolation(Tab, intervX = NULL, intervY = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Tab}{
Dataframe to be interpolated. This data frame must be a three columns data frame. Columns must be x, y and z, in that order.
}
  \item{intervX}{
Interval between two interpolated points over X axis.
}
  \item{intervY}{
Interval between two interpolated points over Y axis.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a three data frame of the form x, y and z with the same column names as input data frame.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Vincent Le Bourlot
}
\note{
For further details on the use of interp, please refer to help(interp).
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# an example using the data volcano

require(lattice)
# Load volcano
data(volcano)

# Transform the data to be plotted with lattice function levelplot
x=1:dim(volcano)[1]
y=1:dim(volcano)[2]

data=expand.grid(x,y)
vol=cbind(data,c(volcano))
colnames(vol)=c("x","y","z")

# Plot the volcano with function levelpot
STdiag(z~x*y,vol,log=FALSE,col="terrain")

# Interpolate with finner X and Y and plot the new volcano 
Interpvol=Interpolation(vol,intervX=0.5,intervY=0.2)
STdiag(z~x*y,Interpvol,log=FALSE,col="terrain")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line