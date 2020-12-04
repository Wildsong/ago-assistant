# ago-assistant
Runs ESRI "AGO Assistant" in a Docker container.

## Prerequisites 

* A server that has Docker and optionally Docker Compose installed.

## Build image

```bash
docker-compose build
```
### Deployment

Old way

The docker-compose.yml is set up to use Wildsong/docker-proxy as a web proxy
and the proxy will create Let's Encrypt certificates. To get that to work,

*Set up a host name for example I use "agoa.wildsong.biz"
*Set up an app id in your portal
*Copy sample.env to .env
*Edit .env to pu the host name, app id, and hostname of your Portal in it.

```bash
docker-compose up -d


New way
```bash
docker stack deploy -c docker-compose.yml  agoa
```

Runs on port 8080 by default, you can change the in docker-compose.yml

## Notes on AGO-assistant

It's a JavaScript app and it just needs any web server.
It's outdated. I say that because it uses jquery. :-)
