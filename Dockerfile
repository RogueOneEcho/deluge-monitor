FROM alpine
RUN apk add --no-cache bash curl jq
COPY src/logging ./logging
COPY src/monitor ./monitor
RUN chmod a+x ./logging && chmod a+x ./monitor
ENTRYPOINT ./monitor
