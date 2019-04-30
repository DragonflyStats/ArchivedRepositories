
library(readr)
library(dplyr)
library(magrittr)
library(ggplot2)
Strides <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Accelerometers/master/Strides/Strides.csv")

Strides <- Strides %>% mutate(Treatment=factor(Treatment,levels=c("PRE","POST")))
boxplot(Lstride~Treatment,data=Strides)
boxplot(Rstride~Treatment,data=Strides)
t.test(Lstride ~ Treatment,data=Strides)
t.test(Rstride ~ Treatment,data=Strides)

p_L_density <-ggplot(data=Strides,aes(x=Lstride,col=Treatment)) + 
  geom_density(lwd=1.1) +
  geom_vline(xintercept=0.5,lwd=1.1) + 
  geom_hline(yintercept=0.0,lwd=1.1) + theme_bw() 
ggsave("LeftStride_density.jpg")

p_R_density <-ggplot(data=Strides,aes(x=Rstride,col=Treatment)) + 
  geom_density(lwd=1.1) +
  geom_vline(xintercept=0.5,lwd=1.1) + 
  geom_hline(yintercept=0.0,lwd=1.1) + theme_bw()
ggsave("RightStride_density.jpg")
p_L_ecdf <- ggplot(data=Strides,aes(x=Lstride,col=Treatment)) + 
  stat_ecdf(lwd=1.1) +
  geom_vline(xintercept=0.5,lwd=1.1) + 
  geom_hline(yintercept=0.0,lwd=1.1) + theme_bw()
ggsave("LeftStride_ecdf.jpg")

p_R_ecdf <- ggplot(data=Strides,aes(x=Rstride,col=Treatment)) + 
  stat_ecdf(lwd=1.1) +
  geom_vline(xintercept=0.5,lwd=1.1) + 
  geom_hline(yintercept=0.0,lwd=1.1) + theme_bw()
ggsave("RightStride_ecdf.jpg")

 ggplot(data=Strides,aes(y=Lstride,x=Treatment)) + 
  geom_violin(lwd=1.1) +
  geom_vline(xintercept=0.5,lwd=1.1) + 
  geom_hline(yintercept=0.0,lwd=1.1) + theme_bw()

library(WVPlots)
 p_L_boxplot <- WVPlots::ScatterBoxPlot(Strides, "Treatment", "Lstride", 
                        pt_alpha=0.35, title="Left Foot Stride") + 
       coord_flip() + theme_bw()
 ggsave("LeftStride_boxplot.jpg")
 
 p_R_boxplot <- WVPlots::ScatterBoxPlot(Strides, "Treatment", "Rstride", 
                                        pt_alpha=0.35, title="Right Foot Stride") + 
   coord_flip() + theme_bw()
 ggsave("RightStride_boxplot.jpg")
 
getwd()
