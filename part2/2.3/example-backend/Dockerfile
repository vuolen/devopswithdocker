FROM golang:latest

WORKDIR /usr/app

COPY . .

RUN go build && \
    rm -rf /go && \
    mv ./server ../server && \
    rm -rf * && \
    mv ../server ./server

RUN useradd -m appuser 
USER appuser

CMD ./server


