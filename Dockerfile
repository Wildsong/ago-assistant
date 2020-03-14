FROM node:12
MAINTAINER Brian H Wilson "brian@wildsong.biz"

WORKDIR /home/node

# Download the code
RUN git clone https://github.com/Esri/ago-assistant.git

WORKDIR /home/node/ago-assistant
RUN npm install
RUN npm run build

EXPOSE 8080/tcp

CMD npm run serve
