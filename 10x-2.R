library(Seurat)
library(cli)
library(sctransform)
library(dplyr)
library(ggplot2)
library(SingleR)
library(celldex)
library(SingleCellExperiment)


countmat=Read10X("E:/workshop/GSM6329644_DMSO/" )
srobj  = CreateSeuratObject(countmat, min.cells = 3,min.features = 200,project = "10x" ) 
srobj[["MTpercent"]] =PercentageFeatureSet(srobj,pattern = "^MT-" )
#srobj=SCTransform(srobj,vars.to.regress = "MTpercent")
VlnPlot(srobj , features = c("nFeature_RNA" ,"MTpercent" ,"nCount_RNA"))
srobj=subset(srobj,subset = nFeature_RNA > 200 & nFeature_RNA<9000 & MTpercent <25)
dim(srobj) #23172  8575
srobj =NormalizeData(srobj)

srobj = FindVariableFeatures(srobj , selection.method = "vst" , nfeatures = 4500)

srobj = ScaleData(srobj , features = row.names(srobj))

srobj=RunPCA(srobj)
#srobj=RunTSNE(srobj,dims = 1:30)
srobj=RunUMAP(srobj,dims = 1:30)
srobj=FindNeighbors(srobj,dims = 1:30)
srobj=FindClusters(srobj,resolution = .5) #Number of communities: 11
DimPlot(srobj,label = T , reduction = "pca")
DimPlot(srobj,label = T , reduction = "tsne")
DimPlot(srobj,label = T , reduction = "umap")

markers=FindAllMarkers(srobj,min.pct=0.25, logfc.threshold= 1)
dim(markers)    #480   7
View(markers)
nrow(markers)
summary(markers$avg_log2FC)
min(markers$avg_log2FC)
min(markers$avg_log2FC[which(markers$avg_log2FC>0)])
markers[which(markers$avg_log2FC>=1),]
dim(markers[which(markers$avg_log2FC ==1),])
View(markers[which(markers$avg_log2FC>=1),]) 

#pdf(file = "d:/10x_FeaturePlot.pdf",title = "Singlecell Workshop L.B.B Summer 2023",width = 10)
#DoHeatmap(srobj , features = c("NEAT1","CD47"))
DoHeatmap(srobj , features = markers$gene[which(markers$cluster == 5)],)
FeaturePlot(srobj , features = markers$gene[which(markers$cluster == 5)])
VlnPlot (srobj , features = markers$gene[which(markers$cluster == 5)])
RidgePlot(srobj , features = markers$gene[which(markers$cluster == 5)])
head(srobj@meta.data)
View(markers)


#dev.off()

#####################

#####################
ClustersID = 0:8
Celltypes = c("Neurons","Epithelial_cells","Neurons","Neurons","Epithelial_cells","Endothelial_cells","Neurons","Neurons","Neurons")

#Merge
#Celltypes = c("Neurons","Epithelial_cells","Neurons","Neuroepithelial_cell","Neurons","Endothelial_cells","Endothelial_cells","Neurons","Neurons","b","c")


#Celltypes = c("Epithelial_cells","iPS_cells","iPS_cells","Epithelial_cells","Embryonic_stem_cells","MSC","Endothelial_cells","Epithelial_cells","Neurons")

names(Celltypes)=levels(srobj)
srobj=RenameIdents(obj=srobj, Celltypes)

DimPlot(srobj,reduction = "umap",label = T)
DimPlot(srobj,reduction = "umap",label = T,group.by = "Celltypes")

#https://panglaodb.se/markers.html?cell_type=%27all_cells%27
#http://xteam.xbio.top/
#https://azimuth.hubmapconsortium.org/

##########################

############################
Ref=celldex::HumanPrimaryCellAtlasData(ensembl = F)# OR other Databse
predLabs=SingleR(test=as.SingleCellExperiment(srobj),ref= Ref,labels =Ref$label.main  ) # Ref$label.main or Ref$label.fine

length(predLabs$labels) # number of Cells that can see by "srobj"
predLabs$scores
View(as.data.frame(table(predLabs$labels)))

srobj2=srobj
srobj2$Celltypes=predLabs$labels
DimPlot(srobj2,reduction = "umap",label = T)
DimPlot(srobj2,reduction = "umap",label = T,group.by = "Celltypes")# Base on The Single R prediction


dim(Ref)
View(Ref)
srobj
View(predLabs$scores)



###############
GetAssayData(subset(srobj,idents ="Endothelial_cells"),"counts")

x=GetAssayData(subset(srobj,idents = "Endothelial_cells"),"counts")
write.csv(x,file = "d:/Endothelial_cells-10x.csv")

dim(GetAssayData(srobj,"counts"))

