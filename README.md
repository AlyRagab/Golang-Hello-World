Create very simple Hello-World using Golang and deploy in a docker container
Build the image using the Dockerfile 
# docker build -t hello-world .
Then run the container to listen on 8080 port number
# docker run -d --name hello -p 8080:8080 hello-world
To test http://localhost:8080

To run it in Kubernetes 
# kubectl apply -f hello.yaml
