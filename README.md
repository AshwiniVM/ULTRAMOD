# Landmark-based estimates of genomic disparity

Genomic Landmarks: Codes in Unix environment to obtain chromosome assemblies, map UCEs on assemblies, index mapped assemblies and extract genomic landmark information. Key output files from these steps are .sam and .csv files including information on the number of UCEs mapped on each assembly, their identity, and their position on the chromosome assembly. 

Note: All chromosome assemblies used must be in the same strand ( +-/-+ )

Inference of genomic disparity: R code to carryout Metric multidimensional scaling (mMDS) utulising identity of the UCEs mapped on chromosome assmeblies. The result would two axes of variation whose  values and plots can identify chromosome sets. Chromosome sets are clusters of chromosomes with highly similar positive mMDS values based on the UCEs they contain.

Inference of genomic disparity part B: R code to extract homologous UCEs from a chosen chromosome cluster & PCA using UCE positions as genomic landmarks, see file description for more information

Gene_annotation_Jaccards_index: R code to estimate similiairites across chromosomes within chromosome sets in their protein-coding regions. Annotations obtained from Ensembl in the case of our study 

