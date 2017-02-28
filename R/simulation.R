#' Title
#'
#' @param regression_data
#'
#' @return
#' @export
#'
#' @examples
linear_regression <- function(regression_data){
  x <- regression_data$x
  y <- regression_data$y
  slope_est <- cov(x, y) / var(x)
  intercept_est <- mean(y) - slope_est * mean(x)
  out <- c(intercept = intercept_est, slope = slope_est)
}

#' Title
#'
#' @param sample_size
#' @param intercept
#' @param slope
#'
#' @return
#' @export
#'
#' @examples
simulation_replication <- function(sample_size, intercept, slope){
  regression_data <- dgp(sample_size, intercept, slope)
  return(linear_regression(regression_data))
}

#' Title
#'
#' @param n_reps
#' @param sample_size
#' @param intercept
#' @param slope
#'
#' @return
#' @export
#'
#' @examples
simulation_study <- function(n_reps, sample_size, intercept, slope){
  out <- replicate(n_reps, simulation_replication(sample_size,
                                                  intercept, slope))
  return(t(out))
}
