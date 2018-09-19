FROM python

RUN apt-get update && apt-get install -y git cmake && cd /tmp && git clone https://github.com/justinmeza/lci.git && cd lci && git checkout future 
RUN cd /tmp/lci && chmod +x install.py && ./install.py

WORKDIR /app

COPY . /app

EXPOSE 13337

CMD lci httpd.lol
