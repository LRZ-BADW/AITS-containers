FROM ubuntu:22.04

# Some optional metadata
LABEL author      = "Florent Dufour <florent@lrz.de>" 
LABEL description = "Solution for the second hands-on"

# Install Dependencies
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y python3-pip python3-dev
RUN pip3 install --upgrade pip

# Install Requirements
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

# Load the notebook in the image
WORKDIR /root/notebooks
COPY ./dream.ipynb /root/notebooks/dream.ipynb

# Reference that we need to export port 8888
EXPOSE 8888

# Load the entrypoint in the image
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]