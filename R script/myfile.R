# myfile.R

#' @get /mean
normalMean <- function(samples=10){
  data <- rnorm(samples)
  mean(data)
}

#' @get /sum
addTwo <- function(a, b){
  as.numeric(a) + as.numeric(b)
}

#' @get /facto
factorial <- function(x) {
	y <- 1
	for(i in 1:x){
    y <-y*((1:x)[i])
	}
	print(y)
}
