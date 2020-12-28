# GTN community paper 2020

## Paper itself

It is available on Overleaf, changes should be made there (for now at least).

### Requirements

- latexmk

### Usage

- Build the paper locally (sources in `paper` folder):

```
$ make build-paper
```

- Clean up (i.e. remove) all nonessential files, except dvi, ps and pdf files:

```
$ make clean-paper
```

## Generation of graphs for the paper

4 Jupyter Notebooks have been used to generate the graphs for the paper:

- [One to extract the details about the current resources in the Galaxy Training Material and some statistics](src/extract_repo_content_stats.ipynb) 
- [One to analyze the results of embeded feedback forms at the end of tutorials](src/analyze_feedback.ipynb)
- [One to extract and plot the TIaaS stats](src/plot_tiaas_data.ipynb)
- [One to analyze the Google Analytics stats of Galaxy Training Material website](src/analyze_google_analytics.ipynb)
    

### Requirements

- Install [conda](https://conda.io/miniconda.html)

    ```
    $ make install-conda
    ```


- Create the conda environment

    ```
    $ make create-env
    ```

- Generate a Personal access token on GitHub (Settings - Developer settings - Personal access token ) and copy it to [`config.yaml` file](config.yaml)

### Usage

- Launch [Jupyter](https://jupyter.org/) to access the notebooks to generate graphs

    ```
    $ make run-jupyter
    ```

- Go to [http://localhost:8888](http://localhost:8888) (a page should open automatically in your browser)
- Open:
    - [`src/extract_repo_content_stats.ipynb` Notebook](http://localhost:8888/notebooks/src/extract_repo_content_stats.ipynb) to extract the details about the current resources in the Galaxy Training Material and some statistics
    - [`src/analyze_feedback.ipynb` Notebook](http://localhost:8888/notebooks/src/analyze_feedback.ipynb) to analyze the results of embeded feedback forms at the end of tutorials
    - [`src/plot_tiaas_data.ipynb` Notebook](http://localhost:8888/notebooks/src/plot_tiaas_data.ipynb) to extract and plot the TIaaS stats
    - [`src/analyze_google_analytics.ipynb` Notebook](http://localhost:8888/notebooks/src/analyze_google_analytics.ipynb) to analyze the Google Analytics stats of Galaxy Training Material website