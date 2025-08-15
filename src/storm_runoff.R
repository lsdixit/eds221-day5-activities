#' "Simple Method" to estimate volume of stormwater runoff
#'
#' @param I Fraction of the watershed that is considered "impervious" (unitless)
#' @param A watershed area in acres
#'
#' @returns volume of stormwater expected for a watershed.
#' @export
#'
#' @examples
#' predict_runoff(I = 0.6, A = 182)
predict_runoff <- function(I, A) {
  runoff_coeff <- 0.05 + 0.9 * I
  V <- 3630 * 1 * runoff_coeff * A
  print(V)
}
