setwd("C:/Users/Window/Downloads") 


dataL = read.csv("user_location.csv", header = TRUE)
View(dataL)

dataP = read.csv("Pre-processed_English_Tweets.csv", header = TRUE)
View(dataP)

merged <- merge(dataP, dataL, by="user_id")
View(merged)

write.csv(merged, "Location_Pre-processed_English_Tweets.csv", row.names = FALSE, col.names = TRUE)

     
     