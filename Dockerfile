FROM continuumio/anaconda3:main
ARG UID=1000
ARG GID=1000
WORKDIR /
RUN mkdir /.local
RUN chown -R $UID:$GID /.local
COPY environment.yaml .
RUN conda install --channel=conda-forge -y jupyterhub-base=2.3.1
ENV PATH="/opt/conda/envs/myenv/bin:/opt/conda/bin:${PATH}"
