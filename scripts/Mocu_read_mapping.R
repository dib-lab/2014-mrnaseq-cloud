library("ggplot2")
library("reshape2")

##oases dn, oases raw,trinity dn, trinity raw
p_mapped=c(96.80,96.59,86.06,91.53,
           95.65,95.45,81.01,85.86,
           95.31,95.00,86.22,91.98)
p_mapped_frame<-data.frame(Sample= c("Trinity", "DN Trinity","Oases","DN Oases",
                                     "Trinity", "DN Trinity","Oases","DN Oases",
                                     "Trinity", "DN Trinity","Oases","DN Oases"),
                           prog=c("f+3","f+3","f+3","f+3",
                                  "f+4","f+4","f+4","f+4",
                                  "f+6","f+6","f+6","f+6"),
                           Values1 = p_mapped)
p_mapped.melt<-melt(p_mapped_frame,id.vars=1:2)
p_mapped.melt$Sample<-factor(p_mapped.melt$Sample, as.character(p_mapped.melt$Sample)) #fix bar ordering
ggplot(p_mapped.melt,aes(x=Sample,y=value,fill=Sample),beside=True)+
  coord_cartesian(ylim=c(45,100))+
  geom_bar(stat="identity")+facet_grid(. ~ prog)+ #show actual count and bin by treatment
  scale_fill_grey(start = .1, end = .8,name="Assembly method")+
  ylab("Reads Mapped (%)")+
  xlab("M. oculata hours post fertilization")+
  theme(axis.text.x = element_blank(),axis.ticks.x = element_blank(),
        text = element_text(size=24))+
  ggtitle("Percentage of reads mapped back to transcriptome")
