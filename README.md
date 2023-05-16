# ULTRAMOD
Developing a new method to quantify spatial change in genomes

FIRST STEPS - a code file based in unix. Written to obtain chromosome assemblies and map Ultra Conserved Elements (UCEs) on them. The resultant files provide a list of .sam files with 
a list of UCEs mapped onto each chromosome with details on the mapped position and UCE sequence. A csv file provides details on the number of UCEs mapped onto each chromosome.

MappedUCEs_Chromosome_clusters - R code steps to obtain clusters of chromosomes from different species that are most similiar based on their UCE compositions. All the other files are required by and produced by this piece of code and can be used to test this code.

MMDS plot of all chromosomes

![sample_mmds_plot](https://user-images.githubusercontent.com/16098482/181301687-176b81c8-ea7c-4b03-a810-751683723451.jpeg)

Zoomed in MMDS plot, zoomed to the suite of chromosomes chosen for test

![sample_chromosome_cluster_MMDSplot](https://user-images.githubusercontent.com/16098482/181301363-03041455-764e-4f92-899c-eed29fb443d7.jpeg)

HomologousUCEs_PCA.R - R code steps to extract homologous UCEs from a chosen chromosome cluster & PCA using UCE positions as genomic landmarks, see file description for more information

![Sample_PCA_homologous_UCEs_sizecorrected](https://user-images.githubusercontent.com/16098482/181301464-66cd01fd-6fea-4153-b5e6-f41b7b168e9a.jpeg)

UCedisparity_Morphodisparity.R - R code to generate pairwise distances between taxa using homologous UCEs on chromosomes, and preliminary steps to compare these pariwsie distances to pairwise disparity between taxa generated using phenotypic data (in our case skull shape derived using 3D geometric morphometrics)
