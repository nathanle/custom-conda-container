#FROM continuumio/anaconda3:main
FROM jupyter/datascience-notebook
WORKDIR /app
COPY install.r install.r
#ARG UID=0
#ARG GID=0
#WORKDIR /
#RUN mkdir /.local
#RUN chown -R $UID:$GID /.local
#COPY environment.yaml .
#RUN conda install --channel=main -y jupyter_server=2.17.0
#RUN conda install --channel=conda-forge -y jupyterhub-base=2.3.1
#RUN conda install --channel=conda-forge -y jupyterhub-singleuser=5.4.3
#RUN conda install jupyter_lsp jupyter_server -y
#ENV PATH="/opt/conda/envs/myenv/bin:/opt/conda/bin:${PATH}"
#RUN conda install -y r::rstudio
#RUN conda install --channel=conda-forge -y jupyter-rsession-proxy
RUN pip install jupyter-server-proxy
#RUN jupyter serverextension enable --sys-prefix jupyter_server_proxy
RUN Rscript install.r
#RUN sudo apt-get install gdebi-core 
#RUN pip install jupyter-rsession-proxy
