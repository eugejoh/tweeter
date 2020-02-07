
# Extract Tweets from 30 Days ---------------------------------------------

library(here)
library(rtweet)
library(dplyr)
library(fst)
library(pryr)

source(here::here("rtweet_token.R"))
# 
# t30 <- search_30day(
#   q = "coronavirus",
#   n = 25000, #max number per month
#   fromDate = "201912010000",
#   env_name = "day30"
# )
# 
# write.fst(t30, path = here::here(paste0("corona30day_", Sys.Date())))

rt_coronavirus <- search_tweets(q = '"coronavirus"', n = 18000, max_id = "a", retryonratelimit = TRUE)
object_size(rt_coronavirus)
readr::write_rds(rt_coronavirus, path = here::here(paste0("rt_coronavirus1", Sys.Date())))

rt_ncov <- search_tweets(q = '#nCoV19', n = 18000, max_id = "a", retryonratelimit = TRUE)
object_size(rt_ncov)
readr::write_rds(rt_ncov, path = here::here(paste0("rt_ncov", Sys.Date())))