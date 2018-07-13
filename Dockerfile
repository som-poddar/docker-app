FROM golang:1.9

WORKDIR /app
ENV SRC_DIR=$GOPATH/src/github.com/som-poddar/docker-app

ADD . $SRC_DIR

RUN cd $SRC_DIR; go build -o docker-app; cp docker-app /app/

ENTRYPOINT ["./docker-app"]
