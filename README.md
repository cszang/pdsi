# pdsi

Calculation of (sc)PDSI from monthly temperature and precipition data in R. This is basically a wrapper around a modified version of the University of Nebraska's C++ based PDSI implementation from http://greenleaf.unl.edu/downloads/. This code has an unknown license, I treat it as MIT.

## Installation

``` R
install.packages("devtools")
library(devtools)
install_github("pdsi", "znag")
# (on Linux)
library(pdsi)
pdsi::build_linux_binaries()
```