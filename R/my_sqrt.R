#' My sqrt function
#'
#' @description
#' Step 1: Simple input and output
#'
#' @param value numeric; a number to calculate a root
#'
#' @return resp; a list with results
#'
#' @export
my_sqrt <- function(value) {

  resp <- .C("my_sqrt_c",
             value = as.numeric(value),
             result = as.numeric(value))

  resp$result

}
