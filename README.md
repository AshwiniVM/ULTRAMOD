# Landmark-based estimates of genomic disparity

# Genomic Landmarks

Codes in Unix environment to obtain chromosome assemblies, map UCEs on assemblies, index mapped assemblies and extract genomic landmark information. Key output files from these steps are .sam and .csv files including information on the number of UCEs mapped on each assembly, their identity, and their position on the chromosome assembly. 

# Note

All chromosome assemblies used must be in the same strand ( +-/-+ )

# Inference of genomic disparity

R code to carryout Metric multidimensional scaling (mMDS) utulising identity of the UCEs mapped on chromosome assmeblies. The result would two axes of variation whose  values and plots can identify chromosome sets. Chromosome sets are clusters of chromosomes with highly similar positive mMDS values based on the UCEs they contain.

# Inference of genomic disparity part B

R code to extract homologous UCEs from a chosen chromosome cluster & PCA using UCE positions as genomic landmarks, see file description for more information

# Indel_inversion_simulations

Sample code used in Unix to simulate changes on existing chromosomes using the program SimuG. The same is carried out for different chromosomes, and 5 replicates for each simulation metric e.g. 1 inversion simulated 5 independent times labelled 1A, 1B, 1C, 1D, and 1E

# WGA_genomic_distance

Whole Genome alignment (WGA) and pairwise genomic distance calculation using sequence evolution i.e. mutations in aligned sequences using the pograms BioPython, DnaDiff, and Mummer. Here pairwise genetic distance is being calcualted between a chromosome and different versions of the same chromosome which have been simulated for indels and inversions. This was carried out in order to compare the metrics of pairwise genetic distance versus the genome disparity measure we obtain through our newly proposed pipleine which measures rearrangements within chromosomes

# Gene_annotation_Jaccards_index

R code to estimate similiairites across chromosomes within chromosome sets in their protein-coding regions. Annotations were obtained from Ensembl in the case of our study. 

