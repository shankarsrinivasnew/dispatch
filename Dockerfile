FROM golang
RUN mkdir /app
WORKDIR /app
COPY main.go .
COPY docker/run.sh .
ENTRYPOINT [ "bash","run.sh" ]