FROM alpine:latest
EXPOSE 1730
ENV LOCALAPPIMG=local.AppImage UMASK=0000
RUN apk add --update --no-cache
COPY entrypoint.sh /entrypoint
RUN chmod +rx /entrypoint
ENTRYPOINT ["./entrypoint"]
CMD ["./$LOCALAPPIMG"]
VOLUME ["/local.AppImage"]
