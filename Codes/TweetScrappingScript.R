
## Setting up directory to get file:

setwd("C:/Users/Muhammad/Documents") 

options(warn = -1)

# Uncomment the following line to restore warnings.

#options(warn = 0) 


## Loading required and relevant packages:

#install.packages("rtweet")
#install.packages("dplyr")
#install.packages("tidyr")

library(rtweet)
library(dplyr)
library(tidyr)


## Keys to use for accessing Twitter's tweets:

api_key <- ""
api_secret_key <- ""
access_token <- ""
access_token_secret <- ""


## Authentication via Web Browser:

token <- create_token(app = "Covid-19 - Tweets Sentiment Analysis",
  consumer_key = api_key,
  consumer_secret = api_secret_key,
  access_token = access_token,
  access_secret = access_token_secret)


name <- c("status_id","user_id","created_at", "text","is_quote", "display_text_width", "favorite_count", "retweet_count", "hashtags", "symbols", "lang")
scrapped_data = data.frame(matrix(ncol= 11, nrow = 0))
colnames(scrapped_data)<- name


## Extracting Tweets:

scrapper <- function(t)
{
  iteration_size <- 85000 # Limit: 90000
  
  index <- 0
  
  start <- 0
  
  end <- 0
  
  ids <- t["tweet_id"]
  
  while (end < nrow(ids))
  {
    
    index <- index + 1
    start <- end + 1
    
    if(start + iteration_size > nrow(ids))
    {
      end <-nrow(ids)
      
    }
    else 
    {
      end <- start + iteration_size
    }
    
    # Checking the batch processing:
    
    print (c(index, start, end, (end-start) ))

    lookup_id = ids[start:end, ]
  
    
    # Calling the API's functionality:
    
    tw <- lookup_tweets(lookup_id, token = token)           # parse = TRUE?
  
    
    remove(scrapped_data)
    scrapped_data = rbind(scrapped_data, tw)
  }
  
  
  ## Setting up environment for Scrapped Data:
  
  fscrapped_data = select(scrapped_data, "status_id", "user_id", "created_at", "text", "is_quote", "display_text_width", "favorite_count", "retweet_count", "hashtags", "symbols", "lang")
  nfscrapped_data = separate(fscrapped_data, "created_at", into = c("date", "time"), sep = " ")
  
  return(nfscrapped_data)
}


## Creating Final Data Files:

files <- list.files(path="C:/Users/Muhammad/Documents/IEEE_Tweets_id", pattern = "*.csv", full.names = TRUE, recursive = FALSE)

lapply(files, function(x) 
{
  
  t <- read.csv(x, header = TRUE) # Loading file
  names(t) <- c("tweet_id", "score")
  
  name = basename(x)
  
  
  output = scrapper(t)
  
  foutput = data.frame(lapply(output, as.character), stringsAsFactors = FALSE)
  
  

  
  path_out = "C:/Users/Muhammad/Documents/downloaded_tweets/"
  
  wname <- paste(path_out, name, sep = "")
  
  
  write.csv(foutput, wname, row.names = FALSE, col.names = TRUE)
  
})





