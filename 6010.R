install.packages("readxl")
install.packages("pROC")

getwd()
setwd('H://6010Project/')
library('readxl')
library('pROC')

deepSeqpanResult5 <-  read_excel('H:/6010Project/ALL-DATASET_5_Resultsv2.xlsx', sheet='5-DEEPSEQPAN')
deepSeqpanResult4 <-  read_excel('H:/6010Project/test-dataForDeepSeqPan/results/ALL1234output_withExceptionHandlingv3.xlsx', sheet='output4_withExceptionHandling')
deepSeqpanResult3 <-  read_excel('H:/6010Project/test-dataForDeepSeqPan/results/ALL1234output_withExceptionHandlingv3.xlsx', sheet='output3_withExceptionHandling')
deepSeqpanResult2 <-  read_excel('H:/6010Project/test-dataForDeepSeqPan/results/ALL1234output_withExceptionHandlingv3.xlsx', sheet='output2_sort-withExceptionHandl')
deepSeqpanResult1 <-  read_excel('H:/6010Project/test-dataForDeepSeqPan/results/ALL1234output_withExceptionHandlingv3.xlsx', sheet='output1_withExceptionHandling')

deepSeqpanResult1 
deepSeqpanResult2
deepSeqpanResult3
deepSeqpanResult4
deepSeqpanResult5

nrow(deepSeqpanResult1) #1203
nrow(deepSeqpanResult2) #303616
nrow(deepSeqpanResult3) #17195
nrow(deepSeqpanResult4) #12
nrow(deepSeqpanResult5) #15079

deepHLAResult5 <-  read_excel('H:/6010Project/ALL-DATASET_5_Resultsv2.xlsx', sheet='5-DEEPHLA')
deepHLAResult4 <-  read_excel('H:/6010Project/test-dataForDeepHLA/results/All1234-predictionresultsv3.xlsx', sheet='4-DEEPHLA-v1_predicted_result')
deepHLAResult3 <-  read_excel('H:/6010Project/test-dataForDeepHLA/results/All1234-predictionresultsv3.xlsx', sheet='3-DEEPHLA-v6_predicted_result')
deepHLAResult2 <-  read_excel('H:/6010Project/test-dataForDeepHLA/results/All1234-predictionresultsv3.xlsx', sheet='2-DEEPHLA-v1_sorted_predicted_r')
deepHLAResult1 <-  read_excel('H:/6010Project/test-dataForDeepHLA/results/All1234-predictionresultsv3.xlsx', sheet='1-DATA-DEEPHLA-v6_predicted_res')

deepHLAResult1  
deepHLAResult2 
deepHLAResult3  
deepHLAResult4  
deepHLAResult5

nrow(deepHLAResult1) #1203
nrow(deepHLAResult2) #303616
nrow(deepHLAResult3) #17195
nrow(deepHLAResult4) #12
nrow(deepHLAResult5) #15079

mhcflurryResult5 <-  read_excel('H:/6010Project/ALL-DATASET_5_Resultsv2.xlsx', sheet='5-MHCFLURRY')
mhcflurryResult4 <-  read_excel('H:/6010Project/test-dataForMHCFlurry/results/PredictionResult-MHCFLURRYv3.xlsx', sheet='Result-4-MHCFLURRY')
mhcflurryResult3 <-  read_excel('H:/6010Project/test-dataForMHCFlurry/results/PredictionResult-MHCFLURRYv3.xlsx', sheet='Result-3-MHCFLURRY-filtered')
mhcflurryResult2 <-  read_excel('H:/6010Project/test-dataForMHCFlurry/results/PredictionResult-MHCFLURRYv3.xlsx', sheet='Result-2-MHCFLURRY-filtered')
mhcflurryResult1 <-  read_excel('H:/6010Project/test-dataForMHCFlurry/results/PredictionResult-MHCFLURRYv3.xlsx', sheet='Result-1-MHCFLURRY-filtered')


mhcflurryResult1
mhcflurryResult2
mhcflurryResult3
mhcflurryResult4
mhcflurryResult5

nrow(mhcflurryResult1) #1203
nrow(mhcflurryResult2) #303616
nrow(mhcflurryResult3) #17195
nrow(mhcflurryResult4) #12
nrow(mhcflurryResult5) #15079


misResult5 <-  read_excel('H:/6010Project/ALL-DATASET_5_Resultsv2.xlsx', sheet='5-MiS')
misResult4 <-  read_excel('H:/6010Project/test-dataForMiS/results/ALL1234-DATA-MiSv3.xlsx', sheet='4-DEEPHLA.csvresult')
misResult3 <-  read_excel('H:/6010Project/test-dataForMiS/results/ALL1234-DATA-MiSv3.xlsx', sheet='3-DEEPHLA.csvresult')
misResult2 <-  read_excel('H:/6010Project/test-dataForMiS/results/ALL1234-DATA-MiSv3.xlsx', sheet='2-DeepHLA')
misResult1 <-  read_excel('H:/6010Project/test-dataForMiS/results/ALL1234-DATA-MiSv3.xlsx', sheet='1-DATA-DEEPHLA.csvresult')

misResult1
misResult2
misResult3
misResult4
misResult5

nrow(misResult1) #1251    1203
nrow(misResult2) #334927  303616
nrow(misResult3) #20338   17196
nrow(misResult4) #12
nrow(misResult5) #15079



#data(deepSeqpanResult1)
#View(deepSeqpanResult1)
#deepSeqpanResult1 <- deepSeqpanResult1[order(deepSeqpanResult1$MHC_type),]
#data(deepSeqpanResult1)
#View(deepSeqpanResult1)




# draw the ROCs with comparison of different predictors for diff datasets 
# mhcflurry uses the 1-log50000(binding affinity) to calcuate 0-1 continuous probabilties
# All cut-off values in confusion matrix in excels are 50%

dev.off()
par(mfrow=c(2,2))
#roc(deepSeqpanResult3$Annotation, deepSeqpanResult3$`Binary Binding Probability (0-1)`, plot=TRUE)
#roc(deepHLAResult3$Annotation, deepHLAResult3$`binding score`, plot=TRUE)
#roc(mhcflurryResult3$`Label-Immunogenic-positive-1...7`, mhcflurryResult3$processing_score, plot=TRUE)
#roc(misResult3$y_label, misResult3$y_pred, plot=TRUE)

