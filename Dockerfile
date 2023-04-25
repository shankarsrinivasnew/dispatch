FROM golang
RUN mkdir /app
WORKDIR /app
COPY main.go dispatch go.mod go.sum /app/
COPY docker/run.sh .
ENTRYPOINT [ "bash","run.sh" ]