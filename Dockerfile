FROM jrottenberg/ffmpeg:4.1-alpine
RUN apk update && apk add inotify-tools curl
