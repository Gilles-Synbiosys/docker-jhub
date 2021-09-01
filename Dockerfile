FROM jupyter/minimal-notebook:177037d09156
# Get the latest image tag at:
# https://hub.docker.com/r/jupyter/minimal-notebook/tags/
# Inspect the Dockerfile at:
# https://github.com/jupyter/docker-stacks/tree/HEAD/minimal-notebook/Dockerfile

# install additional package...

RUN pip install --upgrade pip
COPY . /opt/app
WORKDIR /opt/app
RUN pip install -r requirements.txt
