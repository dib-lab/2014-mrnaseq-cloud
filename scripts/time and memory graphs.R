library("ggplot2")
library("reshape2")
install.packages('gridExtra')
library('gridExtra')
##oases dn, oases raw,trinity dn, trinity raw
#walltime=c(39.14, 122.4, 24.45, 38.6,18.76, 46.87, 9.2227, 26.44)
walltime=c(39.14, 122.4, 24.45, 38.6,18.76, 46.87, 14.54, 26.44)

time<-data.frame(Sample= c("DN","RAW","DN","RAW","DN","RAW","DN","RAW"),
                 prog=c("occ oases","occ oases","occ trinity","occ trinity","ocu oases","ocu oases","ocu trinity","ocu trinity"),
                 Values1 = walltime)
time.melt<-melt(time,id.vars=1:2)
p1<-ggplot(time.melt,aes(x=Sample,y=value),beside=True)+
  geom_bar(stat="identity",fill=c("grey41","black"))+
  facet_grid(~prog)+ylab("Total walltime (hrs)")+
  ggtitle("A Walltime to complete assemblies")

#memory=c(104547420,322767644,23165584,34135036,21811356,85016492,15648644,16801440)
memory=c(104547420,322767644,23165584,34135036,21811356,85016492,15648640,16801440)

memoryframe<-data.frame(Sample= c("DN","RAW","DN","RAW","DN","RAW","DN","RAW"),
                        prog=c("occ oases","occ oases","occ trinity","occ trinity","ocu oases","ocu oases","ocu trinity","ocu trinity"),
                        Values1 = memory/1000000)
memory.melt<-melt(memoryframe,id.vars=1:2)
p2<-ggplot(memory.melt,aes(x=Sample,y=value),beside=True)+
  geom_bar(stat="identity",fill=c("grey41","black"))+
  facet_grid(~prog)+ylab("Total memory used (GB)")+
  ggtitle("RAM needed to complete assemblies")

grid.arrange(p1, p2, ncol = 2)