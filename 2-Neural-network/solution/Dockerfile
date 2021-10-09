FROM ubuntu:bionic

# Some labels as documentation
LABEL date="October 2021"
LABEL description="Solution for the second hands-on / module on containers"

# We install python
RUN apt-get update \
  && apt-get install --no-install-recommends -y python3-pip python3-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \

# We provision the python requirements and install them
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --upgrade pip \
  && pip3 install -r /tmp/requirements.txt

# We copy the config into the container
COPY ./jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

# We copy the code
WORKDIR /root/notebooks
COPY ./dream.ipynb .

# We copy the entrypoint (it will launh jupyter for us)
COPY entrypoint.sh /entrypoint.sh

# We will expose port 8888 for the jupyter webserver
EXPOSE 8888

# The container execute the entrypoint on start
ENTRYPOINT [ "/entrypoint.sh" ]