# Docker Tinyproxy

[![](https://images.microbadger.com/badges/image/captn3m0/tinyproxy.svg)](https://microbadger.com/images/captn3m0/tinyproxy) [![](https://images.microbadger.com/badges/version/captn3m0/tinyproxy.svg)](https://microbadger.com/images/captn3m0/tinyproxy) [![](https://images.microbadger.com/badges/commit/captn3m0/tinyproxy.svg)](https://microbadger.com/images/captn3m0/tinyproxy) [![Dependabot Status](https://api.dependabot.com/badges/status?host=github&repo=captn3m0/docker-tinyproxy)](https://dependabot.com)

A quick and easy Dockerised Tinyproxy.

Find it on [GitHub](https://github.com/captn3m0/docker-tinyproxy).

Find it on [DockerHub](https://registry.hub.docker.com/u/capt3m0/tinyproxy/).

## Usage

### Running a new Tinyproxy container

```
Usage:
    docker run --detach --name='tinyproxy' --publish <Host_Port>:8888 captn3m0/tinyproxy:latest
```

### Running with custom configuration

Runs in the default configuration by itself. If you wish to pass a custom configuration, use the `--volume` option to mount it to `/etc/tinyproxy/tinyproxy.conf`:

```
docker run -d --name='tinyproxy' -p <Host_Port>:8888 --volume tinyproxy.conf:/etc/tinyproxy/tinyproxy.conf captn3m0/tinyproxy:latest
```

## Monitoring

#### Logs

`docker logs -f tinyproxy` will display a following tail of `/var/log/tinyproxy/tinyproxy.log`

#### Stats

Navigating to `http://tinyproxy.stats/` while connected to the proxy will display the Tinyproxy Stats page.

## Contribute

As always, contributions are appriciated. Simply open a Pull request.