#Dataset 3
#roc1 <- plot.roc(deepSeqpanResult3$Annotation, deepSeqpanResult3$`Binary Binding Probability (0-1)`, main="ROC comparison -Dataset 3", percent=TRUE, col= "red")
#roc2 <- lines.roc(deepHLAResult3$Annotation, deepHLAResult3$`binding score`, percent=TRUE, col="blue")
#roc3 <- lines.roc(mhcflurryResult3$`Label-Immunogenic-positive-1`, mhcflurryResult3$`1-Log50000(affinity)`, percent=TRUE, col="orange")
#roc4 <- lines.roc(misResult3$y_label, misResult3$y_pred, percent=TRUE, col="green")
#legend("topleft", legend=c("DeepSeqPan", "DeepHLA","MHCFlurry","MiS"), lty=1, lwd=2, cex=1, col=c("red", "blue","orange", "green"))
#auc(roc(misResult3$y_label, misResult3$y_pred))



#Dataset 1
d1roc1 <- roc(deepSeqpanResult1$`Label-immunopositive-1`, deepSeqpanResult1$`Binary Binding Probability (0-1)`)
d1roc2 <- roc(deepHLAResult1$Annotation, deepHLAResult1$`binding score`)
d1roc3 <- roc(mhcflurryResult1$Annotation, mhcflurryResult1$`1-Log50000(affinity)`)
d1roc4 <- roc(misResult1$y_label, misResult1$y_pred)


a1 <- auc(d1roc1)
b1 <- auc(d1roc2)
c1 <- auc(d1roc3)
d1 <- auc(d1roc4)
nrow(deepSeqpanResult1)
nrow(misResult1)


d1leg1 <- paste("DeepSeqPan, AUC=", round(a1,3), sep = " ")
d1leg2 <- paste("DeepHLA, AUC=", round(b1,3), sep = " ")
d1leg3 <- paste("MHCFlurry, AUC=", round(c1,3), sep = " ")
d1leg4 <- paste("MiS, AUC=", round(d1,3), sep = " ")

legDat1 <- c(d1leg1,d1leg2,d1leg3,d1leg4)

plot(d1roc1, main=paste("ROC comparison: Dataset 1 (Entries=",nrow(deepSeqpanResult1) ,")",sep=" "), percent=TRUE, col= "red")
lines(d1roc2, percent=TRUE, col="blue")
lines(d1roc3, percent=TRUE, col="orange")
lines(d1roc4, percent=TRUE, col="green")
legend("bottomright", legend=c(legDat1), lty=1, lwd=2, cex=1, col=c("red", "blue","orange", "green"))

are.paired(d1roc4, d1roc3)
are.paired(d1roc4, d1roc1)
are.paired(d1roc4, d1roc2)
roc.test(d1roc3, d1roc4, method=c("delong"), alternative ="two.sided", paired=TRUE)
roc.test(d1roc1, d1roc4, method=c("delong"), alternative ="two.sided", paired=TRUE)
roc.test(d1roc2, d1roc4, method=c("delong"), alternative ="two.sided", paired=TRUE)



#roc1 <- plot.roc(deepSeqpanResult1$`Label-immunopositive-1`, deepSeqpanResult1$`Binary Binding Probability (0-1)`, main="ROC comparison -Dataset 1", percent=TRUE, col= "red")
#roc2 <- lines.roc(deepHLAResult1$Annotation, deepHLAResult1$`binding score`, percent=TRUE, col="blue")
#roc3 <- lines.roc(mhcflurryResult1$Annotation, mhcflurryResult1$`1-Log50000(affinity)`, percent=TRUE, col="orange")
#roc4 <- lines.roc(misResult1$y_label, misResult1$y_pred, percent=TRUE, col="green")

#Dataset 2
#roc1 <- plot.roc(deepSeqpanResult2$Annotation, deepSeqpanResult2$`Binary Binding Probability (0-1)`, main="ROC comparison -Dataset 2", percent=TRUE, col= "red")
#roc2 <- lines.roc(deepHLAResult2$Annotation, deepHLAResult2$`binding score`, percent=TRUE, col="blue")
#roc3 <- lines.roc(mhcflurryResult2$Annotation, mhcflurryResult2$`1-Log50000(affinity)`, percent=TRUE, col="orange")
#roc4 <- lines.roc(misResult3$y_label, misResult3$y_pred, percent=TRUE, col="green")


#Dataset 2
d2roc1 <- roc(deepSeqpanResult2$Annotation, deepSeqpanResult2$`Binary Binding Probability (0-1)`)
d2roc2 <- roc(deepHLAResult2$Annotation, deepHLAResult2$`binding score`)
d2roc3 <- roc(mhcflurryResult2$Annotation, mhcflurryResult2$`1-Log50000(affinity)`)
d2roc4 <- roc(misResult2$y_label, misResult2$y_pred)

mhcflurryResult2$Annotation
mhcflurryResult2$`1-Log50000(affinity)`
misResult2$y_label
misResult2$y_pred
#View(mhcflurryResult2$Annotation)
#View(mhcflurryResult2$`1-Log50000(affinity)`)
#View(misResult2$y_label)
#View(misResult2$y_pred)

a2 <- auc(d2roc1)
b2 <- auc(d2roc2)
c2 <- auc(d2roc3)
d2 <- auc(d2roc4)

d2leg1 <- paste("DeepSeqPan, AUC=", round(a2,3), sep = " ")
d2leg2 <- paste("DeepHLA, AUC=", round(b2,3), sep = " ")
d2leg3 <- paste("MHCFlurry, AUC=", round(c2,3), sep = " ")
d2leg4 <- paste("MiS, AUC=", round(d2,3), sep = " ")

legDat2 <- c(d2leg1,d2leg2,d2leg3,d2leg4)

plot(d2roc1, main=paste("ROC comparison: Dataset 2 (Entries=",nrow(deepSeqpanResult2) ,")",sep=" "), percent=TRUE, col= "red")
lines(d2roc2, percent=TRUE, col="blue")
lines(d2roc3, percent=TRUE, col="orange")
lines(d2roc4, percent=TRUE, col="green")
legend("bottomright", legend=c(legDat2), lty=1, lwd=2, cex=1, col=c("red", "blue","orange", "green"))

are.paired(d2roc4, d2roc3)
are.paired(d2roc4, d2roc1)
are.paired(d2roc4, d2roc2)
roc.test(d2roc3, d2roc4, method=c("delong"), alternative ="two.sided", paired=TRUE)
roc.test(d2roc1, d2roc4, method=c("delong"), alternative ="two.sided", paired=FALSE)
roc.test(d2roc2, d2roc4, method=c("delong"), alternative ="two.sided", paired=TRUE)



