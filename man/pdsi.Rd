\name{pdsi}
\alias{pdsi}
\title{Calculation of (sc)PDSI}
\usage{
pdsi(awc, lat, climate, start, end)
}
\arguments{
  \item{awc}{Available soil water capacity (in cm)}

  \item{lat}{Latitude of the site (in decimal degrees)}

  \item{climate}{{\code{data.frame} with monthly climate
  data consisting of 4 columns for year, month, temperature
  (deg C), and precipitation (mm)}

  \item{start}{Start year for PDSI calculation}

  \item{end}{End year for PDSI calculation}
}
\value{
A \code{list} of two \code{data.frames}, one holding the
standard PDSI, one holding the scPDSI.
}
\description{
Calculates monthly scPDSI series from temperature and
precipitation data. Uses binaries compiled from official
University of Nebraska C++ Code.
}
\details{
This function transforms the input climate data into the
necessary files for the PDSI binary executable and saves
them to a temp directory. The binary is called and the
resulting files of interest for PDSI and scPDSI are read in
again and returned.

For details on the algorithm, see the comments in the C++
source file. For reference, the source code is put in the
toplevel installation directory of the package, you may
find it using \code{system.file(package = "pdsi")}.

Note: this package works only with Windows and Mac OS X so
far.
}
\examples{
library(bootRes)
data(muc.clim)
pdsi(12, 50, muc.clim, 1960, 2000)
}
\references{
Methodology based on Research Paper No. 45; Meteorological
Drought; by Wayne C. Palmer for the U.S. Weather Bureau,
February 1965.
}
\keyword{utils}

