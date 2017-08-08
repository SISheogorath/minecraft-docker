Docker Minecraft Container
===

[![Build Status](https://travis-ci.org/SISheogorath/minecraft-docker.svg?branch=master)](https://travis-ci.org/SISheogorath/minecraft-docker)

> Minecraft is a sandbox video game originally created by Swedish game designer Markus "Notch" Persson and later developed and published by Mojang. The creative and building aspects of Minecraft enable players to build constructions out of textured cubes in a 3D procedurally generated world.
> -- [Wikipedia](https://en.wikipedia.org/w/index.php?title=Minecraft&oldid=750904035)

This container runs the minecraft server using the alpine-linux image of [Docker](https://docker.com/) and the OpenJDK.

# How to use this image

First, a simple run command:

```console
$ docker run -e MC_ACCEPT_EULA=true -p 25565:25565 sheogorath/minecraft
```

This will start the minecraft container in creative mode.

To configure include your configuration into the container use:

```console
$ docker run --name minecraft -p 25565:25565 -e MC_ACCEPT_EULA=true -e MC_MAX_PLAYERS=15 -e MC_GAMEMODE=1 sheogorath/minecraft
```

To keep your game data and be able to store your data on a persistent volume, run the following command:

```console
$ mkdir -p data && sudo chown 10000 data && sudo docker run --name minecraft -p 25565:25565 -e MC_ACCEPT_EULA=true -v `pwd`/data:/data sheogorath/minecraft
```

The container automatically manages that your world is kept in `/data`

# Configuration

## Existing config

You can convert your existing config to a vaild run command using the following line:

```console
echo docker run -e --name minecraft -p 25565:25565 -e MC_ACCEPT_EULA=true $(sed -e '/^#.*/ d' -e 's/-/_/' -e 's/^[^=]*/-e \"MC_\U&/' -e 's/$/\"/' server.properties) sheogorath/minecraft
```

*Please note that rcon is not available inside the container*

or by using the following run command:

```console
docker run --name minecraft -p 25565:25565 -e MC_ACCEPT_EULA=true -v /path/to/server.properties:/minecraft/server.properties sheogorath/minecraft
```

## Envionment variables

All needed configs are available using environment variables.

|Variable name |Description|
|--------------|-----------|
|MC_ACCEPT_EULA|[eula](http://minecraft.gamepedia.com/Server.properties)|
|MC_TICK_TIME|[max-tick-time](http://minecraft.gamepedia.com/Server.properties)|
|MC_GENERATOR_SETTINGS|[generator-settings](http://minecraft.gamepedia.com/Server.properties)|
|MC_ALLOW_NETHER|[allow-nether](http://minecraft.gamepedia.com/Server.properties)|
|MC_FORCE_GAMEMODE|[force-gamemode](http://minecraft.gamepedia.com/Server.properties)|
|MC_GAMEMODE|[gamemode](http://minecraft.gamepedia.com/Server.properties)|
|MC_ENABLE_QUERY|[enable-query](http://minecraft.gamepedia.com/Server.properties)|
|MC_PLAYER_IDLE|[player-idle-timeout](http://minecraft.gamepedia.com/Server.properties)|
|MC_DIFFICULTY|[difficulty](http://minecraft.gamepedia.com/Server.properties)|
|MC_SPAWN_MONSTERS|[spawn-monsters](http://minecraft.gamepedia.com/Server.properties)|
|MC_OP_PERMISSION_LEVEL|[op-permission-level](http://minecraft.gamepedia.com/Server.properties)|
|MC_ANNOUNCE_PLAYER_ACHIEVMENTS|[announce-player-achievements](http://minecraft.gamepedia.com/Server.properties)|
|MC_PVP|[pvp](http://minecraft.gamepedia.com/Server.properties)|
|MC_SNOOPER_ENABLED|[snooper-enabled](http://minecraft.gamepedia.com/Server.properties)|
|MC_LEVEL_TYPE|[level-type](http://minecraft.gamepedia.com/Server.properties)|
|MC_HARDCORE|[hardcore](http://minecraft.gamepedia.com/Server.properties)|
|MC_ENABLE_COMMAND_BLOCK|[enable-command-block](http://minecraft.gamepedia.com/Server.properties)|
|MC_MAX_PLAYERS|[max-players](http://minecraft.gamepedia.com/Server.properties)|
|MC_NETWORK_COMPRESSION_THRESHOLD|[network-compression-threshold](http://minecraft.gamepedia.com/Server.properties)|
|MC_RESOURCE_PACK_SHA|[resource-pack-sha1](http://minecraft.gamepedia.com/Server.properties)|
|MC_MAX_WORLD_SIZE|[max-world-size](http://minecraft.gamepedia.com/Server.properties)|
|MC_SPAWN_NPCS|[spawn-npcs](http://minecraft.gamepedia.com/Server.properties)|
|MC_ALLOW_FLIGHT|[allow-flight](http://minecraft.gamepedia.com/Server.properties)|
|MC_LEVEL_NAME|[level-name](http://minecraft.gamepedia.com/Server.properties)|
|MC_VIEW_DISTANCE|[view-distance](http://minecraft.gamepedia.com/Server.properties)|
|MC_RESOURCE_PACK|[resource-pack](http://minecraft.gamepedia.com/Server.properties)|
|MC_SPAWN_ANIMALS|[spawn-animals](http://minecraft.gamepedia.com/Server.properties)|
|MC_WHITE_LIST|[white-list](http://minecraft.gamepedia.com/Server.properties)|
|MC_GENERATE_STRUCTURES|[generate-structures](http://minecraft.gamepedia.com/Server.properties)|
|MC_ONLINE_MODE|[online-mode](http://minecraft.gamepedia.com/Server.properties)|
|MC_MAX_BUILD_HEIGHT|[max-build-height](http://minecraft.gamepedia.com/Server.properties)|
|MC_LEVEL_SEED|[level-seed](http://minecraft.gamepedia.com/Server.properties)|
|MC_MOTD|[motd](http://minecraft.gamepedia.com/Server.properties)|

# License

View [license information](https://minecraft.net/terms) for the software contained in this image. And the EULA.

# Supported Docker versions

This image is officially supported on Docker version 17.06-ce.

Please see [the Docker installation documentation](https://docs.docker.com/installation/) for details on how to upgrade your Docker daemon.

# User Feedback

## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/SISheogorath/docker-minecraft/issues).

You can also reach many of the project maintainers via the `#admins` IRC channel on [MadIRC](https://madirc.net).

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.
