FROM debian:stretch-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc \
		libc6-dev \
		file
WORKDIR pwd
COPY . .
# ENV SRC_DIR=$GOPATH/src/github.com/som-poddar/docker-app
# ADD . $SRC_DIR

RUN cc main.c -o main
# COPY  main .
ENTRYPOINT ["./main"]
