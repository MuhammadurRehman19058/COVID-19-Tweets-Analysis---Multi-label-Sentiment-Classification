# COVID-19 Tweets Analysis Multi-label Sentiment Classification

### Abstract
Though Twitter sentiment analysis modulations are rife in the current age of Deep Learning, there is little focus on the existence of multiple emotions in tweets as it presents itself as a taxing task due to a prevalent inability in identifying inter-label dependencies and correlations. The presence of one emotion entails a highly likely occurrence of another in the same subset, yet is usually disregarded when attempting sentiment analysis of tweets in order to focus primarily on singular labels. If explored concretely, it is liable to open up exploitation of why the existence of one emotion implies the existence of another, and how they can be utilized together to better approach emotion-based openings. The aim of this project is to utilize sentiment-relevant frameworks such as Bag-of-Words (BOW) and Bidirectional Encoder Representation from Transformers (BERT), alongside sequential networks such as Long Short-Term Memory (LSTM) to identify these multiple labels at higher rates of efficiency than those provided by usual attempts of most modular methods. Through our attempt, we will also analyze the identifiers that trigger each emotion, such as month frequency and location-based clusters. The aim of this research is to recognize and analyze the emotions of tweets relevant to COVID-19, in order to provide beneficial value to prospective stakeholders in making decisions with regard to the virus, general health and well-being. We were able to achieve an accuracy rate of 82% and 87% respectively with optimal individual loss functionalities for the task using a BERT-base uncased model tuned to certain parameter settings. 

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

### Pre-tranied Models
Please find the pre-trained models for this project [here](https://drive.google.com/drive/folders/1ySF7HwnQz00Zju1Hma94jdkacuInTMge?usp=sharing)
