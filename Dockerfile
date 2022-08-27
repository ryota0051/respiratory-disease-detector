FROM tensorflow/tensorflow:2.9.1-gpu

WORKDIR /tf

COPY ./requirements.txt ./

RUN apt update -y && apt install libsndfile1 graphviz -y

RUN pip install --upgrade pip && pip install -r requirements.txt
