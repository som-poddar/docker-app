APPNAME := docker-app

clean:
	    rm $(APPNAME)

setup:
	    go get -d github.com/golang/dep
	    ${GOBIN}/dep ensure

build:
	    cc main.c -o main
	    # go build -o $(APPNAME)

build-mac:
	   GOOS=linux GOARCH=arm  go build -o $(APPNAME)

run:
	./$(APPNAME)

dockerbuild:
	docker build -t ellation/docker-app .

dockerrun:
	docker run ellation/docker-app

dockerhublogin:
	docker login -u spoddarellation -p ellation # plain text for now, should be env variable in future

dockerpush:
	docker push spoddarellation/docker-app:latest
