#' Generate draws from simple linear regression
#'
#' @param sample_size The sample size
#' @param intercept The regression intercept
#' @param slope The regression slope
#'
#' @return Returns a dataframe with columns x and y where y is
#' generated as a linear function of x plus normal random noise, and
#' x is uniform.
#' @export
#'
#' @examples
#' dgp(sample_size = 10, intercept = 1, slope = 2)
dgp <- function(sample_size, intercept, slope){
  x <- runif(sample_size)
  epsilon <- rnorm(sample_size)
  y <- intercept + slope * x + epsilon
  return(data.frame(x = x, y = y))
}
