# Set library ----
message("Load the libraries")
library(rvest)
library(tidyverse)
library(mongolite)

message("Define function to scrape OP character")
url<-"https://bwf.tournamentsoftware.com/ranking/ranking.aspx?rid=70"
html<-read_html(url)
h1<-html %>% html_nodes("table") %>% html_table()
h2<-as.data.frame(h1[[1]])
player<-h2[c(3:12,17:26,31:40,45:54, 59:68),c(1,5,8,11)]
Kategori<-c(rep("Tunggal Putra", 10),rep("Tunggal Putri", 10), rep("Ganda Putra", 10), rep("Ganda Putri", 10), rep("Ganda Campuran", 10))
colnames(player)<- c("Men's Singles" = "Ranking", "Men's Singles.1" = "Nama", "Men's Singles.2" = "Skor", "More" = "Negara")
pemain<-player %>% mutate(Kategori)

#MongoDB
message("Connect to MongoDB Cloud")
atlas <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)

message("Store data frame into mongo cloud")
atlas$insert(pemain)

atlas$disconnect()
