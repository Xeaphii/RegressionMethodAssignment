library(ggplot2)
data(mtcars)
summary(mtcars)
data<-mtcars

temp<-summary(lm(data=data,mpg~.-1))$coeff
temp[order(temp[,"Pr(>|t|)"]),]
ImprovedData<-mtcars[,c("mpg","am","qsec","wt")]
temp<-summary(lm(data=ImprovedData,mpg~.-1))$coeff
temp[order(temp[,"Pr(>|t|)"]),]

pairs(ImprovedData, panel = panel.smooth, main = "comparisons")

p <- ggplot(mtcars, aes(factor(am), mpg))
p + geom_boxplot() + geom_jitter()

colnames(mtcars)
summary(lm(data=mtcars,mpg~.))$coeff

