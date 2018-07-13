FROM debian:stretch-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc \
		libc6-dev \
		file
RUN pwd
RUN ls -l

WORKDIR /usr/src/hello
COPY . .
# ENV SRC_DIR=$GOPATH/src/github.com/som-poddar/docker-app
# ADD . $SRC_DIR

RUN gcc main.c -o main
COPY  main /
ENTRYPOINT ["./main"]
