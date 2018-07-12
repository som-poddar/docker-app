FROM golang:1.9

WORKDIR /app

ADD docker-app /app/

ENTRYPOINT ["./docker-app"]
