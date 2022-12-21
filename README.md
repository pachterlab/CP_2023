# The Specious Art of Single-Cell Genomics

Notebooks for reproducing all figures and analysis of single-cell datasets for the [paper](https://www.biorxiv.org/content/10.1101/2021.08.25.457696).

## Getting Started

Where possible, analysis notebooks (.ipynb) are provided that can be run from Google Colab. Colab links are included in every notebook. Just click on the [![Open In Collab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com) symbol.

An intro to using Colab can be found [here](https://colab.research.google.com). Briefly, run each code cell by selecting the cell and executing Command/Ctrl+Enter. Code cells can be edited by simply clicking on the cell to start typing.

All saved/processed data used for analysis is streamed to the notebooks from [CaltechData](https://data.caltech.edu/search?page=1&size=25&ln=en&q=specious&cal_author_name=Chari,%20Tara).

## Related Links

[Github for Picasso Package](https://github.com/pachterlab/picasso): Package for running the Picasso algorithm and quantitative analysis on embeddings/matrices.

[Github for MCML Package](https://github.com/pachterlab/MCML): Package for running the MCML algorithm and quantitative analysis on embeddings/matrices.


## Notebooks Directory Contents

1) **notebooks**
  Quantitative distortion/Picasso analysis notebooks from which Figures were generated for each dataset used.
  
    - DataDownloadsAndPreprocessing: <i>Code downloaded and pre-processing data matrices</i>
    
 
    - jaccardDistort: <i>Code for Jaccard distance calculations across datasets (including Picasso embeddings)</i>


    - cellRankAnalysis: <i>All analysis for cell type neighbor ranking analysis and MNIST analysis</i>
    
    
    - equidAnalysis: <i>Code for all equidistant cell analysis and visualizations</i>
    

    - umapTransformAnalysis: <i>Code for UMAP transformation on unseen data</i>

          
    - swissRoll: <i>Code for Swiss roll manifold embedding analysis</i>


    - picassoAnalysis: <i>All inter- and intra- distance correlation analyses for Picasso embeddings</i>



2) **scripts** 
  - Python scripts for Picasso and MCML algorithms and visualization functions.
  - Python scripts for quantitative analysis of inter-/intra-distances and KNN metrics.

3) **data**
  - Saved analyses outputs (csv).

4) **env**
  - Conda environments (yml) for MACOS and Linux. Replicates Colab environment.



