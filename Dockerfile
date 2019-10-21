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

# latest BERT models
RUN python -m spacy download en_trf_bertbaseuncased_lg
RUN python -m spacy download en_trf_robertabase_lg
RUN python -m spacy download en_trf_distilbertbaseuncased_lg
RUN python -m spacy download en_trf_xlnetbasecased_lg

# multi-language
RUN python -m spacy download xx_ent_wiki_sm

# for other spaCy model
# https://spacy.io/models

# gensim
RUN pip install --upgrade gensim

# textblob
RUN pip install -U textblob
RUN python -m textblob.download_corpora

# nlp augumentation
RUN pip install nlpaug python-dotenv

# snorkel
RUN pip install snorkel

# setup the work dir
WORKDIR /app
