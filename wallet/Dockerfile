FROM python:3.8-slim

USER root

# Update linux and install git
RUN apt-get update && \
    apt-get install -y git

# Install pip and setuptools
RUN pip install --upgrade pip && \
    pip install --upgrade setuptools

# Set workdir
WORKDIR /code

# Install python packages
COPY wallet/requirements.txt /code/
RUN pip install -r requirements.txt

# Copy files
COPY . /code/

# Run server
ENV PROJECT_ENV development
EXPOSE 8000
ENTRYPOINT [ "/code/wallet/docker-entrypoint.sh" ]
