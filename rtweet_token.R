
# Getting Authentication Tokens Setup -------------------------------------
# based on https://rtweet.info/articles/auth.html

library(rtweet)

token <- create_token(
  app = "ncov2019",
  consumer_key = Sys.getenv("tweet_key"),
  consumer_secret = Sys.getenv("tweet_skey"),
  access_token = Sys.getenv("tweet_access"),
  access_secret = Sys.getenv("tweet_saccess"))
