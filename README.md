# Docker-Squid

Alpine Based Squid Proxy

## Run

```
docker run -d --rm -p 3128:3128 --name squid ghcr.io/olkitu/docker-squid
```

## Custom configuration

You can optionally make own custom image or [bind mount](https://docs.docker.com/storage/bind-mounts/) squid.conf to `/etc/squid/squid.conf`
