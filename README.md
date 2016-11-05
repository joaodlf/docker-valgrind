Simple image running Valgrind on top of phusion/baseimage.

## Building
```
$ docker build -t valgrind .
```

## Running
```
$ docker run -d --name valgrind -v [/source/code/path]:/root/build valgrind
```

## Attaching
```
$ docker exec -it valgrind /bin/bash
$ cd ~/build
```
