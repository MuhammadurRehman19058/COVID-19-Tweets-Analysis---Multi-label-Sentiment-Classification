Two datasets have been used for this research purpose

    Dataset-1 -> CORONAVIRUS (COVID-19) TWEETS DATASET

    Dataset-2 -> Sem Eval Task 1 Dataset

Dataset-1 Tweets-ID has been published, related to Covid 19, filtered on hashtags like “corona”, "coronavirus", "covid", "pandemic", "lockdown", "quarantine", "hand sanitizer", "ppe", "n95", different possible variants of "sarscov2", "nCov", "covid-19", "ncov2019", "2019ncov", "flatten(ing) the curve", "social distancing", "work(ing) from home" and the respective hashtag of all these keywords.

Tweets were downloaded using TweetScrappingScript, users' location using UserData and merged with dataset using LocationMerger and text pre-processed using Tweet TextPreProcessor

    Dataset-1 Attributes:
    tweet_id 	user_id 	date 	time 	is_qoute 	text
    display_text_width 	favorite_count 	retweet_count 	hashtags 	lang 	symbols
    location 	lat 	long 	location 	lat 	long

    Table 1: Dataset-1 Attributes

    Dataset-2 Attributes:
    ID 	text

    Table 2: Dataset-1 Attributes

Dataset-1 was divided into two part one for training/testing and second for labeling by trained models (24185 Tweet samples). Sized of Datasets used for training and testing the models are as below:


Dataset size 	Train 	Validate 	Test
Dataset-1 	4937 	1064 	1085
Dataset-2 	6938 	886 	3259

Table 3: Datasets split sizes



Dataset-1 and dataset-2 Labeled and Predicting Emotions for both datasets are as below:

anger 	disgust 	anticipation 	fear
joy 	optimism 	love 	pessimism
sadness 	trust 	surprise 	trust

Table 4: Labeled and Predicting Emotions



After training and testing our models usded Labeling Dataset (https://drive.google.com/file/d/15zxJxv2vvw0aPIn7YkeTddABrX0htadZ/view?usp=sharing) to classify the emotions of the Tweets.

You can find the complete dataset used for this research purpose (https://drive.google.com/drive/folders/1WLDUF-SOPVk6RwuhqgR2XRwnbrWng8mo?usp=sharing)