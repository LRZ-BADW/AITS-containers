# See Hand-out to improve this Dockerfile
# and adhere to best practices
FROM ubuntu:bionic

LABEL description="Solution for the second hands-on / module on containers"

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && pip3 install --upgrade pip

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt
 
COPY ./jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

WORKDIR /root/notebooks
COPY ./dream.ipynb .

COPY entrypoint.sh /entrypoint.sh

EXPOSE 8888

ENTRYPOINT [ "/entrypoint.sh" ]