#Dataset 3
d3roc1 <- roc(deepSeqpanResult3$Annotation, deepSeqpanResult3$`Binary Binding Probability (0-1)`)
d3roc2 <- roc(deepHLAResult3$Annotation, deepHLAResult3$`binding score`)
d3roc3 <- roc(mhcflurryResult3$`Label-Immunogenic-positive-1`, mhcflurryResult3$`1-Log50000(affinity)`)
d3roc4 <- roc(misResult3$y_label, misResult3$y_pred)


mhcflurryResult3$`Label-Immunogenic-positive-1`
mhcflurryResult3$`1-Log50000(affinity)`
misResult3$y_label
misResult3$y_pred
#View(mhcflurryResult3$`Label-Immunogenic-positive-1`)
#View(mhcflurryResult3$`1-Log50000(affinity)`)
#View(misResult3$y_label)
#View(misResult3$y_pred)

a3 <- auc(d3roc1)
b3 <- auc(d3roc2)
c3 <- auc(d3roc3)
d3 <- auc(d3roc4)

d3leg1 <- paste("DeepSeqPan, AUC=", round(a3,3), sep = " ")
d3leg2 <- paste("DeepHLA, AUC=", round(b3,3), sep = " ")
d3leg3 <- paste("MHCFlurry, AUC=", round(c3,3), sep = " ")
d3leg4 <- paste("MiS, AUC=", round(d3,3), sep = " ")

legDat3 <- c(d3leg1,d3leg2,d3leg3,d3leg4)

plot(d3roc1, main=paste("ROC comparison: Dataset 3 (Entries=",nrow(deepSeqpanResult3) ,")",sep=" "), percent=TRUE, col= "red")
lines(d3roc2, percent=TRUE, col="blue")
lines(d3roc3, percent=TRUE, col="orange")
lines(d3roc4, percent=TRUE, col="green")
legend("bottomright", legend=c(legDat3), lty=1, lwd=2, cex=1, col=c("red", "blue","orange", "green"))


are.paired(d3roc4, d3roc3)
are.paired(d3roc4, d3roc1)
are.paired(d3roc4, d3roc2)
roc.test(d3roc3, d3roc4, method=c("delong"), alternative ="two.sided", paired=TRUE)
roc.test(d3roc1, d3roc4, method=c("delong"), alternative ="two.sided", paired=TRUE)
roc.test(d3roc2, d3roc4, method=c("delong"), alternative ="two.sided", paired=TRUE)




#Dataset 5
d5roc1 <- roc(deepSeqpanResult5$Annotation, deepSeqpanResult5$`Binary Binding Probability (0-1)`)
d5roc2 <- roc(deepHLAResult5$Annotation, deepHLAResult5$`binding score`)
d5roc3 <- roc(mhcflurryResult5$Annotation, mhcflurryResult5$`1-Log50000(affinity)`)
d5roc4 <- roc(misResult5$y_label, misResult5$y_pred)

a5 <- auc(d5roc1)
b5 <- auc(d5roc2)
c5 <- auc(d5roc3)
d5 <- auc(d5roc4)

d5leg1 <- paste("DeepSeqPan, AUC=", round(a5,3), sep = " ")
d5leg2 <- paste("DeepHLA, AUC=", round(b5,3), sep = " ")
d5leg3 <- paste("MHCFlurry, AUC=", round(c5,3), sep = " ")
d5leg4 <- paste("MiS, AUC=", round(d5,3), sep = " ")

legDat5 <- c(d5leg1,d5leg2,d5leg3,d5leg4)

plot(d5roc1, main=paste("ROC comparison: Dataset 5 (Entries=",nrow(deepSeqpanResult5) ,")",sep=" "), percent=TRUE, col= "red")
lines(d5roc2, percent=TRUE, col="blue")
lines(d5roc3, percent=TRUE, col="orange")
lines(d5roc4, percent=TRUE, col="green")
legend("bottomright", legend=c(legDat5), lty=1, lwd=2, cex=1, col=c("red", "blue","orange", "green"))

are.paired(d5roc4, d5roc3)
are.paired(d5roc4, d5roc1)
are.paired(d5roc4, d5roc2)
roc.test(d5roc3, d5roc4, method=c("delong"), alternative ="two.sided", paired=TRUE)
roc.test(d5roc1, d5roc4, method=c("delong"), alternative ="two.sided", paired=TRUE)
roc.test(d5roc2, d5roc4, method=c("delong"), alternative ="two.sided", paired=TRUE)


# trying to plot the immunogenicity prediction vs binding for Mhcflurry vs binding
#Plot dataset 5 of MhcFlurry Binding Vs Presenstation Scores
dev.off()
par(mfrow=c(2,2))
d6roc1 <- roc(mhcflurryResult5$Annotation, mhcflurryResult5$`1-Log50000(affinity)`)
d6roc2 <- roc(mhcflurryResult5$Annotation, mhcflurryResult5$presentation_score)

a6 <- auc(d6roc1)
b6 <- auc(d6roc2)


d6leg1 <- paste("MHCFlurry(Log50000), AUC=", round(a6,3), sep = " ")
d6leg2 <- paste("MHCFlurry(presentation_score), AUC=", round(b6,3), sep = " ")

legDat6 <- c(d6leg1,d6leg2)

plot(d6roc1, main=paste("ROC comparison \nPres vs. Binding: Dataset 5 (Entries=",nrow(mhcflurryResult5) ,")",sep=" "), percent=TRUE, col= "red")
lines(d6roc1, percent=TRUE, col="blue")
lines(d6roc2, percent=TRUE, col="orange")
legend("bottomright", legend=c(legDat6), lty=1, lwd=2, cex=1, col=c("blue","orange"))


#Plot dataset 1 of MhcFlurry Binding Vs Presentation Scores
d7roc1 <- roc(mhcflurryResult1$Annotation, mhcflurryResult1$`1-Log50000(affinity)`)
d7roc2 <- roc(mhcflurryResult1$Annotation, mhcflurryResult1$presentation_score)

a7 <- auc(d7roc1)
b7 <- auc(d7roc2)


d7leg1 <- paste("MHCFlurry(Log50000), AUC=", round(a7,3), sep = " ")
d7leg2 <- paste("MHCFlurry(presentation_score), AUC=", round(b7,3), sep = " ")

legDat7 <- c(d7leg1,d7leg2)

