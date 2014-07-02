library("ggplot2")
library("reshape2")

##oases dn, oases raw,trinity dn, trinity raw
walltime=c(17.23, 91.9, 42.72, 61.6,11.67, 48.6, 15.13, 37.82)

time<-data.frame(Sample= c("DN","RAW","DN","RAW","DN","RAW","DN","RAW"), prog=c("occ oases","occ oases","occ trinity","occ trinity","ocu oases","ocu oases","ocu trinity","ocu trinity"), Values1 = walltime)
time.melt<-melt(time,id.vars=1:2)
p1<-ggplot(time.melt,aes(x=Sample,y=value),beside=True)+geom_bar(stat="identity")+facet_grid(~prog)+ylab("Total walltime (hrs)")+ggtitle("Walltime to complete assemblies")

memory=c(7835752,151617156,17424804,47004384,24497372,102261204,13073756,21334860)

memoryframe<-data.frame(Sample= c("DN","RAW","DN","RAW","DN","RAW","DN","RAW"), prog=c("occ oases","occ oases","occ trinity","occ trinity","ocu oases","ocu oases","ocu trinity","ocu trinity"), Values1 = memory/1000000)
memory.melt<-melt(memoryframe,id.vars=1:2)
p2<-ggplot(memory.melt,aes(x=Sample,y=value),beside=True)+geom_bar(stat="identity")+facet_grid(~prog)+ylab("Total memory used (GB)")+ggtitle("RAM needed to complete assemblies")

multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) {
  require(grid)

  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)

  numPlots = length(plots)

  # If layout is NULL, then use 'cols' to determine layout
  if (is.null(layout)) {
    # Make the panel
    # ncol: Number of columns of plots
    # nrow: Number of rows needed, calculated from # of cols
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                    ncol = cols, nrow = ceiling(numPlots/cols))
  }

 if (numPlots==1) {
    print(plots[[1]])

  } else {
    # Set up the page
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))

    # Make each plot, in the correct location
    for (i in 1:numPlots) {
      # Get the i,j matrix positions of the regions that contain this subplot
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))

      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                      layout.pos.col = matchidx$col))
    }
  }
}

multiplot(p1,p2, cols=2)