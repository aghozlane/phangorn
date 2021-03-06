\name{densiTree}
\alias{densiTree}
\title{
Plots a densiTree. 
}
\description{
An R function to plot trees similar to those produced by DensiTree. 
}
\usage{
densiTree(x, type = "cladogram", alpha = 1/length(x), consensus = NULL, optim = FALSE, 
    scaleX = FALSE, col = 1, width = 1, cex = 0.8, ...)
}
\arguments{
\item{x}{
an object of class \code{multiPhylo}.
}
\item{type}{
a character string specifying the type of phylogeny, so far "cladogram" (default) or "phylogram" (the default) are supported. 
}
\item{alpha}{
parameter for semi-transparent colors. 
}
\item{consensus}{
A tree which is used to define the order of the tip labels.
}
\item{optim}{
not yet used. 
}
\item{scaleX}{
scale trees to have identical heights.
}
\item{col}{
edge color.
}
\item{width}{
edge width. 
}
\item{cex}{
a numeric value giving the factor scaling of the tip labels.
}
\item{\dots}{
further arguments to be passed to plot.
}
}
\details{
If no consensus tree is provided \code{densiTree} computes a rooted mrp.supertree as a backbone. This should avoid too many unnecessary crossings of edges.  
Trees should be rooted, other wise the output may not make sense. 
}
\references{
densiTree is inspired from the great \href{www.cs.auckland.ac.nz/~remco/DensiTree}{DensiTree} program of Remco Bouckaert. 

Remco R. Bouckaert (2010) DensiTree: making sense of sets of phylogenetic trees
\emph{Bioinformatics}, \bold{26 (10)}, 1372-1373. 
}
\author{
Klaus Schliep \email{klaus.schliep@gmail.com}
}


\seealso{
\code{\link{plot.phylo}}, \code{\link{plot.networx}}
}
\examples{  
data(Laurasiatherian)
set.seed(1)
bs <- bootstrap.phyDat(Laurasiatherian, FUN = 
   function(x)upgma(dist.hamming(x)), bs=25)
# cladogram nice to show topological differences
densiTree(bs, optim=TRUE, type="cladogram", col="blue")
densiTree(bs, optim=TRUE, type="phylogram", col="green")
\dontrun{
# phylograms are nice to show different age estimates
require(PhyloOrchard)
data(BinindaEmondsEtAl2007)
BinindaEmondsEtAl2007 <- .compressTipLabel(BinindaEmondsEtAl2007) 
densiTree(BinindaEmondsEtAl2007, type="phylogram", col="red")
}

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{plot}

