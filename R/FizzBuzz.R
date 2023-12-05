#' A take on a children's game.
#'
#' Fizz Buzz is a children's game. The FizzBuzz function will output a vector
#' of the first x terms given as a parameter.
#'
#' For any number evenly divisible by 3, “Fizz” will appear instead, and any number
#' evenly divisible by 5, “Buzz” will appear, and if it is divisible by
#' both, you'll see “Fizz Buzz.”
#'
#'
#'
#' @param n a vector
#' @return First \code{n} of the game Fizz Buzz
#' @examples
#' FizzBuzz(1:30)
#' FizzBuzz(15:45)
#' @export
FizzBuzz <- function(n){
  output <- NULL
  for (i in 1:length(n)) {
    if (n[i] == Inf | n[i] == -Inf) {stop('Error Message, cannot use infinity')}
    if (n[i] <= 0) {stop('Error Message, negative value caught')}
    if (n[i] %% 3 == 0 & n[i] %% 5 != 0){
      output[i]='Fizz'}
    if (n[i] %% 5 == 0 & n[i] %% 3 != 0){
      output[i]='Buzz'}
    if(n[i] %% 3 ==0 & n[i] %% 5 ==0){
      output[i]='FizzBuzz'}
    if (n[i] %% 3 != 0 & n[i] %% 5 !=0) {output[i]= n[i]}
  }
  return(output)
}
