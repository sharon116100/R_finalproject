install.packages("httr")
install.packages("XML")

library(httr)
library(XML)

html <- htmlParse(GET("https://disp.cc/m/"))

ht_title_2 <-xpathSApply(html, "//div[@class='ht_title']", xmlValue)
ht_desc_2 <-xpathSApply(html, "//div[@class='ht_desc']", xmlValue)

mix2 <- rbind(ht_title_2,ht_desc_2)

a<-length(ht_title_2)
b<-length(ht_desc_2)

i<-1
while (i < 2*a){
  cat("---","\n", mix2[i],"\n",mix2[i+1],"\n",append=TRUE,file="post_bonus_1023.txt")
  i<-i+2
}




