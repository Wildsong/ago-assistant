FROM nginx:latest
MAINTAINER Brian H Wilson "brian@wildsong.biz"

ENV AGOA_RELEASE="2.9.1"

RUN apt-get update && apt-get install -y unzip

WORKDIR /usr/share/nginx/html
RUN rm -rf *

# Download the pre-built app
ADD https://github.com/Esri/ago-assistant/releases/download/v${AGOA_RELEASE}/ago-assistant-${AGOA_RELEASE}.zip .

RUN unzip ago-assistant-${AGOA_RELEASE}.zip

EXPOSE 80/tcp
