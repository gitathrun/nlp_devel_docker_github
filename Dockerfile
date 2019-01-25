# for a docker image with:
# CUDA 9.0 + cuDNN 7.x
# Anaconda 5.2 (python 3.6)
# --- NLP packages ---
# nltk
# spacy
# gensim
# textblob

FROM tftwdockerhub/cuda_cudnn_ana_base:latest

# the maintainer information
LABEL maintainer "TeleWare Data Scientist <teng.fu@teleware.com>"

# tqdm
RUN pip install tqdm

# nltk
RUN pip install -U nltk
RUN python -m nltk.downloader all

# spacy
RUN pip install -U spacy

# English models
RUN python -m spacy download en
RUN python -m spacy download en_core_web_sm
RUN python -m spacy download en_core_web_md
RUN python -m spacy download en_core_web_lg
RUN python -m spacy download en_vectors_web_lg

# multi-language
RUN python -m spacy download xx_ent_wiki_sm

# for other spaCy model
# https://spacy.io/usage/models

# gensim
RUN pip install --upgrade gensim

# textblob
RUN pip install -U textblob
RUN python -m textblob.download_corpora

# setup the work dir
WORKDIR /app
