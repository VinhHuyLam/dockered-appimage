FROM alpine:latest
EXPOSE 1730
VOLUME ["/local.AppImage"]
ENV LOCALAPPIMG=local.AppImage UMASK=0000
COPY entrypoint.sh /entrypoint
RUN chmod +rx /entrypoint
ENTRYPOINT ["./entrypoint"]
CMD ["sh", "-c", "./$LOCALAPPIMG"]
