library("ggplot2")
library("reshape2")

##oases dn, oases raw,trinity dn, trinity raw
p_mapped=c(65.61,67.28,48.57,51.09,
           94.97,94.25,77.56,79.78,
           94.92,94.13,79.07,81.2,
           95.2,94.32,78.74,80.92,
           94.12,93.36,75.91,78.04)
p_mapped_frame<-data.frame(Sample= c("Trinity", "DN Trinity","Oases","DN Oases",
                                     "Trinity", "DN Trinity","Oases","DN Oases",
                                     "Trinity", "DN Trinity","Oases","DN Oases",
                                     "Trinity", "DN Trinity","Oases","DN Oases",
                                     "Trinity", "DN Trinity","Oases","DN Oases"),
                           prog=c("f+3","f+3","f+3","f+3",
                                  "f+3.2","f+3.2","f+3.2","f+3.2",
                                  "f+4","f+4","f+4","f+4",
                                  "f+5","f+5","f+5","f+5",
                                  "f+6","f+6","f+6","f+6"),
                           Values1 = p_mapped)
p_mapped.melt<-melt(p_mapped_frame,id.vars=1:2)
p_mapped.melt$Sample<-factor(p_mapped.melt$Sample, as.character(p_mapped.melt$Sample)) #fix bar ordering
ggplot(p_mapped.melt,aes(x=Sample,y=value,fill=Sample),beside=True)+
  geom_bar(stat="identity")+facet_grid(. ~ prog)+ #show actual count and bin by treatment
  coord_cartesian(ylim=c(45,100))+
  scale_fill_grey(start = .1, end = .8,name="Assembly method")+
  ylab("Reads Mapped (%)")+
  xlab("M. occulta hours post fertilization")+
  theme(axis.text.x = element_blank(),axis.ticks.x = element_blank(),
        text = element_text(size=24))+
  ggtitle("Percentage of reads mapped back to transcriptome")
