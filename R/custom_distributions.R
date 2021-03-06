# Custom distributions ----------------------------------------------------

#' Random deviates of Mammen distribution.
#'
#' @param n Number of observations.
#' @return Random deviates of size n.
#' @examples
#' rmammen_point(10)
rmammen_point <- function(n){
  sqrt_5 <- sqrt(5)
  # Probability
  gold <- (sqrt_5 + 1)/(2*sqrt_5)

  # Binominal
  res <- rbinom(n, size = 1, prob = gold)
  res_f <- ifelse(res == 1, -(sqrt_5-1)/2, (sqrt_5+1)/2)

  # Result
  return(res_f)
}

#' Random deviates of Mammen continuous distribution.
#'
#' @param n Number of observations.
#' @return Random deviates of size n.
#' @examples
#' rmammen_cont(10)
rmammen_cont <- function(n){
  # In this case we use two standard  normals
  # Mean default
  mean_d <- 0

  # Standar deviation default
  sd_d <- 1

  # Normal 1
  norm_1 <- rnorm(n, mean = mean_d, sd = sd_d)

  # Normal 1
  norm_2 <- rnorm(n, mean = mean_d, sd = sd_d)

  # Result
  res <- norm_1/sqrt(2) + 0.5*(norm_2^2 - 1)

  # Result
  return(res)
}

#' Random deviates of Rademacher distribution.
#'
#' @param n Number of observations.
#' @return Random deviates of size n.
#' @examples
#' rrademacher(10)
rrademacher <- function(n){
  # Binominal
  res <- rbinom(n, size = 1, prob = 0.5)
  res_f <- ifelse(res == 0, -1, res)

  # Result
  return(res_f)
}
