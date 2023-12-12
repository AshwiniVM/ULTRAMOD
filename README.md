# Landmark-based estimates of genomic disparity

Genomic Landmarks: Codes in Unix environment to obtain chromosome assemblies, map UCEs on assemblies, index mapped assemblies and extract genomic landmark information. Key output files from these steps are .sam and .csv files including information on the number of UCEs mapped on each assembly, their identity, and their position on the chromosome assembly. 

Note: All chromosome assemblies used must be in the same strand ( +-/-+ )

Inference of genomic disparity: R code to carryout Metric multidimensional scaling (mMDS) utulising identity of the UCEs mapped on chromosome assmeblies. The result would two axes of variation whose  values and plots can identify chromosome sets. Chromosome sets are clusters of chromosomes with highly similar positive mMDS values based on the UCEs they contain.

Inference of genomic disparity part B: R code to extract homologous UCEs from a chosen chromosome cluster & PCA using UCE positions as genomic landmarks, see file description for more information

![Sample_PCA_homologous_UCEs_sizecorrected](https://user-images.githubusercontent.com/16098482/181301464-66cd01fd-6fea-4153-b5e6-f41b7b168e9a.jpeg)

UCedisparity_Morphodisparity.R - R code to generate pairwise distances between taxa using homologous UCEs on chromosomes, and preliminary steps to compare these pariwsie distances to pairwise disparity between taxa generated using phenotypic data (in our case skull shape derived using 3D geometric morphometrics)
