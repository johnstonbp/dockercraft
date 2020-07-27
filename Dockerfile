FROM docker.io/openjdk:8-alpine AS java-install

LABEL maintainer="nospam@email.com"

WORKDIR /minecraft
RUN wget https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar
COPY ./eula.txt eula.txt

CMD java -Xmx1024M -Xms1024M -jar server.jar nogui