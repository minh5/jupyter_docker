# jupyter_docker

My own personal image of my Jupyter Notebook. I prefer this because it has 

    1. nice extensions for better user experience (like a table of contents add-on)
    2. libraries for several data science tasks like  
      - Numpy, Pandas, and Sklearn as your general data science toolkit
      - Tensorflow and XGBoost for building the best performance models
      - NLTK, Gensim, and Spacy for modern NLP
    3. both Python2 and Python3 kernels
    
# Installation

First make sure you install [Docker](www.docker.com) and pull down my image:

```
docker pull minh5/jupyter
```

and then you can run the image with

```
docker run -p 8001:1234 minh5/jupyter
```
and accessing it with the address: http://localhost:8001/tree. You can change the port number to whatever you feel like it.

Or you can build from this repo

```
git clone https://github.com/minh5/jupyter_docker.git && \
cd jupyter_docker && \
docker build -t jupyter_nb .
```

**To Do List:**

  - Add Spark support
  - Add other Deep Learning libraries
  - Configure a data container volume for storing data and notebooks
 
