# SingleCellWorkshop

Single-cell analysis is a powerful technique used in biology and genomics to study individual cells at the molecular level. It allows researchers to gain insights into cellular heterogeneity, identify rare cell populations, and understand the molecular mechanisms underlying various biological processes. In single-cell analysis, various types of data inputs are used to characterize individual cells.</br> Here are some common data inputs in single-cell analysis: Gene Expression Data: This is the most common type of data used in single-cell analysis. </br>It involves measuring the levels of gene expression in individual cells.</br> Techniques like single-cell RNA sequencing (scRNA-seq) allow researchers to quantify the expression of thousands of genes in each cell, providing information about the cell's identity, function, and state. </br>Protein Expression Data: Single-cell proteomics is another approach that measures the expression levels of proteins within individual cells. This can provide insights into the functional state of cells that may not be fully captured by gene expression data.Epigenetic Data: Epigenetic modifications, such as DNA methylation and histone modifications, play a crucial role in regulating gene expression. Single-cell epigenetic analysis provides information about the epigenetic states of individual cells, contributing to our understanding of cellular diversity and development.Chromatin Accessibility Data: This type of data reveals the accessibility of different genomic regions to transcription factors and other regulatory molecules.</br>
It helps identify active regulatory elements and can be used to infer cell identity and functional states.Spatial Transcriptomics Data: Spatial transcriptomics techniques enable researchers to determine the gene expression profiles of cells while preserving their spatial context within tissues. </br>This helps in understanding cellular interactions and gradients within complex tissues.Cell Surface Marker Data: Flow cytometry and mass cytometry (CyTOF) are techniques that measure the expression of specific cell surface markers in individual cells. This is often used for characterizing immune cell populations.Metabolomic Data: Metabolomics studies the small molecules (metabolites) present within cells.</br> Single-cell metabolomics provides insights into cell metabolism and its variations among individual cells.Multi-Omics Integration: Integrating data from multiple omics techniques (e.g., transcriptomics, epigenomics, proteomics) allows for a more comprehensive understanding of cellular behavior and regulatory networks.</br> Temporal Data: Time-series single-cell analysis involves studying cells over a sequence of time points.</br> This helps in understanding dynamic processes such as cell differentiation and response to stimuli.Single-Cell Imaging: Single-cell imaging techniques, such as fluorescent microscopy and live-cell imaging, provide spatial and temporal information about cellular processes, localization of molecules, and cell morphology.These data inputs are often analyzed using bioinformatics and computational methods to identify cell types, infer cell trajectories, uncover gene regulatory networks, and gain insights into disease mechanisms. The choice of data inputs depends on the specific research question and the technologies available </br>
![image](https://github.com/Siamak-salimy/SingleCellWorkshop/assets/34867846/382e64d8-790c-4025-bef0-9b0923280007)

Linux Part :</br>
   step 1 : Download SRA </br>
   step 2 : SRA to Fastq </br>
   Step 3 : Add CB(Cell Barcode ) and UMI </br> 
   step 4 : Filter XQ</br> 
   step 5 : Trim Adaptor. </br> 
   step 6 : Trim Poly A Tail .</br> 
   step 7 : Bam to Fastq </br>
   step 8 : Align Using any aligner , such as ( STAR ).َ a refrence genom like HGR38 must be available to map reads .  </br>
   step 9 : Aligned Bam file ( Sorting ) </br>
   step 10: Sorting </br> 
   step 11: Tag Bam file </br>
   step 12: Add annotation /br>
   step 13: Repair Bad Sub </br>
    
R part : </br>
  Step 0 : Requiered Libraries :</br>  
                                  library(Seurat)</br>
                                  library(cli)</br>
                                  library(sctransform)</br>
                                  library(dplyr)</br>
                                  library(ggplot2)</br>
                                  library(SingleR)</br>
                                  library(celldex)</br>
                                  library(SingleCellExperiment)</br>
  Import Data:
  

  Read multiple Datatype ( 10x , etc ):  </br>
  Step 1 : Create Seurat Object </br>
  step 2 : Filtering Cell</br>
  step 3 : Normalized Data </br>
  step 4 : Find Variable Features </br>
  step 5 : Scale Data </br>
  step 6 : Linear Dimention Reduction . ( PCA ) </br>
  step 7 : Determine the Dimentiality - Jackstraw - Elbow Plot </br>
  step 8 : Clustering - Find neighbors .KNN clustering !!!! </br>
  step 9 : Nonlinear Dimension Reduction . tSNE,UMAP </br>
  step 10: Cell Markers : Find All markers  </br>
  step 11:Cluster Annotation </br>
  step 12:Cluster Correction </br>
  step 13:Cell Cycling</br>
  step 14:Count Matrix of each cell type . </br>
  step 15:Merge countmatrix</br>
  step 16:Prepare to run Analysis same as Bulk-Rna seq 


                                  
Dropseq VS 10X genomics ?</br> In contrast to Drop-seq, where solid beads are used for RNA capture, 10X uses soft hydrogels containing oligos. These enable “single Poisson loading” leading to capture of >60% of input cells.
 10x single cell assays typically capture some freely floating transcripts during the droplet-based capture process, resulting in a low level of background RNA counts referred to as ambient RNA.</br>
 A single-cell workshop typically focuses on the study and analysis of single cells, aiming to explore their properties, functions, and behaviors. This workshop delves into cutting-edge techniques, technologies, and methodologies used to isolate, manipulate, and analyze individual cells, allowing researchers to gain deeper insights into cellular heterogeneity, molecular dynamics, and cellular responses.

Throughout the workshop, participants may engage in hands-on sessions, discussions, and presentations covering various aspects of single-cell analysis, including but not limited to:

Experimental Techniques: Exploring various experimental approaches used to isolate and characterize single cells, such as microfluidics, imaging, sequencing, and omics technologies.

Data Analysis: Understanding computational tools and algorithms for interpreting and analyzing large-scale single-cell datasets, including methods for visualization, clustering, and identifying cellular subtypes.

Applications: Exploring the wide-ranging applications of single-cell analysis in different fields, including biology, medicine, developmental biology, immunology, and oncology.

Emerging Trends: Discussing the latest advancements, emerging technologies, and future directions in the field of single-cell analysis.
