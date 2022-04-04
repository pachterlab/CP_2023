# Distortion of Single-Cell Data in Two-Dimensional Embeddings

Notebooks for reproducing all 2D distortion/Picasso figures and analysis of single-cell datasets.

## Getting Started

Where possible, analysis notebooks (.ipynb) are provided that can be run from Google Colab. Colab links are included in every notebook. Just click on the [![Open In Collab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com) symbol.

An intro to using Colab can be found [here](https://colab.research.google.com). Briefly, run each code cell by selecting the cell and executing Command/Ctrl+Enter. Code cells can be edited by simply clicking on the cell to start typing.

All saved/processed data used for analysis is streamed to the notebooks from [CaltechData](https://data.caltech.edu/search?page=1&size=25&ln=en&q=specious&cal_author_name=Chari,%20Tara).

## Related Links

[Github for Picasso Package](https://github.com/pachterlab/picasso): Package for running the Picasso algorithm and quantitative analysis on embeddings/matrices.


## Notebooks Directory Contents

1) **notebooks**
  Quantitative distortion/Picasso analysis notebooks from which Figures were generated for each dataset used.
  
    - DataDownloadsAndPreprocessing: <i>Code downloaded and pre-processing data matrices</i>
    
    - fig1a_b: <i>Code for Fig. 1a,b and corresponding Supp. Fig. 8</i>

    - fig1c_d: <i>Code for Fig. 1c,d and corresponding Supp. Fig. 9</i>

    - fig1e_g: <i>Code for Fig. 1e-g</i>

    - equidAnalysis: <i>Code for all equidistant cell analysis and visualizations</i>
    
        equidistCellsVis.ipynb: <i>Supp. Fig. 1,2,4,5</i>
        
        allEquidistDistortions.ipynb: <i>Supp. Fig. 3,7</i>

    - jaccardDistort: <i>Code for Jaccard distance calculations across datasets (including Picasso embeddings)</i>
        
        <i>Supp. Fig. 6</i>

    - picassoAnalysis: <i>All inter- and intra- distance correlation analyses for Picasso embeddings</i>
    
        <i>Supp. Fig. 14,15</i>

    - suppCellRankAnalysis: <i>All analysis for (supplemental) cell type neighbor ranking analysis and MNIST analysis</i>
    
        <i>Supp. Fig. 10,11</i>

    - umapTransformAnalysis: <i>Code for UMAP transformation on unseen data</i>
    
        merfish.ipynb: <i>Supp. Fig. 12</i>
          
    - swissRoll: <i>Code for Swiss roll manifold embedding analysis</i>
    
        <i>Supp. Fig. 16-19</i>


2) **scripts** 
  - Python scripts for Picasso algorithm and visualization functions.
  - Python scripts for quantitative analysis of inter-/intra-distances and KNN metrics.

3) **data**
  - Saved analyses outputs (csv).

4) **env**
  - Conda environments (yml) for MACOS and Linux. Replicates Colab environment.



