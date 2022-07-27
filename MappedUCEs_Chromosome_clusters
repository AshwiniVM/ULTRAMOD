#######NEXT STEPS IN R#############################
###################################################
####MMDS#####obtaining UCE positions#####PCA#######

library(ggplot2)
library(ggbio)
library(GenomicRanges)
library(reshape2)

#####INPUT A FILE WITH LIST OF CHROMOSOME ID IN ONE COLUMN AND ALL THE UCES MAPPED ONTO THAT CHROMOSOME ON THE OTHER COLUMN, SEE FILE 'SAMPLE_INPUT_PRES_ABS.CSV' COLUMN A: chromosomes, COLUMN B: uces##################################################
Input_pres_abs <- as.data.frame(read.csv("sample_input_pres_abs.csv", stringsAsFactors = F))
matrix <-dcast(Input_pres_abs, chromsomes ~ uces, length)
head(matrix)
write.csv(matrix, file = 'sample_pres_abs.csv')

########MMDS WITH PRESENCE ABSENCE MATRIX TO DETECT WHICH CHROMOSOMES FROM DIFFERENT TAXA CLUSTER TOGETHER ON TWO AXES OF VARIATION, THIS VARIATION IS BASD SOLELY ON UCE IDENTITIES MAPPED ONTO CHROMOSOMES######################################
######5126 is the number of UCEs listed in total in the presence absence matrix#########################################
X <- matrix[3:5126]
d <- dist(X)
head(d)
################## k is the number of dimensions we want to reduce our data to ##
fit <- cmdscale(d,eig=TRUE, k=2)
temp <-cbind(matrix[1],fit$points)
write.csv(temp, file = 'MMDS_sample.csv')
#######plotting MMDS results###
######## manually delete first column and change column names for axes variables to axis1 &  axis2 ##
data <- read.csv("MMDS_sample.csv", header =T, row.names = 1)
head(data)
sample_mmds_plot -> ggplot(data, aes(x=axis1, y=axis2)) +
  geom_point() +
  geom_text(size=4,label=rownames(data),check_overlap = F)
  

