df<-mtcars2
Types <-apply(df,2,class)
Types
summary(df)
apply(df,2,unique)
apply(df,2,length(unique))

howmanyunique <-function(x)length(unique(x))
apply(df,2,howmanyunique)

howmanycases <-function(x) sum(complete.cases(x)) 
apply(df,2,howmanycases)

howmanymissing <- function(x) (length(x) - sum(complete.cases(x)))
#----------------------------#
factorcheck <- round(sort(apply(df,2,howmanycases) / apply(df,2,howmanyunique),decreasing = TRUE),4)


howmanymissing <- function(x) (lenght(x) - sum(complete.cases(x)))
apply(df,2,howmanymissing)
howmanymissing <- function(x) (length(x) - sum(complete.cases(x)))
apply(df,2,howmanymissing)

factorcheck
factorcheck <- round(sort(apply(df,2,howmanycases) / apply(df,2,howmanyunique),decreasing = TRUE),4)
factorcheck
names(factorcheck)
which(names(df)==names(factorcheck)[1:3])
names(factorcheck)[1:3]
names(df)


#--------------------------------#
apply(df,table,2)
summary(airquality)
apply(airquality,2,unique)
apply(airquality,2,length(unique))
howmanyunique <-function(x){length(unique(x)}
howmanyunique <-function(x)length(unique(x))
apply(airquality,2,howmanyunique)
history()
?length
apply(airquality,2,length)
apply(airquality,2,completecases)
apropos("complete"
)
apply(airquality,2,complete.cases)
apply(airquality,2,sum(complete.cases))
apply(airquality,2,sum(complete.cases))
airquality[,3]
summary(airquality)
apply(airquality,2,sum(complete.cases))
howmanycases <-function(x) length(complete.cased(x)) 
apply(airquality,2,howmanycases)
howmanycases <-function(x) length(complete.cases(x)) 
apply(airquality,2,howmanycases)
howmanycases <-function(x) sum(complete.cases(x)) 
apply(airquality,2,howmanycases)
howmanymissing <- function(x) (lenght(x) - sum(complete.cases(x)))
apply(airquality,2,howmanymissing)
howmanymissing <- function(x) (length(x) - sum(complete.cases(x)))
apply(airquality,2,howmanymissing)

factorcheck <- round(sort(apply(airquality,2,howmanycases) / apply(airquality,2,howmanyunique),decreasing = TRUE),4)
factorcheck
names(factorcheck)
which(names(airquality)==names(factorcheck)[1:3])
names(factorcheck)[1:3]
names(airquality)
history(30)
apply(airquality,table,2)
apply(airquality,2,table)
mtcars
summary(mtcars)
mtcars2 <-mtcars
summary(mtcars2)
#---------------------------------------------------------------------------------#
#Single Operation
mtcars2[,8:11] <- factor(mtcars2[,8:11])
mtcars2[,8] <- factor(mtcars2[,8])
mtcars2[,9] <- factor(mtcars2[,9])
mtcars2[,10] <- factor(mtcars2[,10])
mtcars2[,11] <- factor(mtcars2[,11])
summary(mtcars1)
summary(mtcars2)
#--------------------------------------------------------------------------------------#
df<-mtcars2
Types <-apply(df,2,class)
Types
summary(df)
apply(df,2,unique)
apply(df,2,length(unique))
howmanyunique <-function(x)length(unique(x))
apply(df,2,howmanyunique)
howmanycases <-function(x) sum(complete.cases(x)) 
apply(df,2,howmanycases)
factorcheck <- round(sort(apply(df,2,howmanycases) / apply(df,2,howmanyunique),decreasing = TRUE),4)
factor(check)
factorcheck
summary(mtcars2$carb)
which(factorcheck>5)
names(factorcheck>5)
names(which(factorcheck>5))
names(which(factorcheck>5)) -> tofactor
which(df %in% tofactor)
which(names(df) %in% tofactor)
which(names(df) %in% tofactor) ->tofactorcolumns
names(df) %in% tofactor
history(100)

