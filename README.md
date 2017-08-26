# docker-centos7-redis

This repository contains a Dockerfile to build a Docker Image for Redis3 in CentOS 7.

[![Build Status](https://travis-ci.org/zhuyx808/docker-centos7-redis.svg?branch=master)](https://travis-ci.org/zhuyx808/docker-centos7-redis)

## Base Docker Image

* [zhuyx808/centos](https://github.com/zhuyx808/centos)

## Usage

### Installation

1. Install [Docker](https://www.docker.com/).

2. You can build a parent image directly from Github:

```
docker build -t="zhuyx808/centos:latest" github.com/zhuyx808/centos
```

3. Then build an image for redis:

```
docker build -t="zhuyx808/redis:latest" github.com/zhuyx808/docker-centos7-redis
```

### Create and running a container

**Create container:**

```
docker create -it -p 6379:6379 --name container-redis zhuyx808/redis
```

**Start container:**

```
docker start container-redis
```


### Connection methods:

**Redis client**

```
docker exec -it container-redis redis-cli -a centosredis
```

**Bash:**

```
docker exec -it container-redis bash
```

**Stop container:**

```
docker stop container-redis
```

***
# centos 7 dockerfile

本项目主要构建一个基于centos 7基础上redis 3的 docker镜像

## 父镜像

* [zhuyx808/centos](https://github.com/zhuyx808/centos)

## 用法

### 安装

1. 安装 [Docker](https://www.docker.com/)。

2. 通过 Github构建一个父镜像:

```
docker build -t="zhuyx808/centos:latest" github.com/zhuyx808/centos
```

3. 再构建一个redis镜像:

```
docker build -t="zhuyx808/redis:latest" github.com/zhuyx808/docker-centos7-redis
```

### 创建并运行容器

**创建一个容器:**

```
docker create -it -p 6379:6379 --name container-redis zhuyx808/redis
```

**开启容器:**

```
docker start container-redis
```


### 连接方法:

**Redis 客户端方式**

```
docker exec -it container-redis redis-cli -a centosredis
```

**命令行方式:**

```
docker exec -it container-redis bash
```

**停止容器:**

```
docker stop container-redis
```
