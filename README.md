# Docker Hello World

The smallest Docker Hello World container. Inspired by [b1-systems/hello-docker-world](https://github.com/b1-systems/hello-docker-world) and based on Brian Raiter's [hello.asm](http://www.muppetlabs.com/~breadbox/software/tiny/hello.asm.txt).

The docker image contains just `62 B` binary, which prints `hello, world`. The image size is about `11 KB`.

## Build and Run

```sh
git clone https://github.com/viliampucik/docker-hello-world.git
docker build -t hello .
docker run -ti --rm hello
```
