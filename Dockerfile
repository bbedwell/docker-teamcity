FROM iron/java:1.8

ENV TEAMCITY_VERSION 9.1.6
ENV DOCKER_VERSION 1.10.0
ENV TEAMCITY_DATA_PATH /data/teamcity
VOLUME ["/data/teamcity"]

RUN apk add --update wget git bash
RUN wget --progress=bar:force -O /bin/docker https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_VERSION \
        && chmod +x /bin/docker

RUN wget --progress=bar:force -O teamcity.tar.gz http://download.jetbrains.com/teamcity/TeamCity-$TEAMCITY_VERSION.tar.gz \
	&& tar xzf teamcity.tar.gz -C / \
	&& rm -rf teamcity.tar.gz

EXPOSE 8111
CMD ["/TeamCity/bin/teamcity-server.sh", "run"]
