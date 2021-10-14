library(ggplot2)
cod<-read.csv("Table.csv")
cod$Date <- factor(cod$Date, levels=c("Late 1840s-1853", 
                                      "1856", 
                                      "1866-1878",
                                      "~1870s",
                                      "1870-1880",
                                      "1884",
                                      "1870-1899",
                                      "~1890s"))

ggplot(cod, aes(x=Date,y=NISP, fill=Taxon))+ 
  geom_bar(stat="identity")+
  xlab("Date")+
  ylab("NISP")+
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        panel.background = element_blank(), 
        axis.line = element_line(colour = "black"),
        strip.background = element_rect(colour="white", fill="white"),
        strip.text.x = element_text(colour = "black", size = 12),
        axis.text.x = element_text(face="bold", vjust=0.5, color="black", size=9),
        axis.text.y = element_text(vjust=0.5, color="black", size=12, face="bold"), 
        axis.title.y = element_text(vjust=1.0, color="black", size=14, face="bold"),
        axis.title.x = element_text(vjust=0.1, color="black", size=14, face="bold"),
        plot.title = element_text(hjust = 0.5),
        legend.position = "bottom",
        strip.text = element_text(size = 15))+
  scale_fill_grey()
# + the next line to the following script to save a .tiff figure
  ggsave("Figure6.tiff", width = 6.5, height = 4.5, units = "in")
