FROM alpine

RUN apk add --no-cache bash curl ffmpeg

USER nobody

COPY rtvs-dl.sh /

ENTRYPOINT ["/bin/bash", "/rtvs-dl.sh"]
