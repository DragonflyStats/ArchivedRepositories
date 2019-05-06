library(readr)
library(dplyr)
library(magrittr)
library(ggplot2)
library(tidyr)
library(lmerTest)

mypath <- "/home/kevin/Accelerometers/CSV/"
list.files(mypath)
CSVfile <- grep(".csv",list.files(mypath),value=TRUE)

paired.t.test.p.values <- numeric()
LME.p.values <- numeric()

for(i in 1:length(CSVfile))
{
  
  # i=6
  thisfilename = paste(mypath,CSVfile[i],sep="")
  myData <- read.csv(thisfilename)
  cat(dim(myData),"\n")
  if ("TREATMENT" %in% names(myData)){
    myData <- myData %>% rename("Treatment"=TREATMENT)
  }
 ## myData <- myData %>% select(1:17)
 ## myData %>% write.csv(paste(mypath,"clean/",CSVfile[i],sep=""),row.names = FALSE)
  
  myData <- myData %>% mutate(Treatment=factor(Treatment,
                                               levels=c("PRE","POST"))) 
  myData <- myData %>% gather(item,y,P1:P15)
  myData <- myData %>% mutate(item=factor(item,levels=paste("P",1:15,sep="")))
  cat(dim(myData),"\n")
  myData <- myData %>% filter(Step <= 35)
  
  paired.t.test.p.values <- c(paired.t.test.p.values,(t.test(y~Treatment,paired=T,data=myData))$p.value)
  Test <- lmer(y ~ Treatment+ (1|item),data=myData) 
  LME.p.value <- anova(Test)[[6]]
  LME.p.values <- c(LME.p.values,LME.p.value)

}

MakePictures <- data.frame( Test= 1:length(CSVfile),CSVfile,
                            paired = paired.t.test.p.values<0.05, 
                            LME = LME.p.values<0.05)
MakePictures <- bind_rows(
  (MakePictures %>% filter(paired ==TRUE) %>% 
      filter(paired == LME) %>% slice(1)),
  (MakePictures %>% filter(paired ==FALSE) %>% 
     filter(paired == LME) %>% slice(1)),
  (MakePictures %>% filter(paired != LME)) )
  

CSVfile2 <- MakePictures$CSVfile

for(i in 1:length(CSVfile2))
{

  thisfilename = paste(mypath,CSVfile2[i],sep="")
  myData <- read_csv(thisfilename)
  outputfilename <- gsub(".csv","",CSVfile2[i])
  myData <- myData %>% mutate(Treatment=factor(Treatment,levels=c("PRE","POST"))) 
    myData <- myData %>% gather(item,y,P1:P15)
  myData <- myData %>% mutate(item=factor(item,levels=paste("P",1:15,sep="")))
  myData <- myData %>% rename("Participant"=item)
  
ggplot(data=(myData%>%filter(Treatment=="PRE"))
       ,aes(x=Step,y=y,col=Participant)) + stat_smooth(se=FALSE)+ theme_bw()

ggsave(paste(mypath,"images/",outputfilename,"_PRE.jpg",sep=""),
          device="jpg", width = 20, height = 20, units = "cm")

ggplot(data=(myData%>%filter(Treatment=="POST"))
       ,aes(x=Step,y=y,col=Participant)) + stat_smooth(se=FALSE) + theme_bw()
ggsave(paste(mypath,"images/",outputfilename,"_POST.jpg",sep=""),
       device="jpg", width = 20, height = 20, units = "cm")

(myData %>% filter(Treatment=="PRE") %>% 
    rename("y.pre"=y) %>% 
    select(-Treatment) ) %>% left_join(
      (myData %>% filter(Treatment=="POST") %>% 
         rename("y.post"=y) %>% 
         select(-Treatment))) %>% mutate(y.diff=y.post-y.pre) %>% ggplot(
           aes(x=Step,y=y.diff,col=Participant)) + stat_smooth(se=FALSE) + theme_bw()

ggsave(paste(mypath,"images/",outputfilename,"_DIFFERENCE.jpg",sep=""),
       device="jpg", width = 20, height = 20, units = "cm")


myData %>% filter(Participant=="P12") %>% ggplot(
           aes(x=Step,y=y,col=Treatment)) + stat_smooth(se=FALSE) + theme_bw()

}

########################################
for(i in 1:length(CSVfile2))
{
  
  thisfilename = paste(mypath,CSVfile2[i],sep="")
  myData <- read_csv(thisfilename)
  outputfilename <- gsub(".csv","",CSVfile2[i])
  myData <- myData %>% mutate(Treatment=factor(Treatment,levels=c("PRE","POST"))) 
  myData <- myData %>% gather(item,y,P1:P15)
  myData <- myData %>% mutate(item=factor(item,levels=paste("P",1:15,sep="")))
  myData <- myData %>% rename("Participant"=item)
  
PartList <- c("P1","P4","P8","P12")  
for(i in 1:length(PartList))
{
myData %>% filter(Participant==PartList[i]) %>% ggplot(
  aes(x=Step,y=y,col=Treatment)) + stat_smooth(se=FALSE) + theme_bw()

  ggsave(paste(mypath,"participants/",outputfilename,"_",PartList[i],".jpg",sep=""),
         device="jpg", width = 20, height = 20, units = "cm")
}
}
