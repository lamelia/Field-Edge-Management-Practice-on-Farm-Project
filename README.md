# Field Edge Management Practice on Farm Project

This project is a team work. The objective is to identify which factors have the most influence to farmers’
decision on utilizing field edge planting practices such as hedgerows, wildflowers, and perennial grasses in
their farm.

Data set:
Data comes from survey, consists of 167 observations with 93 variables.
The respondents of the survey are farmers, landowners or growers. There are 48 variables that we want to
include in our analysis.

Method of analysis:
- As part of data preparation, we handle missing value using MICE  (Multivariate Imputation by Chained Equations) package in R to conduct single imputation
- Create summary table and descriptive statistics including frequency table and contingency table
- Perform chi square test to determine a significant association between two categorical variables, such as interest level of field edge planting and gender
- Build logistic regression model and perform stepwise variable selection procedure to identify predictors that have the most influence to farmers’ decision on planting hedgerow/wildflower/perennial grass. 
