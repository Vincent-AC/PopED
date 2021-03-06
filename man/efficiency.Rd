% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/efficiency.R
\name{efficiency}
\alias{efficiency}
\title{Compute efficiency.}
\usage{
efficiency(
  ofv_init,
  ofv_final,
  poped_db,
  npar = get_fim_size(poped_db),
  ofv_calc_type = poped_db$settings$ofv_calc_type,
  ds_index = poped_db$parameters$ds_index,
  use_log = TRUE,
  ...
)
}
\arguments{
\item{ofv_init}{An initial objective function}

\item{ofv_final}{A final objective function.}

\item{poped_db}{a poped database}

\item{npar}{The number of parameters to use for normalization.}

\item{ofv_calc_type}{OFV calculation type for FIM
\itemize{ 
\item 1 = "D-optimality". Determinant of the FIM: det(FIM)
\item 2 = "A-optimality".  Inverse of the sum of the expected parameter variances: 
1/trace_matrix(inv(FIM)) 
\item 4 = "lnD-optimality".  Natural logarithm of the determinant of the FIM: log(det(FIM)) 
\item 6 = "Ds-optimality". Ratio of the Determinant of the FIM and the Determinant of the uninteresting
rows and columns of the FIM: det(FIM)/det(FIM_u)
\item 7 = Inverse of the sum of the expected parameter RSE: 1/sum(get_rse(FIM,poped.db,use_percent=FALSE))
}}

\item{ds_index}{Ds_index is a vector set to 1 if a parameter is uninteresting, otherwise 0.
size=(1,num unfixed parameters). First unfixed bpop, then unfixed d, then unfixed docc and last unfixed sigma. 
Default is the fixed effects being important, everything else not important.  Used in conjunction with
\code{ofv_calc_type=6}.}


\item{use_log}{Are the `ofv` arguments in the log space?}

\item{...}{arguments passed to \code{\link{evaluate.fim}} and \code{\link{ofv_fim}}.}
}
\value{
The specified efficiency value depending on the ofv_calc_type.  
The attribute "description" tells you how the calculation was made 
\code{attr(return_vale,"description")}
}
\description{
Efficiency calculation between two designs.
}
\seealso{
Other FIM: 
\code{\link{LinMatrixH}()},
\code{\link{LinMatrixLH}()},
\code{\link{LinMatrixL_occ}()},
\code{\link{calc_ofv_and_fim}()},
\code{\link{ed_laplace_ofv}()},
\code{\link{ed_mftot}()},
\code{\link{evaluate.e.ofv.fim}()},
\code{\link{evaluate.fim}()},
\code{\link{gradf_eps}()},
\code{\link{mf3}()},
\code{\link{mf7}()},
\code{\link{mftot}()},
\code{\link{ofv_criterion}()},
\code{\link{ofv_fim}()}
}
\concept{FIM}
