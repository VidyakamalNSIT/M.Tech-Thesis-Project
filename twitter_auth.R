#libraries which is used in this script
library(twitteR)
library(ROAuth)
library(readr)
library(dplyr)

#connecting to api
download.file(url= "http://curl.haxx.se/ca/cacert.pem", destfile= "cacert.pem")
reqURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "https://api.twitter.com/oauth/access_token"
authURL <- "https://api.twitter.com/oauth/authorize"

#twitter app cridentials of accessing twits
consumer_key <-"UMjXC86wAdpUtKLLFXrqFJ9ig"
consumer_secret<-"M208EbuPqto9uEzqeRkjfVSPByRE5iL1dBzRfdIQHKHz0M6dGl"
access_token<-"83651603-KjUBwV3STf3Np3E7B99Oi7Plgkva77ekPV5yvV02r"
access_secret<-"r9csywCFNLUJgddMkCqv24kIpvlSuQH0EhlRUopBMWczl"

# Conection with HandShaking
Cred <- OAuthFactory$new(consumerKey = consumer_key,
                         consumerSecret=consumer_secret,
                         requestURL = reqURL,
                         accessURL = authURL)

Cred$handshake(cainfo = system.file('CurlSSL', 'cacert.pem', package = 'RCurl'))


save(Cred, file='twitter authentication.Rdata')
load('twitter authentication.Rdata')
registerTwitterOAuth(Cred)


#set up to Direct authenticate
setup_twitter_oauth(consumer_key ,consumer_secret,access_token ,access_secret)

#Translater API


