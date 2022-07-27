###################next steps part 2######################################################################
##########################################################################################################

####This is after we choose a cluster of chromosomes based on the results from MMDS using UCE composition of chromosomes (to see chosen cluster , see plot 'sample_chromosome_cluster_MMDSplot.jpeg'####
####trim the presence absence matrix file to contain the chromosomes of interest only, the resultant trimmed file needs to transposed, this is saved as 'sample_exclusion_matrix.csv'

chr <- read.csv("sample_exclusion_matrix.csv")
chr_matchedUCEs <- apply(chr, 1, function(row) all(row !=0 ))
chr_clean <-chr[chr_matchedUCEs,]
chr_clean 
write.csv(chr_clean, file="sample_presenceonlyUCEs.csv")

##########################################read in all of the .tsv files after manually removing the last column that has just a few values (column 'p' onwards, some rows have stuff in these columns, info not necessary for our work)#################################
####.tsv files relabelled mapped_*.sam files after we run bwa and samtools in a linux system (see code 'FIRST STEPS' for more infomation########################################################################

Bos_taurus_2_CM008169.2 <-as.matrix(read.table("tsvs/mapped_CM008169.2.fasta.tsv.SAM", header=FALSE, sep ="\t"))
Capra_hircus_2_CM004563.1 <-as.matrix(read.table("tsvs/mapped_CM004563.1.fasta.tsv.sam", header=FALSE, sep ="\t"))
Ceratotherium_simum_9_CM038160.1 <-as.matrix(read.table("tsvs/mapped_CM038160.1.fasta.tsv.sam", header=FALSE, sep ="\t"))
Equus_caballus_18_CM009165.1 <-as.matrix(read.table("tsvs/mapped_CM009165.1.fasta.tsv.sam", header=FALSE, sep ="\t"))
Giraffa_tippelskirchi_3_CM018105.1 <-as.matrix(read.table("tsvs/mapped_CM018105.1.fasta.tsv.sam", header=FALSE, sep ="\t"))
Gorilla_gorilla_3_CM017849.1 <-as.matrix(read.table("tsvs/mapped_CM017849.1.fasta.tsv.sam", header=FALSE, sep ="\t"))
Mus_musculus_2_CM000995.3 <-as.matrix(read.table("tsvs/mapped_CM000995.3.fasta.tsv.sam", header=FALSE, sep ="\t"))
Panthera_tigris_C1_CM031438.1 <-as.matrix(read.table("tsvs/mapped_CM031438.1.fasta.tsv.sam", header=FALSE, sep ="\t"))
Sus_scrofa_15_CM000826.5 <-as.matrix(read.table("tsvs/mapped_CM000826.5.fasta.tsv.sam", header=FALSE, sep ="\t"))
Tursiops_truncatus_7_CM022280.1 <-as.matrix(read.table("tsvs/mapped_CM022280.1.fasta.tsv.sam", header=FALSE, sep ="\t"))


##################pick up positions of matching UCEs only and add more columns to that file########################################################################
####using .tsv and extracting just UCE IDs and positions and relabelling them###################
library(dplyr)
Bos_taurus_2_CM008169.2  <-as.data.frame(Bos_taurus_2_CM008169.2 )
Bos_taurus_2_CM008169.2  <- Bos_taurus_2_CM008169.2 [,c(1,4)]
Bos_taurus_2_CM008169.2 
colnames(Bos_taurus_2_CM008169.2 )[colnames(Bos_taurus_2_CM008169.2 ) == "V1"] <- "chromosomes"
colnames(Bos_taurus_2_CM008169.2 )[colnames(Bos_taurus_2_CM008169.2 ) == "V4"] <- "Bos_taurus_2"
homologousUCE_1 <- left_join(chr_clean, Bos_taurus_2_CM008169.2 , by = "chromosomes")
homologousUCE_1

Capra_hircus_2_CM004563.1 <-as.data.frame(Capra_hircus_2_CM004563.1)
Capra_hircus_2_CM004563.1 <- Capra_hircus_2_CM004563.1[ ,c(1,4)]
Capra_hircus_2_CM004563.1 
colnames(Capra_hircus_2_CM004563.1)[colnames(Capra_hircus_2_CM004563.1) == "V1"] <- "chromosomes"
colnames(Capra_hircus_2_CM004563.1)[colnames(Capra_hircus_2_CM004563.1) == "V4"] <- "Capra_hircus_2"
homologousUCE_2 <- left_join(homologousUCE_1,Capra_hircus_2_CM004563.1, by = "chromosomes")
homologousUCE_2