plot(d7roc1, main=paste("ROC comparison \nPres vs. Binding: Dataset 1 (Entries=",nrow(mhcflurryResult1) ,")",sep=" "), percent=TRUE, col= "red")
lines(d7roc1, percent=TRUE, col="blue")
lines(d7roc2, percent=TRUE, col="orange")
legend("bottomright", legend=c(legDat7), lty=1, lwd=2, cex=1, col=c("blue","orange"))


#Plot dataset 2 of MhcFlurry Binding Vs Presenstation Scores
d8roc1 <- roc(mhcflurryResult2$Annotation, mhcflurryResult2$`1-Log50000(affinity)`)
d8roc2 <- roc(mhcflurryResult2$Annotation, mhcflurryResult2$presentation_score)

a8 <- auc(d8roc1)
b8 <- auc(d8roc2)


d8leg1 <- paste("MHCFlurry(Log50000), AUC=", round(a8,3), sep = " ")
d8leg2 <- paste("MHCFlurry(presentation_score), AUC=", round(b8,3), sep = " ")

legDat8 <- c(d8leg1,d8leg2)

plot(d8roc1, main=paste("ROC comparison \nPres vs. Binding: Dataset 1 (Entries=",nrow(mhcflurryResult2) ,")",sep=" "), percent=TRUE, col= "red")
lines(d8roc1, percent=TRUE, col="blue")
lines(d8roc2, percent=TRUE, col="orange")
legend("bottomright", legend=c(legDat8), lty=1, lwd=2, cex=1, col=c("blue","orange"))



#Plot dataset 3 of MhcFlurry Binding Vs Presenstation Scores.
d9roc1 <- roc(mhcflurryResult3$`Label-Immunogenic-positive-1`, mhcflurryResult3$`1-Log50000(affinity)`)
d9roc2 <- roc(mhcflurryResult3$`Label-Immunogenic-positive-1`, mhcflurryResult3$presentation_score)

a9 <- auc(d9roc1)
b9 <- auc(d9roc2)


d9leg1 <- paste("MHCFlurry(Log50000), AUC=", round(a9,3), sep = " ")
d9leg2 <- paste("MHCFlurry(presentation_score), AUC=", round(b9,3), sep = " ")

legDat9 <- c(d9leg1,d9leg2)

plot(d9roc1, main=paste("ROC comparison \nPres vs. Binding: Dataset 1 (Entries=",nrow(mhcflurryResult3) ,")",sep=" "), percent=TRUE, col= "red")
lines(d9roc1, percent=TRUE, col="blue")
lines(d9roc2, percent=TRUE, col="orange")
legend("bottomright", legend=c(legDat9), lty=1, lwd=2, cex=1, col=c("blue","orange"))





#Plot dataset 1,2,3, 5of deepHLA Binding Vs  binding filtered by immuno Scores.
dev.off()
par(mfrow=c(2,2))



d10roc1 <- roc(deepHLAResult1$Annotation, deepHLAResult1$`binding score`)
d10roc2 <- roc(deepHLAResult1$Annotation, deepHLAResult1$Combined)

a10 <- auc(d10roc1)
b10 <- auc(d10roc2)


d10leg1 <- paste("deepHLA(Binding Affinity)\n AUC=", round(a10,3), sep = " ")
d10leg2 <- paste("Filtered by immunogencity \n  score >0.5), AUC=", round(b10,3), sep = " ")

legDat10 <- c(d10leg1,d10leg2)

plot(d10roc1, main=paste("ROC comparison Binding vs combined:\n Dataset 1 (Entries=",nrow(deepHLAResult1) ,")",sep=" "), percent=TRUE, col= "red")
lines(d10roc1, percent=TRUE, col="blue")
lines(d10roc2, percent=TRUE, col="blue", lty=2)
legend("bottomright", legend=c(legDat10), lty=c(1,2), lwd=2, cex=1, col=c("blue","blue"))


#are.paired(d10roc1, d10roc2)
#auc(d10roc1)

#ci(d10roc1)
#ci(d10roc2)

#ci.auc(d10roc1)

#coords(d10roc1)
#cov(d10roc1, d10roc2)


roc.test(d10roc1, d10roc2, method=c("delong"), alternative ="two.sided", paired=TRUE)
#ggroc(d10roc1, legacy.axes = TRUE)
         










d11roc1 <- roc(deepHLAResult2$Annotation, deepHLAResult2$`binding score`)
d11roc2 <- roc(deepHLAResult2$Annotation, deepHLAResult2$Combined)

a11 <- auc(d11roc1)
b11 <- auc(d11roc2)


d11leg1 <- paste("deepHLA(Binding Affinity)\n AUC=", round(a11,3), sep = " ")
d11leg2 <- paste("Filtered by immunogencity \n  score >0.5), AUC=", round(b11,3), sep = " ")

legDat11 <- c(d11leg1,d11leg2)

plot(d11roc1, main=paste("ROC comparison Binding vs combined:\n Dataset 2 (Entries=",nrow(deepHLAResult2) ,")",sep=" "), percent=TRUE, col= "red")
lines(d11roc1, percent=TRUE, col="blue")
lines(d11roc2, percent=TRUE, col="blue", lty=2)
legend("bottomright", legend=c(legDat11), lty=c(1,2), lwd=2, cex=1, col=c("blue","blue"))





d12roc1 <- roc(deepHLAResult3$Annotation, deepHLAResult3$`binding score`)
d12roc2 <- roc(deepHLAResult3$Annotation, deepHLAResult3$Combined)

a12 <- auc(d12roc1)
b12 <- auc(d12roc2)


d12leg1 <- paste("deepHLA(Binding Affinity)\n AUC=", round(a12,3), sep = " ")
d12leg2 <- paste("Filtered by immunogencity \n  score >0.5), AUC=", round(b12,3), sep = " ")

legDat12 <- c(d12leg1,d12leg2)

plot(d12roc1, main=paste("ROC comparison Binding vs combined:\n Dataset 3 (Entries=",nrow(deepHLAResult3) ,")",sep=" "), percent=TRUE, col= "red")
lines(d12roc1, percent=TRUE, col="blue")
lines(d12roc2, percent=TRUE, col="blue", lty=2)
legend("bottomright", legend=c(legDat12), lty=c(1,2), lwd=2, cex=1, col=c("blue","blue"))



d13roc1 <- roc(deepHLAResult5$Annotation, deepHLAResult5$`binding score`)
d13roc2 <- roc(deepHLAResult5$Annotation, deepHLAResult5$Combined)

