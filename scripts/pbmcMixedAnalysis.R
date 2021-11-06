library(Seurat)
library(SeuratData)
library(patchwork)
options(SeuratData.repo.use = "http://satijalab04.nygenome.org")

library(ifnb.SeuratData) #https://github.com/satijalab/seurat-data/issues/15
# install dataset
data("ifnb")

# split the dataset into a list of two seurat objects (stim and CTRL)
ifnb.list <- SplitObject(ifnb, split.by = "stim")

# normalize and identify variable features for each dataset independently
ifnb.list <- lapply(X = ifnb.list, FUN = function(x) {
  x <- NormalizeData(x)
  x <- FindVariableFeatures(x, selection.method = "vst", nfeatures = 2000)
})

# select features that are repeatedly variable across datasets for integration
features <- SelectIntegrationFeatures(object.list = ifnb.list)

immune.anchors <- FindIntegrationAnchors(object.list = ifnb.list, anchor.features = features)

# this command creates an 'integrated' data assay
immune.combined <- IntegrateData(anchorset = immune.anchors)


## Perform an integrated analysis

# specify that we will perform downstream analysis on the corrected data
# note that the original unmodified data still resides in the 'RNA' assay
DefaultAssay(immune.combined) <- "integrated"
# Run the standard workflow for visualization and clustering
immune.combined <- ScaleData(immune.combined, verbose = FALSE)
immune.combined <- RunPCA(immune.combined, npcs = 30, verbose = FALSE) #Choosing 30 pcs, then to 2D
immune.combined <- RunUMAP(immune.combined, reduction = "pca", dims = 1:30)
immune.combined <- FindNeighbors(immune.combined, reduction = "pca", dims = 1:30)
immune.combined <- FindClusters(immune.combined, resolution = 0.5)

# Visualization
p1 <- DimPlot(immune.combined, reduction = "umap", group.by = "stim")
p2 <- DimPlot(immune.combined, reduction = "umap", label = TRUE, repel = TRUE)
p1 + p2

# GetAssayData(object = immune.combined, slot = "data") --> log-norm combined
# GetAssayData(object = immune.combined, slot = "scale.data") --> scaled (SCT) combined
# Embeddings(object = immune.combined[['pca']]) --> pca to 30D
# Embeddings(object = immune.combined[['umap']]) --> umap to 2D

writeMM(GetAssayData(object = immune.combined, slot = "data"), '~/Desktop/logPBMC.mtx')
d = Matrix(GetAssayData(object = immune.combined, slot = "scale.data"), sparse = TRUE)
writeMM(d, '~/Desktop/scalePBMC.mtx')

d = Matrix(Embeddings(object = immune.combined[['pca']]), sparse = TRUE)
writeMM(d, '~/Desktop/pca30PBMC.mtx')


d = Matrix(Embeddings(object = immune.combined[['umap']]), sparse = TRUE)
writeMM(d, '~/Desktop/umapPBMC.mtx')

write.csv(immune.combined$stim, file='~/Desktop/stimLabsPBMC.csv')

