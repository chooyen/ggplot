# GGplot r practice.  

df <- mtcars
head(df)
dim(df)
str(df)

p <- ggplot(df,aes(x=wt,y=mpg,color=factor(gear),size=cyl))
p+geom_point()+
  theme_bw()

p <- ggplot(df,aes(x=wt,y=mpg,color=factor(gear)))
p+geom_point()+
  facet_grid(.~factor(cyl))+
  theme_bw()

ggplot(df, aes(x= factor(gear),  group=factor(cyl))) + 
  geom_bar(aes(y = ..prop.., fill = factor(..x..)), stat="count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5) +
  labs(y = "Percent", fill="day") +
  facet_grid(~cyl) +
  scale_y_continuous(labels = scales::percent)

p <- ggplot(df,aes(x=wt,y=mpg,color=factor(gear)))
p+geom_point()+
  stat_smooth(method = "lm")+
  theme_bw()


p <- ggplot(df,aes(x=factor(gear),group=factor(cyl)))
p+geom_bar(aes(y=..prop..,fill=factor(..x..)),stat="count")+
  geom_text(aes(label=scales::percent(..prop..),
                y=..prop..),stat = "count",vjust=-0.5)+
  facet_grid(~cyl)+
  labs(title = "Type of Gears",
       subtitle = "by cylinder",
       x="gear",y="Percent")+
  scale_y_continuous(labels = scales::percent)+
  theme_bw()


# Plotting proportion in category

ggplot(df, aes(x= factor(gear),  group=factor(cyl))) + 
  geom_bar(aes(y = ..prop.., fill = factor(..x..)), stat="count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ),stat= "count", vjust = -.5) +
  labs(y = "Percent", fill="day") +
  facet_grid(~cyl) +
  scale_y_continuous(labels = scales::percent)


a <- ggplot(mpg,aes(hwy))
b <- ggplot(mpg,aes(x=fl,fill=factor(cyl)))

b+geom_bar(position = "stack")

f <- ggplot(mpg,aes(cty,hwy))

f+geom_rug(sides = "bl")

qplot(data=mpg, x=cty,fill=factor(cyl),col="black",geom = "histogram")
