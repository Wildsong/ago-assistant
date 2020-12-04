# ago-assistant
Runs ESRI "AGO Assistant" in a Docker container.

## Prerequisites 

* A server that has Docker, "make", and optionally Docker Compose installed.
* These days I used Swarm instead of Compose.

## Build image

```bash
docker-compose build
```
### Deployment

Old way
```bash
docker-compose up -d

New way
```bash
docker stack deploy -c docker-compose.yml  agoa
```

Runs on port 88.

