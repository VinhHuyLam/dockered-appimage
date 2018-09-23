FROM alpine:latest
EXPOSE 1730
ENV LOCALAPPIMG=local.AppImage UMASK=0000
VOLUME ["/config", "/app"]
COPY entrypoint.sh /entrypoint
RUN chmod +rx /entrypoint
ENTRYPOINT ["./entrypoint"]