a13 <- auc(d13roc1)
b13 <- auc(d13roc2)


d13leg1 <- paste("deepHLA(Binding Affinity)\nAUC=", round(a13,3), sep = " ")
d13leg2 <- paste("Filtered by immunogencity \n  score >0.5), AUC=", round(b13,3), sep = " ")

legDat13 <- c(d13leg1,d13leg2)

plot(d13roc1, main=paste("ROC comparison Binding vs combined:\n Dataset 5 (Entries=",nrow(deepHLAResult5) ,")",sep=" "), percent=TRUE, col= "red")
lines(d13roc1, percent=TRUE, col="blue")
lines(d13roc2, percent=TRUE, col="blue", lty=2)
legend("bottomright", legend=c(legDat13), lty=c(1,2), lwd=2, cex=1, col=c("blue","blue"))



# Trying to random sample in dataset 2, to extract a sample of 150K, 15K, 1.5K. 0.15K,
# see if any potential discrepances in AUC by predictors
# 
install.packages("dplyr")                   # Install dplyr package
library("dplyr") 

dev.off()
par(mfrow=c(2,2))
sample_deepSeqpanResult21w <- sample_n(deepSeqpanResult2, 150000)
sample_deepHLAResult21w <- sample_n(deepHLAResult2, 150000)
sample_mhcflurryResult21w <- sample_n(mhcflurryResult2, 150000)
sample_misResult21w <- sample_n(misResult2,150000)


#Dataset 2 (Sample 100000)
d2roc1W <- roc(sample_deepSeqpanResult21w$Annotation, sample_deepSeqpanResult21w$`Binary Binding Probability (0-1)`)
d2roc2W <- roc(sample_deepHLAResult21w$Annotation, sample_deepHLAResult21w$`binding score`)
d2roc3W <- roc(sample_mhcflurryResult21w$Annotation, sample_mhcflurryResult21w$`1-Log50000(affinity)`)
d2roc4W <- roc(sample_misResult21w$y_label, sample_misResult21w$y_pred)

a2w <- auc(d2roc1W)
b2w <- auc(d2roc2W)
c2w <- auc(d2roc3W)
d2w <- auc(d2roc4W)

d2leg1w <- paste("DeepSeqPan, AUC=", round(a2w,3), sep = " ")
d2leg2w <- paste("DeepHLA, AUC=", round(b2w,3), sep = " ")
d2leg3w <- paste("MHCFlurry, AUC=", round(c2w,3), sep = " ")
d2leg4w <- paste("MiS, AUC=", round(d2w,3), sep = " ")

legDat2w <- c(d2leg1w,d2leg2w,d2leg3w,d2leg4w)

plot(d2roc1W, main=paste("ROC comparison: Dataset 3 (Samples=",nrow(sample_deepSeqpanResult21w) ,")",sep=" "), percent=TRUE, col= "red")
lines(d2roc2W, percent=TRUE, col="blue")
lines(d2roc3W, percent=TRUE, col="orange")
lines(d2roc4W, percent=TRUE, col="green")
legend("bottomright", legend=c(legDat2w), lty=1, lwd=2, cex=1, col=c("red", "blue","orange", "green"))





#DeepHLA: Trying to lookin the histogram of top 12 most frequent HLA type vs predictions in dataset 2,
#see if any discrepancies or biases driven by particular high frequent HLAtype for the given high hit rate

dev.off()
par(mfrow=c(3,2))

deepHLAResult2_sortedHLAA0201 <-deepHLAResult2[deepHLAResult2$HLA=='HLA-A02:01',]
nrow_HLAA0201 <- nrow(deepHLAResult2_sortedHLAA0201)
hist(deepHLAResult2_sortedHLAA0201$Annotation, main="Ground Truth: HLA-A02:01")
#View(deepHLAResult2_sortedHLAA0201)
hist(deepHLAResult2_sortedHLAA0201$`binding score`, main="Prediction: HLA-A02:01")
legend("topright", legend=paste("# of HLA-A02:01 =",nrow_HLAA0201, sep = " "))

deepHLAResult2Result2_sortedHLAB2705 <-deepHLAResult2[deepHLAResult2$HLA=='HLA-B27:05',]
nrow_HLAB2705 <- nrow(deepHLAResult2Result2_sortedHLAB2705)
hist(deepHLAResult2Result2_sortedHLAB2705$Annotation, main="Ground Truth: HLA-B27:05")
hist(deepHLAResult2Result2_sortedHLAB2705$`binding score`, main="Prediction: HLA-B*27:05")
legend("topright", legend=paste("# of HLA-B27:05 =",nrow_HLAB2705, sep = " "))

deepHLAResult2_sortedHLAB0702 <-deepHLAResult2[deepHLAResult2$HLA=='HLA-B07:02',]
nrow_HLAB0702 <- nrow(deepHLAResult2_sortedHLAB0702)
hist(deepHLAResult2_sortedHLAB0702$Annotation, main="Ground Truth: HLA-B07:025")
hist(deepHLAResult2_sortedHLAB0702$`binding score`, main="Prediction: HLA-B07:02")
legend("topright", legend=paste("# of HLA-B*07:02 =",nrow_HLAB0702 , sep = " "))


dev.off()
par(mfrow=c(3,2))


deepHLAResult2_sortedHLAB5701 <-deepHLAResult2[deepHLAResult2$HLA=='HLA-B57:01',]
nrow_HLAB5701 <- nrow(deepHLAResult2_sortedHLAB5701)
hist(deepHLAResult2_sortedHLAB5701$Annotation, main="Ground Truth: HLA-B57:01")
hist(deepHLAResult2_sortedHLAB5701$`binding score`, main="Prediction: HLA-B57:01")
legend("topright", legend=paste("# of HLA-B57:01 =",nrow_HLAB5701 , sep = " "))

deepHLAResult2_sortedHLAB1501 <-deepHLAResult2[deepHLAResult2$HLA=='HLA-B15:01',]
nrow_HLAB1501 <-nrow(deepHLAResult2_sortedHLAB1501)
hist(deepHLAResult2_sortedHLAB1501$Annotation, main="Ground Truth: HLA-B15:01")
hist(deepHLAResult2_sortedHLAB1501$`binding score`, main="Prediction: HLA-B15:01")
legend("topright", legend=paste("# of HLA-B15:01 =",nrow_HLAB1501 , sep = " "))


