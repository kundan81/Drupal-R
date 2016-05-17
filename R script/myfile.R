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

#' @get /line_chart
line_chart <- function() {
# Define 2 vectors
cars <- c(1, 3, 6, 4, 9)
trucks <- c(2, 5, 4, 5, 12)

# Graph cars using a y axis that ranges from 0 to 12
plot(cars, type="o", col="blue", ylim=c(0,12))

# Graph trucks with red dashed line and square points
lines(trucks, type="o", pch=22, lty=2, col="red")

# Create a title with a red, bold/italic font
title(main="Autos", col.main="red", font.main=4)
}

#' @get /pie_chart
pie_chart<- function() {
	# Define cars vector with 5 values
	cars <- c(1, 3, 6, 4, 9)
	# Create a pie chart with defined heading and
	# custom colors and labels
	pie(cars, main="Cars", col=rainbow(length(cars)), labels=c("Mon","Tue","Wed","Thu","Fri"))
}

#' @get /histo_gram
histo_gram<-function (){
	# Get a random log-normal distribution
	r <- rlnorm(1000)
	# Get the distribution without plotting it using tighter breaks
	h <- hist(r, plot=F, breaks=c(seq(0,max(r)+1, .1)))
	# Plot the distribution using log scale on both axes, and use blue points
	plot(h$counts, log="xy", pch=20, col="blue", main="Log-normal distribution", xlab="Value", ylab="Frequency")
}
