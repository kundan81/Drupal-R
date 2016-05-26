# Reading csv file. if you are not in csv file directory, you should specify path of the file.
# For Example uk500 <- read.csv('/home/USERNAME/pilot project/R script/uk-500.csv', header=TRUE, sep=",")
uk500 <- read.csv('uk-500.csv', header=TRUE, sep=",")

# duplicated function return TRUE & FALSE if value duplicated.
bool_value <- duplicated(uk500$county)

#this for loop return the index of all duplicated value index.
for (i in 1:length(uk500$county)) {
  bool_value_index<-which(bool_value %in% c('TRUE'))
}

# creating data frame of First Name, Last Name & Country Name.
filter_value <- data.frame(First_Name = uk500$first_name[bool_value_index], 
  Last_Name = uk500$last_name[bool_value_index], Country_Name = uk500$county[bool_value_index])

# ploting graph we need ggplot2 library if this library not install then install it using
# install.packages("ggplot2") and follow next step.
library(ggplot2)

# this will plot graph.
ggplot(data = filter_value) + geom_point(mapping = aes(x = First_Name, 
  y = Country_Name, color = "blue", fill = "red", size = 2, stroke = 0.5))

# there is a chance that you can not visulaise this graph properlly so for better 
# understanding i am ploting graph of top 20 record.
top20<-head(filter_value, 20)
ggplot(data = top20) + geom_point(mapping = aes(x = First_Name, 
  y = Country_Name, color = "blue", fill = "red", size = 2, stroke = 0.5))
