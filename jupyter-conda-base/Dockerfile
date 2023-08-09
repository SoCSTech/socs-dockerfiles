# Based on https://hands-on.cloud/how-to-build-python-data-science-docker-container-based-on-anaconda/

FROM continuumio/anaconda3

LABEL "maintainer" = "Ollie Grooby"
LABEL "department" = "School of Computer Sciece" 
LABEL "version" = "0.0.1"

RUN apt-get update && apt-get install -y libgtk2.0-dev && \
    rm -rf /var/lib/apt/lists/*
RUN /opt/conda/bin/conda update -n base -c defaults conda && \
    /opt/conda/bin/conda install jupyter -y && \
    /opt/conda/bin/conda install numpy pandas scikit-learn matplotlib seaborn pyyaml h5py keras -y && \
    /opt/conda/bin/conda upgrade dask && \
    pip install tensorflow imutils
RUN ["mkdir", "notebooks"]

COPY run_jupyter.sh /

# Jupyter and Tensorboard ports
EXPOSE 8888 6006
# Store notebooks in this mounted directory
VOLUME /notebooks
CMD ["/run_jupyter.sh"]