Ceratotherium_simum_9_CM038160.1 <-as.data.frame(Ceratotherium_simum_9_CM038160.1)
Ceratotherium_simum_9_CM038160.1 <- Ceratotherium_simum_9_CM038160.1[ ,c(1,4)]
Ceratotherium_simum_9_CM038160.1 
colnames(Ceratotherium_simum_9_CM038160.1)[colnames(Ceratotherium_simum_9_CM038160.1) == "V1"] <- "chromosomes"
colnames(Ceratotherium_simum_9_CM038160.1)[colnames(Ceratotherium_simum_9_CM038160.1) == "V4"] <- "Ceratotherium_simum_9"
homologousUCE_3 <- left_join(homologousUCE_2, Ceratotherium_simum_9_CM038160.1, by = "chromosomes")
homologousUCE_3

Equus_caballus_18_CM009165.1 <-as.data.frame(Equus_caballus_18_CM009165.1)
Equus_caballus_18_CM009165.1 <- Equus_caballus_18_CM009165.1[ ,c(1,4)]
Equus_caballus_18_CM009165.1
colnames(Equus_caballus_18_CM009165.1)[colnames(Equus_caballus_18_CM009165.1) == "V1"] <- "chromosomes"
colnames(Equus_caballus_18_CM009165.1)[colnames(Equus_caballus_18_CM009165.1) == "V4"] <- "Equus_caballus_18"
homologousUCE_4 <- left_join(homologousUCE_3,Equus_caballus_18_CM009165.1, by = "chromosomes")
homologousUCE_4

Giraffa_tippelskirchi_3_CM018105.1 <-as.data.frame(Giraffa_tippelskirchi_3_CM018105.1)
Giraffa_tippelskirchi_3_CM018105.1 <- Giraffa_tippelskirchi_3_CM018105.1[ ,c(1,4)]
Giraffa_tippelskirchi_3_CM018105.1 
colnames(Giraffa_tippelskirchi_3_CM018105.1)[colnames(Giraffa_tippelskirchi_3_CM018105.1) == "V1"] <- "chromosomes"
colnames(Giraffa_tippelskirchi_3_CM018105.1)[colnames(Giraffa_tippelskirchi_3_CM018105.1) == "V4"] <- "Giraffa_tippelskirchi_3"
homologousUCE_5 <- left_join(homologousUCE_4,Giraffa_tippelskirchi_3_CM018105.1, by = "chromosomes")
homologousUCE_5

Gorilla_gorilla_3_CM017849.1<-as.data.frame(Gorilla_gorilla_3_CM017849.1)
Gorilla_gorilla_3_CM017849.1<- Gorilla_gorilla_3_CM017849.1[ ,c(1,4)]
Gorilla_gorilla_3_CM017849.1
colnames(Gorilla_gorilla_3_CM017849.1)[colnames(Gorilla_gorilla_3_CM017849.1) == "V1"] <- "chromosomes"
colnames(Gorilla_gorilla_3_CM017849.1)[colnames(Gorilla_gorilla_3_CM017849.1) == "V4"] <- "Gorilla_gorilla_3"
homologousUCE_6 <- left_join(homologousUCE_5,Gorilla_gorilla_3_CM017849.1, by = "chromosomes")
homologousUCE_6

Mus_musculus_2_CM000995.3<-as.data.frame(Mus_musculus_2_CM000995.3)
Mus_musculus_2_CM000995.3<- Mus_musculus_2_CM000995.3[ ,c(1,4)]
Mus_musculus_2_CM000995.3
colnames(Mus_musculus_2_CM000995.3)[colnames(Mus_musculus_2_CM000995.3) == "V1"] <- "chromosomes"
colnames(Mus_musculus_2_CM000995.3)[colnames(Mus_musculus_2_CM000995.3) == "V4"] <- "Mus_musculus_2"
homologousUCE_7 <- left_join(homologousUCE_6,Mus_musculus_2_CM000995.3, by = "chromosomes")
homologousUCE_7

