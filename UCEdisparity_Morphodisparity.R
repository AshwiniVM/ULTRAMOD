#####################Preliminarycomparative pipeline between morphological disparity and a disparity measure created using homologous UCE landmakrs on chromosomes####################################################################
#######################################################################################################################

library(ape)
library(ggplot2)
library(RColorBrewer)
setwd("C:/work_mac/PostDoc_MSCA/Github_ULTRAMOD/MMDS_PCA/")

UCEs <- read.csv("sample_presenceonlyUCEs_positionslisted_avgd_sizecorrected.csv", header = T, row.names = 1)
distance <- as.matrix(dist(UCEs))## Bootstrapping and rarefying
write.csv(distance, file="UCE_disparity_matrix.csv")

UCEs_nonsizecorr <- read.csv("sample_presenceonlyUCEs_positionslisted_avgd.csv", header = T, row.names = 1)
distance <- as.matrix(dist(UCEs_nonsizecorr))## Bootstrapping and rarefying
write.csv(distance, file="UCE_disparity_matrix_nonsizecorrected.csv")

###regression
UCEdisp <- as.data.frame(read.csv("UCE_disp.csv", row.name=1, header=T))
Phdisp <- as.data.frame(read.csv("disp_phenome.csv", row.name=1, header=T))

X <- as.matrix(UCEdisp)
Y <- as.matrix(Phdisp)
Y

#####A Mantel test to test correlation, this is commonly used to detect spatial structures#######
man1 <- mantel.test(X,Y)
man1


#####################################################################################################
#Further steps would include statistical tests for normality, and a suite of statistically modelling tests with other ecological correlates###################