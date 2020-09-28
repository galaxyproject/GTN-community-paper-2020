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

- 
- Open:
    - [`src/extract_repo_content_stats.ipynb` Notebook](http://localhost:8888/notebooks/src/extract_repo_content_stats.ipynb) to extract the details about the current resources in the Galaxy Training Material and some statistics
    - [`src/extract_github_info.ipynb` Notebook](http://localhost:8888/notebooks/src/extract_github_info.ipynb) to extract statistics and contributors picture from the GitHub repository
    - [`src/analyze_feedback.ipynb` Notebook](http://localhost:8888/notebooks/src/analyze_feedback.ipynb) to analyze the Google drive feedback (exported as tsv) that are embeded at the end of tutorials
