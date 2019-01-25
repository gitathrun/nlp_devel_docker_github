# NLP docker image #

Author: Teng Fu

Contact: teng.fu@teleware.com

Repo for NLP task development, including multiple Python based NLP packages with Jupyter Lab development inferface.

## Base Image ##
This is the docker image for NLP task, its baseImage is:

__FROM tftwdockerhub/cuda_cudnn_ana_base:latest__

## Additional installed packages ##

No Tensorflow or PyTorch.

For NLP packages:

-  nltk 
-  spacy 
-  gensim 
-  textblob 

All the additional language models are also installed by using:

```
python -m <language-model-download>
```

## Docker Registry Repo ##

__tftwdockerhub/nlp_devel:latest__

## Usage ##
on virtual machines
```
sudo docker login
```

```
sudo docker pull tftwdockerhub/nlp_devel:latest
```

Remember the target port for VM access externally is __8889__
```
sudo nvidia-docker run -it -p 8889:8888 -v < project-dir-path >:/app tftwdockerhub/nlp_devel:latest
```

In local browser, remember the target port is __8889__
```
http://< vm-dns-or-IP-address >:8889/?token=21c5e12de68e91dcb2577ec1ce345d1c1d675c9aca43d54b&token=21c5e12de68e91dcb2577ec1ce345d1c1d675c9aca43d54b
```