# base image to build from, offical python image from docker
FROM python:3.13.11-slim

# set up my required dependencies
RUN pip install pandas pyarrow requests

# set the working directory in the container
WORKDIR /app
# copy the local code to the container
COPY ingestion.py ingestion_docker.py

# define what to do when the container starts
ENTRYPOINT [ "python", "ingestion_docker.py" ]
