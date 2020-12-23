# watch-ffmpeg

This docker image definition starts with [ffmpeg-alpine](https://hub.docker.com/r/jrottenberg/ffmpeg) and adds [inotify-tools](https://pkgs.alpinelinux.org/package/edge/main/x86/inotify-tools).

This will enable scripts to work like the following:

```shell
inotifywait -e close_write -m /somedirectory |                                                                                                                                      
while read -r directory events filename; do
  echo "Found new file: $filename"
  echo "Converting $filename to gif..."
  ffmpeg \
  -i $filename \
  -r 15 \
  $filename.gif
  echo "Done"
done
```

