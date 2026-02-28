FROM continuumio/anaconda3:main
WORKDIR /app
COPY environment.yaml .
RUN conda install --channel=conda-forge -y jupyterhub-base=2.3.1
ENV PATH=/opt/conda/envs/myenv/bin:$PATH
