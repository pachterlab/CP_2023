# The Specious Art of Single-Cell Genomics

Notebooks for reproducing all figures and analysis of single-cell datasets for the "The Specious Art of Single-Cell Genomics" paper .

## Getting Started

Where possible, analysis notebooks (.ipynb) are provided that can be run from Google Colab. Colab links are included in every notebook. Just click on the [![Open In Collab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com) symbol.

An intro to using Colab can be found [here](https://colab.research.google.com). Briefly, run each code cell by selecting the cell and executing Command/Ctrl+Enter. Code cells can be edited by simply clicking on the cell to start typing.

All saved/processed data used for analysis is streamed to the notebooks from [CaltechData](https://data.caltech.edu/search?page=1&size=25&ln=en&q=specious&cal_author_name=Chari,%20Tara).

## Related Links

[Github for Picasso Package](https://github.com/pachterlab/picasso): Package for running the Picasso algorithm and quantitative analysis on embeddings/matrices.

[Github for MCML Package](https://github.com/pachterlab/MCML): Package for running the MCML algorithm and quantitative analysis on embeddings/matrices.


## Notebooks Directory Contents

1) **notebooks**
  Quantitative distortion analysis notebooks from which Figures were generated for each dataset used.
  Notebook directories listed below for the corresponding Figure plots.
  
    * Figure 2: `jaccardDistort_Fig2a`, `combinedFigurePlots_Figs2a_4a_7`, `cellRankAnalysis_Figs2b_4b`, `equidAnalysis_Fig2c`
    * Figure 3: `uteroMixingAnalysis_Fig3a`, `scanoCompMixingAnalysis_Fig3b`
    * Figure 4: `celltypePred_Fig4a`, `combinedFigurePlots_Figs2a_4a_7`, `cellRankAnalysis_Figs2b_4b`
    * Figure 5: `densityAnalysis_Fig5`
    * Figure 6: `trajInference_Fig6`
    * Figure 7: `picassoAnalysis_Fig7`, `combinedFigurePlots_Figs2a_4a_7`
    * Figure 8: `metricContrastAnalysis_Fig8`
      
  
      --- Supplementary Figures ---
    * Figure A,B: `jaccardDistort_Fig2a`
    * Figure C-E,N-Q: `cellRankAnalysis_Figs2b_4b`
    * Figure F-H: `equidAnalysis_Fig2c`
    * Figure J,K: `uteroMixingAnalysis_Fig3a`, `scanoCompMixingAnalysis_Fig3b`
    * Figure L: `umapTransformAnalysis`
    * Figure M: `celltypePred_Fig4a`, `combinedFigurePlots_Figs2a_4a_7`
    * Figure R,S: `densityAnalysis_Fig5`
    * Figure T: `trajInference_Fig6`
    * Figre U,V: `swissRoll`
    * Figure W,X: `picassoAnalysis_Fig7`
    * Figure Y,Z: `celltypePredMCML`
    * Figure ZA : `bMCML`



3) **scripts** 
    * Python scripts for Picasso and MCML algorithms and visualization functions.
    * Python scripts for quantitative analysis of inter-/intra-distances and KNN metrics.
    * R script for plots of PCA of equidistant points (Figure I in Supplement)

3) **data**
    * Saved analyses outputs (csv).

4) **env**
    * Conda environments (yml) for MACOS and Linux. Replicates Colab environment.



