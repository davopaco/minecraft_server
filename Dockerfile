FROM amazoncorretto:22-headless

RUN mkdir -p /home/minecraft
WORKDIR /home/minecraft

COPY Minecraft_Bukkit/ .

CMD ["java", "-Xmx10G", "-Xms2G", "-d64", "-jar", "/home/minecraft/craftbukkit-1.20.4.jar", "nogui"]
