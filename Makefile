APPNAME := docker-app

clean:
	    rm $(APPNAME)

setup:
	    go get -d github.com/golang/dep
	    dep ensure

build:
	    go build -o $(APPNAME)

build-mac:
	   GOOS=linux GOARCH=arm  go build -o $(APPNAME)
run:
	./$(APPNAME)

dockerbuild:
	docker build -t ellation/docker-app .

dockerrun:
	docker run --rm -p 8080:8080 ellation/docker-app
