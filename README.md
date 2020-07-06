# COVID-19 Tweets Analysis Multi-label Sentiment Classification

### Abstract

### Dataset
Two datasets have been used for this research purpose 1) [SemEval](http://saifmohammad.com/WebDocs/AIT-2018/AIT2018-DATA/SemEval2018-Task1-all-data.zip) (Dataset-1) 2) [CORONAVIRUS (COVID-19) TWEETS DATASET](https://ieee-dataport.org/open-access/coronavirus-covid-19-tweets-dataset) (Dataset-2).
In Dataset-2 Tweets-ID has been published, related to Covid 19, filtered on hashtags like “corona”, "coronavirus", "covid", "pandemic", "lockdown", "quarantine", "hand sanitizer", "ppe", "n95", different possible variants of "sarscov2", "nCov", "covid-19", "ncov2019", "2019ncov", "flatten(ing) the curve", "social distancing", "work(ing) from home" and the respective hashtag of all these keywords.

Tweets were downloaded using [TweetScrappingScript](), users' location using []() and text pre-processed using [Tweet Text Pre-Processor]()

Dataset-1 Attributes: ID, text, anger, anticipation, disgust, fear, joy, love, optimism, pessimism, sadness, surprise, trust

Dataset-2 Attributes: status_id, user_id, date, time, text, is_quote, display_text_width, favorite_count, retweet_count, hashtags, symbols, lang, anger, anticipation, disgust, fear, joy, love, optimism, pessimism, sadness, surprise, trust 

After training and testing our models [LabelingDataset]() was used to to label and implement emotional analysis.

Labeling Data: status_id, user_id, date, time, text, is_quote, display_text_width, favorite_count, retweet_count, hashtags, symbols, lang, location, lat, long, anger, anticipation, disgust, fear, joy, love, optimism, pessimism, sadness, surprise, trust


You can find the complete dataset used for this research purpose [here](https://drive.google.com/drive/folders/1WLDUF-SOPVk6RwuhqgR2XRwnbrWng8mo?usp=sharing)

### Results
