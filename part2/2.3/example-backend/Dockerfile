FROM golang:alpine

WORKDIR /usr/app

COPY . .

RUN go build && \
    rm -rf /go && \
    mv ./server ../server && \
    rm -rf * && \
    mv ../server ./server

RUN adduser -D appuser 
USER appuser

CMD ./server


