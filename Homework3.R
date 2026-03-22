#R script for Exercise 3 - Geography 411

#Read the data file <3>
wdt <- read.csv("WorldDataTable.csv")
wdt[1:10,]
head(wdt, 10)

#Histograms <4>
hist(wdt$LifeExpectancy)
hist(wdt$GDPPerCapita)

#scatter plot <5>
plot(wdt$GDPPerCapita,wdt$LifeExpectancy)

#Pearson's correlation test <6>
r <- cor(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "pearson")
r

n <- length(wdt$GDPPerCapita)

t <- (r * sqrt(n-2)) / sqrt(1 - r^2) 
t

tcrit <- qt(p = 0.025, df = n-2, lower.tail = TRUE)
tcrit

cor.test(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "pearson")

#Spearman's correlation test <7>
rs <- cor(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "spearman")
rs

ts <- rs * sqrt(n-1) 
ts

tcrits <- qt(p = 0.025, df = n-1, lower.tail = TRUE)

cor.test(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "spearman")

#Labelled scatter plot <8>
plot(wdt$GDPPerCapita,wdt$LifeExpectancy, col = "white")
text(wdt$GDPPerCapita,wdt$LifeExpectancy, labels = wdt$Country, cex = 0.5)

#Upload to GitHub