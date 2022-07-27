# ULTRAMOD
Using comparative genomics to uncover the origins of phenotypic modularity in squamate reptiles

FIRST STEPS - a code file based in unix. Written to obtain chromosome assemblies and map Ultra Conserved Elements (UCEs) on them. The resultant files provide a list of .sam files with 
a list of UCEs mapped onto each chromosome with details on the mapped position and UCE sequence. A csv file provides details on the number of UCEs mapped onto each chromosome.

MappedUCEs_Chromosome_clusters - R code steps to obtain clusters of chromosomes from different species that are most similiar based on their UCE compositions. All the other files are required by and produced by this piece of code and can be used to test this code.


HomologousUCEs_PCA.R - R code steps to extract homologous UCEs from a chosen chromosome cluster & PCA using UCE positions as genomic landmarks, see file description for more information
