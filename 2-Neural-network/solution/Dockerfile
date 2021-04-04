FROM ubuntu:bionic

LABEL date="April 2021"
LABEL description="Solution for the second hands-on / module on containers"

RUN apt update \
  && apt install -y python3-pip python3-dev \
  && pip3 install --upgrade pip

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt
 

COPY ./jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

WORKDIR /root/notebooks
COPY ./dream.ipynb .

COPY entrypoint.sh /entrypoint.sh

EXPOSE 8888

ENTRYPOINT [ "/entrypoint.sh" ]