deepHLAResult2_sortedHLAA2902 <-deepHLAResult2[deepHLAResult2$HLA=='HLA-A29:02',]
nrow_HLAA2902 <-nrow(deepHLAResult2_sortedHLAA2902)
hist(deepHLAResult2_sortedHLAA2902$Annotation, main="Ground Truth: HLA-A29:02")
hist(deepHLAResult2_sortedHLAA2902$`binding score`, main="Prediction: HLA-A29:02")
legend("topright", legend=paste("# of HLA-A29:02 =",nrow_HLAA2902 , sep = " "))




#misResult2: Trying to lookin the histogram of top 12 most frequent HLA type vs predictions in dataset 2,
#see if any discrepancies or biases driven by particular high frequent HLAtype for the given high hit rate

dev.off()
par(mfrow=c(3,2))

misResult2_sortedHLAA0201 <-misResult2[misResult2$`HLA-Allele`=='HLA-A02:01',]
nrow_HLAA0201 <- nrow(misResult2_sortedHLAA0201)
hist(misResult2_sortedHLAA0201$y_label, main="Ground Truth: HLA-A02:01")
hist(misResult2_sortedHLAA0201$`pred_label( > cutoff_Pvalue=0.2)`, main="Prediction: HLA-A02:01")
legend("topright", legend=paste("# of HLA-A02:01 =",nrow_HLAA0201, sep = " "))

misResult2Result2_sortedHLAB2705 <-misResult2[misResult2$`HLA-Allele`=='HLA-B27:05',]
nrow_HLAB2705 <- nrow(misResult2Result2_sortedHLAB2705)
hist(misResult2Result2_sortedHLAB2705$y_label, main="Ground Truth: HLA-B27:05")
hist(misResult2Result2_sortedHLAB2705$`pred_label( > cutoff_Pvalue=0.2)`, main="Prediction: HLA-B*27:05")
legend("topright", legend=paste("# of HLA-B27:05 =",nrow_HLAB2705, sep = " "))

misResult2Result2_sortedHLAB0702 <-misResult2[misResult2$`HLA-Allele`=='HLA-B07:02',]
nrow_HLAB0702 <- nrow(misResult2Result2_sortedHLAB0702)
hist(misResult2Result2_sortedHLAB0702$y_label, main="Ground Truth: HLA-B07:025")
hist(misResult2Result2_sortedHLAB0702$`pred_label( > cutoff_Pvalue=0.2)`, main="Prediction: HLA-B07:02")
legend("topright", legend=paste("# of HLA-B*07:02 =",nrow_HLAB0702 , sep = " "))

dev.off()
par(mfrow=c(3,2))


misResult2_sortedHLAB5701 <- misResult2[misResult2$`HLA-Allele`=='HLA-B57:01',]
nrow_HLAB5701 <- nrow(misResult2_sortedHLAB5701)
hist(misResult2_sortedHLAB5701$y_label, main="Ground Truth: HLA-B57:01")
hist(misResult2_sortedHLAB5701$`pred_label( > cutoff_Pvalue=0.2)`, main="Prediction: HLA-B57:01")
legend("topright", legend=paste("# of HLA-B57:01 =",nrow_HLAB5701 , sep = " "))

misResult2Result2_sortedHLAB1501 <-misResult2[misResult2$`HLA-Allele`=='HLA-B15:01',]
nrow_HLAB1501 <-nrow(misResult2Result2_sortedHLAB1501)
hist(misResult2Result2_sortedHLAB1501$y_label, main="Ground Truth: HLA-B15:01")
hist(misResult2Result2_sortedHLAB1501$`pred_label( > cutoff_Pvalue=0.2)`, main="Prediction: HLA-B15:01")
legend("topright", legend=paste("# of HLA-B15:01 =",nrow_HLAB1501 , sep = " "))


misResult2Result2_sortedHLAA2902 <-misResult2[misResult2$`HLA-Allele`=='HLA-A29:02',]
nrow_HLAA2902 <-nrow(misResult2Result2_sortedHLAA2902)
hist(misResult2Result2_sortedHLAA2902$y_label, main="Ground Truth: HLA-A29:02")
hist(misResult2Result2_sortedHLAA2902$`pred_label( > cutoff_Pvalue=0.2)`, main="Prediction: HLA-A29:02")
legend("topright", legend=paste("# of HLA-A29:02 =",nrow_HLAA2902 , sep = " "))





#MHCFlurry: Trying to lookin the histogram of top 12 most frequent HLA type vs predictions in dataset 2,
#see if any discrepancies or biases driven by particular high frequent HLAtype for the given high hit rate

dev.off()
par(mfrow=c(3,2))

mhcflurryResult2_sortedHLAA0201 <-mhcflurryResult2[mhcflurryResult2$best_allele=='A*02:01',]
nrow_HLAA0201 <- nrow(mhcflurryResult2_sortedHLAA0201)
hist(mhcflurryResult2_sortedHLAA0201$Annotation, main="Ground Truth: HLA-A*02:01")
hist(mhcflurryResult2_sortedHLAA0201$`1-Log50000(affinity)`, main="Prediction: HLA-A*02:01")
legend("topright", legend=paste("# of HLA-A*02:01 =",nrow_HLAA0201, sep = " "))

mhcflurryResult2_sortedHLAB2705 <-mhcflurryResult2[mhcflurryResult2$best_allele=='B*27:05',]
nrow_HLAB2705 <- nrow(mhcflurryResult2_sortedHLAB2705)
hist(mhcflurryResult2_sortedHLAB2705$Annotation, main="Ground Truth: HLA-B*27:05")
hist(mhcflurryResult2_sortedHLAB2705$`1-Log50000(affinity)`, main="Prediction: HLA-B*27:05")
legend("topright", legend=paste("# of HLA-B*27:05 =",nrow_HLAB2705, sep = " "))

mhcflurryResult2_sortedHLAB0702 <-mhcflurryResult2[mhcflurryResult2$best_allele=='B*07:02',]
nrow_HLAB0702 <- nrow(mhcflurryResult2_sortedHLAB0702)
hist(mhcflurryResult2_sortedHLAB0702$Annotation, main="Ground Truth: HLA-B*07:025")
hist(mhcflurryResult2_sortedHLAB0702$`1-Log50000(affinity)`, main="Prediction: HLA-B*07:02")
legend("topright", legend=paste("# of HLA-B*07:02 =",nrow_HLAB0702 , sep = " "))

dev.off()
par(mfrow=c(3,2))

