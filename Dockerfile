#
# Redis Dockerfile in CentOS 7 image
#

# Build:
# docker build -t="zhuyx808/centos:latest" github.com/zhuyx808/centos
# docker build -t="zhuyx808/redis:latest" github.com/zhuyx808/docker-centos7-redis
#
# Create:
# docker create -it -p 6379:6379 --name container-redis zhuyx808/redis
#
# Start:
# docker start container-redis
#
# Connect with redis client
# docker exec -it container-redis redis-cli -a centosredis
#
# Connect bash
# docker exec -it container-redis bash


# Pull base image
FROM zhuyx808/centos

# Maintener
MAINTAINER Hongliang Zhu <zhuyx808@163.com>

# Install Redis
RUN yum -y install epel-release && \
	yum -y install redis && \
    yum clean all

# Copy config redis
ADD etc/redis.conf /etc/redis.conf

# User
USER root

# Mountable directories
VOLUME ["/var/lib/redis"]

# Set the environment variables
ENV HOME /var/lib/redis

# Working directory
WORKDIR /var/lib/redis

CMD ["/usr/bin/redis-server", "/etc/redis.conf"]

# Expose ports.
EXPOSE 6379