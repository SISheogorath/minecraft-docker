FROM java:openjdk-8-jdk-alpine

MAINTAINER Sheogorath <sheogorath@shivering-isles.com> (@SISheogorath)

RUN apk add --no-cache wget && \
    mkdir /minecraft && \
    wget https://s3.amazonaws.com/Minecraft.Download/versions/1.11.2/minecraft_server.1.11.2.jar -O /minecraft/minecraft-server.jar && \
    apk del wget


ADD entrypoint.sh conf/eula.txt conf/server.properties /minecraft/

WORKDIR /minecraft

HEALTHCHECK CMD /usr/bin/nc 127.0.0.1 25565 < /dev/null || exit 1

EXPOSE 25565

ENTRYPOINT /minecraft/entrypoint.sh