deepSeqpanResult2_sortedHLAB5701 <-deepSeqpanResult2[deepSeqpanResult2$Peptide=='HLA-B*57:01',]
nrow_HLAB5701 <- nrow(deepSeqpanResult2_sortedHLAB5701)
hist(deepSeqpanResult2_sortedHLAB5701$Annotation, main="Ground Truth: HLA-B*57:01")
hist(deepSeqpanResult2_sortedHLAB5701$`Binary Binding Probability (0-1)`, main="Prediction: HLA-B*57:01")
legend("topright", legend=paste("# of HLA-B*57:01 =",nrow_HLAB5701 , sep = " "))

deepSeqpanResult2_sortedHLAB1501 <-deepSeqpanResult2[deepSeqpanResult2$Peptide=='HLA-B*15:01',]
nrow_HLAB1501 <-nrow(deepSeqpanResult2_sortedHLAB1501)
hist(deepSeqpanResult2_sortedHLAB1501$Annotation, main="Ground Truth: HLA-B*15:01")
hist(deepSeqpanResult2_sortedHLAB1501$`Binary Binding Probability (0-1)`, main="Prediction: HLA-B*15:01")
legend("topright", legend=paste("# of HLA-B*15:01 =",nrow_HLAB1501 , sep = " "))


deepSeqpanResult2_sortedHLAA2902 <-deepSeqpanResult2[deepSeqpanResult2$Peptide=='HLA-A*29:02',]
nrow_HLAA2902 <-nrow(deepSeqpanResult2_sortedHLAA2902)
hist(deepSeqpanResult2_sortedHLAA2902$Annotation, main="Ground Truth: HLA-A*29:02")
hist(deepSeqpanResult2_sortedHLAA2902$`Binary Binding Probability (0-1)`, main="Prediction: HLA-A*29:02")
legend("topright", legend=paste("# of HLA-A*29:02 =",nrow_HLAA2902 , sep = " "))





#DeepSeqpan: Trying to lookin the histogram of top 12 most frequent HLA type vs predictions in dataset 2,
#see if any discrepancies or biases driven by particular high frequent HLAtype for the given high hit rate

dev.off()
par(mfrow=c(3,2))

deepSeqpanResult2_sortedHLAA0201 <-deepSeqpanResult2[deepSeqpanResult2$Peptide=='HLA-A*02:01',]
nrow_HLAA0201 <- nrow(deepSeqpanResult2_sortedHLAA0201)
hist(deepSeqpanResult2_sortedHLAA0201$Annotation, main="Ground Truth: HLA-A*02:01")
hist(deepSeqpanResult2_sortedHLAA0201$`Binary Binding Probability (0-1)`, main="Prediction: HLA-A*02:01")
legend("topright", legend=paste("# of HLA-A*02:01 =",nrow_HLAA0201, sep = " "))

deepSeqpanResult2_sortedHLAB2705 <-deepSeqpanResult2[deepSeqpanResult2$Peptide=='HLA-B*27:05',]
nrow_HLAB2705 <- nrow(deepSeqpanResult2_sortedHLAB2705)
hist(deepSeqpanResult2_sortedHLAB2705$Annotation, main="Ground Truth: HLA-B*27:05")
hist(deepSeqpanResult2_sortedHLAB2705$`Binary Binding Probability (0-1)`, main="Prediction: HLA-B*27:05")
legend("topright", legend=paste("# of HLA-B*27:05 =",nrow_HLAB2705, sep = " "))

deepSeqpanResult2_sortedHLAB0702 <-deepSeqpanResult2[deepSeqpanResult2$Peptide=='HLA-B*07:02',]
nrow_HLAB0702 <- nrow(deepSeqpanResult2_sortedHLAB0702)
hist(deepSeqpanResult2_sortedHLAB0702$Annotation, main="Ground Truth: HLA-B*07:025")
hist(deepSeqpanResult2_sortedHLAB0702$`Binary Binding Probability (0-1)`, main="Prediction: HLA-B*07:02")
legend("topright", legend=paste("# of HLA-B*07:02 =",nrow_HLAB0702 , sep = " "))

dev.off()
par(mfrow=c(3,2))

deepSeqpanResult2_sortedHLAB5701 <-deepSeqpanResult2[deepSeqpanResult2$Peptide=='HLA-B*57:01',]
nrow_HLAB5701 <- nrow(deepSeqpanResult2_sortedHLAB5701)
hist(deepSeqpanResult2_sortedHLAB5701$Annotation, main="Ground Truth: HLA-B*57:01")
hist(deepSeqpanResult2_sortedHLAB5701$`Binary Binding Probability (0-1)`, main="Prediction: HLA-B*57:01")
legend("topright", legend=paste("# of HLA-B*57:01 =",nrow_HLAB5701 , sep = " "))

deepSeqpanResult2_sortedHLAB1501 <-deepSeqpanResult2[deepSeqpanResult2$Peptide=='HLA-B*15:01',]
nrow_HLAB1501 <-nrow(deepSeqpanResult2_sortedHLAB1501)
hist(deepSeqpanResult2_sortedHLAB1501$Annotation, main="Ground Truth: HLA-B*15:01")
hist(deepSeqpanResult2_sortedHLAB1501$`Binary Binding Probability (0-1)`, main="Prediction: HLA-B*15:01")
legend("topright", legend=paste("# of HLA-B*15:01 =",nrow_HLAB1501 , sep = " "))


deepSeqpanResult2_sortedHLAA2902 <-deepSeqpanResult2[deepSeqpanResult2$Peptide=='HLA-A*29:02',]
nrow_HLAA2902 <-nrow(deepSeqpanResult2_sortedHLAA2902)
hist(deepSeqpanResult2_sortedHLAA2902$Annotation, main="Ground Truth: HLA-A*29:02")
hist(deepSeqpanResult2_sortedHLAA2902$`Binary Binding Probability (0-1)`, main="Prediction: HLA-A*29:02")
legend("topright", legend=paste("# of HLA-A*29:02 =",nrow_HLAA2902 , sep = " "))



dev.off()
par(mfrow=c(3,2))

deepSeqpanResult2_sortedHLAB4002 <-deepSeqpanResult2[deepSeqpanResult2$Peptide=='HLA-B*40:02',]
nrow_HLAB4002 <- nrow(deepSeqpanResult2_sortedHLAB4002)
hist(deepSeqpanResult2_sortedHLAB4002$Annotation, main="Ground Truth: HLA-B*40:02")
hist(deepSeqpanResult2_sortedHLAB4002$`Binary Binding Probability (0-1)`, main="Prediction: HLA-B*40:02")
legend("topright", legend=paste("# of HLA-B*40:02 =",nrow_HLAB4002 , sep = " "))

