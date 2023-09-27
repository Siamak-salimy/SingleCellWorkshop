# SingleCellWorkshop
Linux Part :</br>
  Srr definition</br>
    Srr to Fastq file</br>
    Fastq to Bam file</br>
    Use Samtoolview to view Sam Files </br>
    Add CellID </br>
    Add CellBarcode </br>
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
  
Single-cell analysis is a powerful technique used in biology and genomics to study individual cells at the molecular level. It allows researchers to gain insights into cellular heterogeneity, identify rare cell populations, and understand the molecular mechanisms underlying various biological processes. In single-cell analysis, various types of data inputs are used to characterize individual cells. Here are some common data inputs in single-cell analysis:
Gene Expression Data: This is the most common type of data used in single-cell analysis. It involves measuring the levels of gene expression in individual cells. Techniques like single-cell RNA sequencing (scRNA-seq) allow researchers to quantify the expression of thousands of genes in each cell, providing information about the cell's identity, function, and state.
Protein Expression Data: Single-cell proteomics is another approach that measures the expression levels of proteins within individual cells. This can provide insights into the functional state of cells that may not be fully captured by gene expression data.Epigenetic Data: Epigenetic modifications, such as DNA methylation and histone modifications, play a crucial role in regulating gene expression. Single-cell epigenetic analysis provides information about the epigenetic states of individual cells, contributing to our understanding of cellular diversity and development.Chromatin Accessibility Data: This type of data reveals the accessibility of different genomic regions to transcription factors and other regulatory molecules. It helps identify active regulatory elements and can be used to infer cell identity and functional states.Spatial Transcriptomics Data: Spatial transcriptomics techniques enable researchers to determine the gene expression profiles of cells while preserving their spatial context within tissues. This helps in understanding cellular interactions and gradients within complex tissues.Cell Surface Marker Data: Flow cytometry and mass cytometry (CyTOF) are techniques that measure the expression of specific cell surface markers in individual cells. This is often used for characterizing immune cell populations.Metabolomic Data: Metabolomics studies the small molecules (metabolites) present within cells. Single-cell metabolomics provides insights into cell metabolism and its variations among individual cells.Multi-Omics Integration: Integrating data from multiple omics techniques (e.g., transcriptomics, epigenomics, proteomics) allows for a more comprehensive understanding of cellular behavior and regulatory networks.
Temporal Data: Time-series single-cell analysis involves studying cells over a sequence of time points. This helps in understanding dynamic processes such as cell differentiation and response to stimuli.Single-Cell Imaging: Single-cell imaging techniques, such as fluorescent microscopy and live-cell imaging, provide spatial and temporal information about cellular processes, localization of molecules, and cell morphology.These data inputs are often analyzed using bioinformatics and computational methods to identify cell types, infer cell trajectories, uncover gene regulatory networks, and gain insights into disease mechanisms. The choice of data inputs depends on the specific research question and the technologies available </br>
  Read multiple Datatype ( 10x , etc ):  </br>
  Step 1 : Create Seurat Object </br>
  step 2 : Filtering Cell</br>
  step 3 : Normalized Data </br>
  step 4 : Find Variable Features </br>
  step 5 : Scale Data </br>
  step 6 : Linear Dimention Reduction  ( PCA ) </br>
  step 7 : Determine the Dimentiality - Jackstraw - Elbow Plot </br>
  step 8 : Clustering - Find neighbors . </br>
  

                                  

