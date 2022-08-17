#####################Preliminarycomparative pipeline between morphological disparity and a disparity measure created using homologous UCE landmarks on chromosomes####################################################################
library(ape)

###generating pairwise distance between taxa using UCE landmarks corrected for chromosome size (UCE disparity measure)
UCEs <- read.csv("sample_presenceonlyUCEs_positionslisted_avgd_sizecorrected.csv", header = T, row.names = 1)
distance <- as.matrix(dist(UCEs))
write.csv(distance, file="UCE_disparity_matrix.csv")

###generating pairwise distance between taxa  using UCE landmarks not corrected for chromosome size (UCE disparity measure)
UCEs_nonsizecorr <- read.csv("sample_presenceonlyUCEs_positionslisted_avgd.csv", header = T, row.names = 1)
distance <- as.matrix(dist(UCEs_nonsizecorr))
write.csv(distance, file="UCE_disparity_matrix_nonsizecorrected.csv")

###data type conversions
UCEdisp <- as.data.frame(read.csv("UCE_disparity_matrix.csv", row.name=1, header=T))
Geomdisp <- as.data.frame(read.csv("disp_phenome.csv", row.name=1, header=T))

###Further steps would include statistical tests for normality, and a suite of statistical models to test correlations
