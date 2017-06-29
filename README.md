

## Install
* Git clone 1st

```
git clone https://github.com/goody80/zinst_repository_docker.git
```

* Git clone for zinst packages (optional)
```
git clone https://github.com/goody80/Zinst_packages.git
cp -Rfv ./Zinst_packages/* /zinst_repository_docker/dist/
```


## Use
* How to start the zinst repository server

```
cd zinst_repository_docker
docker-compose up -d
```

* How to set the zinst client

```
curl -sL bit.ly/online-install  |bash
zinst self-config ip=[IP address of the docker Host] host=[Hostname of docker host]:8080
```

* check the server alive

```
zinst find
```

## Setup
* You can modify the docker-compose.yml for setup as below
    * for example: I need to change the port 8080 to 80. - You can do as below
    * `8080:80/tcp` -> `80:80/tcp`

```
version: '2'
services:
  zinst-repository:
    image: goody80/zinst_repository:latest
    ports:
    - 8080:80/tcp
    volumes:
    - ./dist:/data/dist:rw
```
