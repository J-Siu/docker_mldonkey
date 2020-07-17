# docker_mpd
FROM debian:stable-slim

LABEL version="3.1.6-1+b1"
LABEL maintainers="[John Sing Dao Siu](https://github.com/J-Siu)"
LABEL name="mldonkey"
LABEL usage="https://github.com/J-Siu/docker_mldonkey/blob/master/README.md"
LABEL description="Docker - mldonkey with UID and GID handling."

RUN apt update \
&& apt -y install tzdata mldonkey-server=3.1.6-1+b1 \
&& mkdir /mld

COPY docker-compose.yml env start.sh /
RUN chmod +x /start.sh

CMD ["/start.sh"]