#' Hello, UseR 2026!
#'
#' @description
#' Step 0 or the starting point
#'
#' @return resp;
#'
#' @export
hello_user <- function() {

  resp <- .C("hello_user_c")

}
