# base image to build from, offical python image from docker
FROM python:3.13.10-slim

# copy the uv binary from the uv image to the container
# this replaces the pip install step
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/

# set the working directory in the container
WORKDIR /code

# Add virtual environment to PATH
ENV PATH="/code/.venv/bin:$PATH"

# copy the pyproject.toml and uv.lock files to the container
COPY "pyproject.toml" "uv.lock" ".python-version" ./
# install dependencies from locked file
RUN uv sync --locked

# copy the local code to the container
COPY ingestion_ny_taxi.py .

# define what to do when the container starts
ENTRYPOINT ["uv", "run", "python", "ingestion_ny_taxi.py" ]
