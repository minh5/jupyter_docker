FROM ubuntu:latest

MAINTAINER minh mai

# get python running and installing requirements
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y python python-pip python-dev python3 python3-pip python3-dev vim tmux
COPY requirements.txt root/
RUN pip install -r root/requirements.txt
RUN pip3 install -r root/requirements.txt

# configure extensions
RUN jupyter nbextensions_configurator enable --user
RUN jupyter contrib nbextension install --user
RUN jupyter nbextension enable codefolding/main

# create profile for separate python
RUN python -m ipykernel install
RUN python3 -m ipykernel install

# final touches to port the ipython notebook
EXPOSE 1234
COPY ipython.sh root/
RUN chmod +x root/ipython.sh

# make directory to store notebooks
RUN mkdir -p root/notebooks
VOLUME root/notebooks

ENTRYPOINT ["root/ipython.sh"]
