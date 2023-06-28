mydata <- read.csv("examscore2.csv")
mydata

head(mydata)

mydata$highlow <- 
  ifelse(mydata$midterm + mydata$final < 150 , "low", "high")

head(mydata)

library(ggplot2)

p <- ggplot(data = mydata)+
  theme_bw()
p <- p +
  geom_point(aes(x=midterm, y=final)) +
  labs(title = "학생들 성적 분포도",
       subtitle = "중간 vs. 기말 성적",
       x="중간고사",
       y="기말고사")
p

