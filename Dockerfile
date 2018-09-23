FROM ubuntu:latest
EXPOSE 1730
ENV LOCALAPPIMG=local.AppImage UMASK=0000
VOLUME ["/config", "/app"]
RUN apt-get install fuse
WORKDIR /
COPY entrypoint.sh /entrypoint
RUN chmod +rx /entrypoint
ENTRYPOINT ["./entrypoint"]
