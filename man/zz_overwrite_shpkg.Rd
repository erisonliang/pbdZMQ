% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/overwrite_shpkg.r
\name{Overwrite shpkg}
\alias{Overwrite shpkg}
\alias{overwrite.shpkg.rpath}
\title{Overwrite rpath of linked shared library in osx}
\usage{
overwrite.shpkg.rpath(mylib = NULL, mypkg = "JuniperKernel",
  linkingto = "pbdZMQ", shlib = "zmq")
}
\arguments{
\item{mylib}{the path where \code{mypkg} was installed (default \code{NULL} that will
search from R's path)}

\item{mypkg}{the package for where \code{mypkg.so} will be checked or updated}

\item{linkingto}{the package for where \code{libshpkg*.dylib} is located}

\item{shlib}{name of shlib to be searched for}
}
\description{
Overwrite rpath of linked shared library
(e.g. \code{JuniperKernel/libs/JuniperKernel.so}
in osx only.
Typically, it is called by \code{.onLoad()} to update rpath if
\code{pbdZMQ} or \code{pbdZMQ/libs/libzmq.*.dylib} was moved to
a personal directory
(e.g. the binary package was installed to a none default path).
The commands \code{otool} and \code{install_name_tool} are required.
Permission may be needed (e.g. \code{sudo}) to overwrite the shared
library.
}
\examples{
\dontrun{
### Called by .onLoad() within "JuniperKernel/R/zzz.R"
overwrite.shpkg.rpath(mypkg = "JuniperKernel",
                      linkingto = "pbdZMQ",
                      shlib = "zmq")
}

}
\author{
Wei-Chen Chen \email{wccsnow@gmail.com}.

Programming with Big Data in R Website: \url{http://r-pbd.org/}
}
\keyword{compile}
