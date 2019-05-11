library(readr)
library(dplyr)
library(magrittr)
library(ggplot2)
library(tidyr)
library(lmerTest)

mypath <- "/home/kevin/CSVs/"
list.files(mypath)
CSVfile <- grep(".csv",list.files(mypath),value=TRUE)

for(i in 1:length(CSVfile))
{
  
  i=6
thisfilename = paste(mypath,CSVfile[i],sep="")
myData <- read_csv(thisfilename)

if ("TREATMENT" %in% names(myData)){
  myData <- myData %>% rename("Treatment"=TREATMENT)
  }
myData <- myData %>% mutate(Treatment=factor(Treatment,levels=c("PRE","POST"))) j 

myData <- myData %>% gather(item,y,P1:P15)
myData <- myData %>% mutate(item=factor(item,levels=paste("P",1:15,sep="")))

ConstancyTest <- lmer(y ~ Step + (1|item), data = myData)
anova(ConstancyTest)

ggplot(data=(myData%>%filter(Treatment=="PRE"))
       ,aes(x=Step,y=y,col=item)) + stat_smooth(se=FALSE)


ggplot(data=(myData%>%filter(Treatment=="POST"))
       ,aes(x=Step,y=y,col=item)) + stat_smooth(se=FALSE)

(myData %>% filter(Treatment=="PRE") %>% 
  rename("y.pre"=y) %>% 
  select(-Treatment) ) %>% left_join(
    (myData %>% filter(Treatment=="POST") %>% 
      rename("y.post"=y) %>% 
      select(-Treatment))) %>% mutate(y.diff=y.post-y.pre) %>% ggplot(
        aes(x=Step,y=y.diff,col=item)) + stat_smooth(se=FALSE)
        
      )
    
  

}

