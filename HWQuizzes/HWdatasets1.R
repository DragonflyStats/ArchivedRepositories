




for (i in 1:30)
{
Animal <- sample(c("Cat","Dog","Duck","Frog","Goose","Hamster","Horse"),1000,replace=T,prob=c(0.35,0.25,0.10,0.10,0.1,0.5,0.5))
Age <- sample(c(2:16),1000,replace=T)



thisDFname <- paste("DataSetTask",1000+i,".csv",sep="")
thisDF <-data.frame(Animal,Age)
write.csv(thisDF,thisDFname )
}

#######################################################

for (i in 1:30)
{
Factory = c(rep("FactoryA",2400),rep("FactoryB",2600))
X=rnorm(2400,1002.6,1.8);Y=rnorm(2600,1002.8,1.6)
set.seed(2000+i)
Measurement <- c(X,Y)
Defective <- c(as.numeric(X<1000),as.numeric(Y<1000))
thisDFname <- paste("DataSetTask",2000+i,".csv",sep="")
thisDF <-data.frame(Factory,Measurement,Defective)
write.csv(thisDF,thisDFname )
}


##########################################################

# MA4505

for (i in 1:70)
{
Factory = c(rep("FactoryA",2400),rep("FactoryB",2600),rep("FactoryC",2000),rep("FactoryD",3000)))
W=rnorm(2400,1002.6,1.8);X=rnorm(2600,1002.8,1.6),Y=rnorm(2000,1003.1,2.1);YX=rnorm(2600,1002.7,1.9)
set.seed(2000+i)
Measurement1 <- c(W,X,Y,Z)
Defective <- c(as.numeric(W<1000),as.numeric(X<1000),as.numeric(Y<1000),as.numeric(Z<1000))

set.seed(3000+i)
W=rnorm(2400,102.6,1.8);X=rnorm(2600,102.8,16);Y=rnorm(2000,103.1,21);Z=rnorm(3000,102.7,19)

Measurement2 <- c(W,X,Y,Z)
Size= rep("1-VerySmall",10000)
Size[Measurement2>70] = "2-Small"
Size[Measurement2>95] = "3-MediumSmall"
Size[Measurement2>102] = "4-MediumLarge"
Size[Measurement2>112] = "5-Large"
Size[Measurement2>125] = "6-ExtraLarge"


thisDFname <- paste("DataSetTask",2000+i,".xlsx",sep="")
thisDF <-data.frame(Factory,Measurement,Defective)
write.xlsx(thisDF,thisDFname )
}