deepSeqpanResult2_sortedHLAA0301 <-deepSeqpanResult2[deepSeqpanResult2$Peptide=='HLA-A*03:01',]
nrow_HLAB0301 <-nrow(deepSeqpanResult2_sortedHLAA0301)
hist(deepSeqpanResult2_sortedHLAA0301$Annotation, main="Ground Truth: HLA-A*03:01")
hist(deepSeqpanResult2_sortedHLAA0301$`Binary Binding Probability (0-1)`, main="Prediction: HLA-A*03:01")
legend("topright", legend=paste("# of HLA-A*03:01 =",nrow_HLAB0301 , sep = " "))


deepSeqpanResult2_sortedHLAA2402 <-deepSeqpanResult2[deepSeqpanResult2$Peptide=='HLA-A*24:02',]
nrow_HLAA2402 <-nrow(deepSeqpanResult2_sortedHLAA2402)
hist(deepSeqpanResult2_sortedHLAA2402$Annotation, main="Ground Truth: HLA-A*24:02")
hist(deepSeqpanResult2_sortedHLAA2402$`Binary Binding Probability (0-1)`, main="Prediction: HLA-A*24:02")
legend("topright", legend=paste("# of HLA-A*24:02 =",nrow_HLAA2402 , sep = " "))


dev.off()
par(mfrow=c(3,2))


deepSeqpanResult2_sortedHLAA0101 <-deepSeqpanResult2[deepSeqpanResult2$Peptide=='HLA-A*01:01',]
nrow_HLAA0101 <- nrow(deepSeqpanResult2_sortedHLAA0101)
hist(deepSeqpanResult2_sortedHLAA0101$Annotation, main="Ground Truth: HLA-A*01:01")
hist(deepSeqpanResult2_sortedHLAA0101$`Binary Binding Probability (0-1)`, main="Prediction: HLA-A*01:01")
legend("topright", legend=paste("# of HLA-A*01:01 =",nrow_HLAA0101 , sep = " "))

deepSeqpanResult2_sortedHLAA1101 <-deepSeqpanResult2[deepSeqpanResult2$Peptide=='HLA-A*11:01',]
nrow_HLAA1101 <-nrow(deepSeqpanResult2_sortedHLAA1101)
hist(deepSeqpanResult2_sortedHLAA1101 $Annotation, main="Ground Truth: HLA-A*11:01")
hist(deepSeqpanResult2_sortedHLAA1101 $`Binary Binding Probability (0-1)`, main="Prediction: HLA-A*11:01")
legend("topright", legend=paste("# of HLA-A*11:01 =",nrow_HLAA1101  , sep = " "))


deepSeqpanResult2_sortedHLAB4402 <-deepSeqpanResult2[deepSeqpanResult2$Peptide=='HLA-B*44:02',]
nrow_HLAB4402 <-nrow(deepSeqpanResult2_sortedHLAB4402)
hist(deepSeqpanResult2_sortedHLAB4402$Annotation, main="Ground Truth: HLA-B*44:02")
hist(deepSeqpanResult2_sortedHLAB4402$`Binary Binding Probability (0-1)`, main="Prediction: HLA-B*44:02")
legend("topright", legend=paste("# of HLA-B*44:02 =",nrow_HLAB4402 , sep = " "))








#plot all prefictors ROCs in single plot(dataset 2)

dev.off()
roc1 <- roc(deepSeqpanResult3$Annotation, deepSeqpanResult3$`Binary Binding Probability (0-1)`)
roc2 <- roc(deepHLAResult3$Annotation, deepHLAResult3$`binding score`, print.auc = TRUE, col = "green", print.auc.y = .4, add = TRUE)
roc3 <- roc(mhcflurryResult3$`Label-Immunogenic-positive-1`,mhcflurryResult3$`1-Log50000(affinity)`, print.auc = TRUE, col = "orange", print.auc.y = .8, add = TRUE)
roc4 <- roc(misResult3$y_label, misResult3$`pred_label( > cutoff_Pvalue=0.2)`, print.auc = TRUE, col = "red", print.auc.y = .12, add = TRUE)


plot(x=weight, y=obese)
plot(roc1, col = "red", lty = 2, main = "ROC")
plot(roc2, col = "blue", lty = 3, add = TRUE)
plot(roc3, col = "yellow", lty = 4, add = TRUE)
plot(roc4, col = "green", lty = 5, add = TRUE)
auc(roc2)

#plot each predictor rocs with own plot space (dataset 3)
dev.off()
par(mfrow=c(2,2))
roc(deepSeqpanResult2$Annotation, deepSeqpanResult2$`Binary Binding Probability (0-1)`, plot=TRUE)
roc(deepHLAResult2$Annotation, deepHLAResult2$`binding score`, plot=TRUE)
roc(mhcflurryResult2$Annotation, mhcflurryResult2$`1-Log50000(affinity)`, plot=TRUE)
roc(misResult2$y_label, misResult2$y_pred, plot=TRUE)

#plot each predictor's probabilities distribution for data set 1
dev.off()
par(mfrow=c(2,2))
hist(deepSeqpanResult1$`Binary Binding Probability (0-1)`)
hist(deepHLAResult1$`binding score`)
hist(mhcflurryResult1$processing_score)
hist(misResult1$y_pred)

# this roc package shows Optimal point
install.packages("ROCit")
library(ROCit)
ROCit_obj <- rocit(score= misResult2$y_pred,class=misResult2$y_label,)
plot(ROCit_obj)
     

#roc.plot(deepSeqpanResult2$Annotation, deepSeqpanResult2$`Binary Binding Probability (0-1)`, thresholds = NULL, binormal =FALSE,   legend = FALSE, leg.text = NULL,  plot = "emp", CI = FALSE, n.boot = 1000, alpha = 0.05, tck = 0.01, plot.thres = seq(0.1, 0.9, 0.1), show.thres = TRUE, main = "ROC Curve", xlab = "False Alarm Rate",ylab = "Hit Rate", extra = FALSE,  ...)
#"roc.plot"(x, ...)
#subset(misResult1, misResult1$`HLA-Allele`='HLA-A1')

install.packages("ggplot2")
install.packages("plotROC")
library(plotROC)
library(ggplot2)
shiny_plotROC()

install.packages("ROCR")
library(ROCR)



