# Raspbian Cadvisor
Google's [cAdvisor](https://github.com/google/cadvisor) compiled and packaged for the Raspberry Pi 2.

## Usage
```
sudo docker run \
    --volume=/:/rootfs:ro \
    --volume=/var/run:/var/run:rw \
    --volume=/sys:/sys:ro \
    --volume=/var/lib/docker/:/var/lib/docker:ro \
    --publish=8080:8080 \
    --detach=true \
    --name=cadvisor \
    robinthrift/raspian-cadvisor:latest
```

More Info on the [cAdvisor GitHub](https://github.com/google/cadvisor) page.


## Dev
Expects the [cAdvisor](https://github.com/google/cadvisor) binary to be in `content/`
Run `sudo make build` to build the docker container.
