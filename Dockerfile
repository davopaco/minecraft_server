FROM amazoncorretto:8-alpine3.17-jre

RUN mkdir -p /home/minecraft
WORKDIR /home/minecraft

COPY Minecraft_Bukkit/ .

CMD ["java", "-Xmx10GM", "-Xms2G", "-d64", "-jar", "/home/Minecraft/craftbukkit-1.20.4.jar", "nogui"]
