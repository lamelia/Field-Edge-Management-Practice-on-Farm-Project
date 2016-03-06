#imputation with mice
library(mice)

setwd("e:/Lectures3/488-CL/client")
ca <- read.csv("data1110.csv")

#create dataset n, that contains only variables we want to include in model
n <- ca[c(9:11,24,39,96,98)]

#factor all categorical/binary variables and order the ordinal variables

var_names <- c("hedgerow","wildflower","perennial","X3a","X3p","A6","A7_owner")
for (i in 1:7){
  n[,var_names[i]] <- factor(n[,var_names[i]])
}



#n$hedgerow <- factor(n$hedgerow)
#n$wildflower <- factor(n$wildflower)
#n$perennial <- factor(n$perennial)
#n$X3a <- factor(n$X3a)
#n$X3p <- factor(n$X3p)
#n$A6 <- factor(n$A6)
#n$A7_owner <- factor(n$A7_owner)


#applying multiple imputation with mice, the imputation method 
#is based of the format of variable, if variable is categorical w/
#more than 2 levels, then use polyreg
mc <- mice(n,me=c(rep("polyreg",6),"logreg"))
summary(mc)

#see the result of imputation in variable hedgerow
mc$imp$hedgerow

#make a complete dataset, that include multiple imputation
complete_data <- complete(mc,1)

#here is the complete data
complete_data
