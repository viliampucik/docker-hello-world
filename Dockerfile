# The smallest Docker Hello World example with multistage build
# Original author "Thorsten Schifferdecker <schifferdecker@b1-systems.de>"

# build the build environment
FROM alpine:latest as dev-container
WORKDIR /app
COPY hello.asm ./
RUN apk -U --no-cache add nasm \
  && nasm -f bin -o hello hello.asm \
  && chmod +x hello

# build the application docker image
FROM scratch
COPY --from=dev-container /app/hello /hello
ENTRYPOINT ["/hello"]
