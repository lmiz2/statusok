FROM golang:1.14

RUN mkdir /app
COPY ./ /app/

RUN cd /app && go build .

ENTRYPOINT /app/docker-entrypoint.sh
