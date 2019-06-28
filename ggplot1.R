# GGplot r practice.  

df <- mtcars
head(df)
dim(df)
str(df)

p <- ggplot(df,aes(x=wt,y=mpg))
p+geom_point()+
  theme_bw()