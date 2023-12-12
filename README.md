# Landmark-based estimates of genomic disparity

Genomic Landmarks: Codes in Unix environment to obtain chromosome assemblies, map UCEs on assemblies, index mapped assemblies and extract genomic landmark information. Key output files from these steps are .sam and .csv files including information on the number of UCEs mapped on each assembly, their identity, and their position on the chromosome assembly. 

Note: All chromosome assemblies used must be in the same strand ( +-/-+ )

MappedUCEs_Chromosome_clusters - R code steps to obtain clusters of chromosomes from different species that are most similiar based on their UCE compositions. All the other files are required by and produced by this piece of code and can be used to test this code.

MMDS plot of all chromosomes

![sample_mmds_plot](https://user-images.githubusercontent.com/16098482/181301687-176b81c8-ea7c-4b03-a810-751683723451.jpeg)

Zoomed in MMDS plot, zoomed to the suite of chromosomes chosen for test

![sample_chromosome_cluster_MMDSplot](https://user-images.githubusercontent.com/16098482/181301363-03041455-764e-4f92-899c-eed29fb443d7.jpeg)

HomologousUCEs_PCA.R - R code steps to extract homologous UCEs from a chosen chromosome cluster & PCA using UCE positions as genomic landmarks, see file description for more information

![Sample_PCA_homologous_UCEs_sizecorrected](https://user-images.githubusercontent.com/16098482/181301464-66cd01fd-6fea-4153-b5e6-f41b7b168e9a.jpeg)

UCedisparity_Morphodisparity.R - R code to generate pairwise distances between taxa using homologous UCEs on chromosomes, and preliminary steps to compare these pariwsie distances to pairwise disparity between taxa generated using phenotypic data (in our case skull shape derived using 3D geometric morphometrics)
