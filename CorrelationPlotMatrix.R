myPalette <- colorRampPalette(rev(brewer.pal(6, "Spectral")))

dat.cor=(round(cor(dat),digits=2))
cor.matrix<-dat.cor

cor.matrix[order(rownames(cor.matrix)),]->cor.matrix
cols<-colnames(cor.matrix)
cols<-sort(cols)



for (i in 2:length(cols)){
  column=cor.matrix[,cols[i]]
  print(column)
  for (n in 1:i-1){
    cor.matrix[,cols[i]][n]=NA
  }}





cor.matrix
cor.melt<-melt(cor.matrix)
cor.melt


cor.melt <- cor.melt[-which(is.na(cor.melt[, 3])),]

cor.melt
dat.cor<-data.frame(cor.melt)


dat.cor$X1 = with(dat.cor, factor(X1, levels = rev(levels(X1))))

qplot(x=X2,y=X1,data=dat.cor,fill=value,geom='tile')+theme(legend.position = c(0.9, 0.7),legend.justification = c(1, 0),legend.direction = "horizontal",panel.background=element_blank(),axis.text.x=element_text(angle=-90))+scale_fill_gradientn(name="Correlation Coefficient",colours = myPalette(100))+geom_text(aes(X2, X1, label = value), color = "#073642", size = 4)+guides(fill = guide_colorbar(barwidth = 7, barheight = 1, title.position = "top",
                                                                                                                                                                                                                                                                                                                                                                                                            title.hjust = 0.5)) +labs(x="",y="")