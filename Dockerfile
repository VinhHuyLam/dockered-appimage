FROM alpine:latest
EXPOSE 1730
ENV LOCALAPPIMG=local.AppImage UMASK=0000
COPY entrypoint.sh /entrypoint
RUN chmod +rx /entrypoint && chmod +rx /$LOCALAPPIMG
ENTRYPOINT ["./entrypoint"]
CMD ["sh", "-c", "./$LOCALAPPIMG"]
VOLUME ["/local.AppImage"]
