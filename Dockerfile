FROM golang:1.17-alpine

RUN go get -u github.com/go-delve/delve/cmd/dlv 

WORKDIR /app

EXPOSE 2345

CMD [ "dlv", "debug", "main.go", "--listen=:2345", "--headless", "--api-version=2", "--log" ]