Panthera_tigris_C1_CM031438.1<-as.data.frame(Panthera_tigris_C1_CM031438.1)
Panthera_tigris_C1_CM031438.1<- Panthera_tigris_C1_CM031438.1[ ,c(1,4)]
Panthera_tigris_C1_CM031438.1
colnames(Panthera_tigris_C1_CM031438.1)[colnames(Panthera_tigris_C1_CM031438.1) == "V1"] <- "chromosomes"
colnames(Panthera_tigris_C1_CM031438.1)[colnames(Panthera_tigris_C1_CM031438.1) == "V4"] <- "Panthera_tigris_C1"
homologousUCE_8 <- left_join(homologousUCE_7,Panthera_tigris_C1_CM031438.1, by = "chromosomes")
homologousUCE_8

Sus_scrofa_15_CM000826.5<-as.data.frame(Sus_scrofa_15_CM000826.5)
Sus_scrofa_15_CM000826.5<- Sus_scrofa_15_CM000826.5[ ,c(1,4)]
Sus_scrofa_15_CM000826.5
colnames(Sus_scrofa_15_CM000826.5)[colnames(Sus_scrofa_15_CM000826.5) == "V1"] <- "chromosomes"
colnames(Sus_scrofa_15_CM000826.5)[colnames(Sus_scrofa_15_CM000826.5) == "V4"] <- "Sus_scrofa_15"
homologousUCE_9 <- left_join(homologousUCE_8,Sus_scrofa_15_CM000826.5, by = "chromosomes")
homologousUCE_9

Tursiops_truncatus_7_CM022280.1 <-as.data.frame(Tursiops_truncatus_7_CM022280.1 )
Tursiops_truncatus_7_CM022280.1 <- Tursiops_truncatus_7_CM022280.1 [ ,c(1,4)]
Tursiops_truncatus_7_CM022280.1 
colnames(Tursiops_truncatus_7_CM022280.1 )[colnames(Tursiops_truncatus_7_CM022280.1 ) == "V1"] <- "chromosomes"
colnames(Tursiops_truncatus_7_CM022280.1 )[colnames(Tursiops_truncatus_7_CM022280.1 ) == "V4"] <- "Tursiops_truncatus_7"
homologousUCE_10 <- left_join(homologousUCE_9,Tursiops_truncatus_7_CM022280.1 , by = "chromosomes")
homologousUCE_10



###write this file that has all common UCEs with their positions listed across the 10 sample taxa; then manually remove columns containing presence data (just 1s)

write.csv(homologousUCE_10, file = "sample_presenceonlyUCEs_positionslisted.csv")




#####this is the file in which I manually removed _p1, _p2 etc. from the UCE names and took average positions of identical UCEs after removing the ps, then I transpose the file

library(dplyr)
library(ade4)
library(factoextra)
library(magrittr)
df <- as.matrix.data.frame(read.csv("sample_presenceonlyUCEs_positionslisted_avgd.csv", row.names=1))
mypca <- prcomp(df)
summary(mypca)
scores = as.data.frame(mypca$x)
ggplot(data = scores, aes(x = PC1, y = PC2, label = rownames(scores))) +
  geom_hline(yintercept = 0, colour = "gray65") +
  geom_vline(xintercept = 0, colour = "gray65") +
  geom_point(aes(colour = rownames(scores))) +
  geom_text(colour = "black", alpha = 0.8, size = 2) +
  ggtitle("PCA plot of homologous UCE positions")

#write pca scores for species
write.csv(scores, file="sample_PCA_scores.csv")



#####size corrected distances PCA , divide all UCE positions by the size of the chromosome, information given in 'sample_chromosome_size.csv'
df <- read.csv("sample_presenceonlyUCEs_positionslisted_avgd_sizecorrected.csv", header = T, row.names = 1)
mypca <- prcomp(df)
summary(mypca)
scores = as.data.frame(mypca$x)
ggplot(data = scores, aes(x = PC1, y = PC2, label = rownames(scores))) +
  geom_hline(yintercept = 0, colour = "gray65") +
  geom_vline(xintercept = 0, colour = "gray65") +
  geom_point(aes(colour = rownames(scores))) +
  geom_text(colour = "black", alpha = 0.8, size = 2) +
  ggtitle("PCA plot of homologous UCE positions (chromosome size corrected)")

#write pca scores for species
write.csv(scores, file="sample_PCA_scores_sizecorrected.csv")
