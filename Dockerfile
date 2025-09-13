FROM docker.n8n.io/n8nio/n8n

USER root
RUN apk update && apk add --no-cache ffmpeg && rm -rf /var/cache/apk/*
RUN addgroup -S docker || true && addgroup node docker || true
RUN chown -R node:node /home/node /data
USER node
