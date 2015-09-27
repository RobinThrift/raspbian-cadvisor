# vim:set ft=dockerfile:
FROM resin/rpi-raspbian:jessie

ADD content/cadvisor /usr/bin/cadvisor

EXPOSE 8080
ENTRYPOINT ["/usr/bin/cadvisor"]
