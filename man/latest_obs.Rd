% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocess.R
\name{latest_obs}
\alias{latest_obs}
\title{Filter for latest observations of all types}
\usage{
latest_obs(obs)
}
\arguments{
\item{obs}{A data frame with the following variables:
date, cases, seq_delta, and seq_total, cases_available,
and seq_available. seq_available and case_available must be
uniquely define data rows but other rows can be duplicated based
on data availability.}
}
\description{
Filter for latest observations of all types
}
\examples{
dt <- rbind(
  update_obs_availability(germany_obs, seq_lag = 3),
  update_obs_availability(germany_obs, seq_lag = 1)
)
latest_obs(dt)
}
