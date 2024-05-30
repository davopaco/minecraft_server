FROM amazoncorretto:22-alpine-full

RUN mkdir -p /home/minecraft
WORKDIR /home/minecraft

COPY Minecraft_Bukkit/ .

CMD ["java", "-Xmx10G", "-Xms2G", "-jar", "/home/minecraft/craftbukkit-1.20.4.jar", "--nogui"]
