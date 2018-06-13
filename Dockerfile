FROM golang:latest
RUN mkdir /hello
ADD . /hello/
WORKDIR /hello/
RUN go build -o main .
ENV PORT 8080
EXPOSE 8080
CMD ["/hello/main"]
