#!/bin/sh

cd /minecraft

# EULA acception
echo eula=${MC_ACCEPT_EULA:-false} >> /minecraft/eula.txt

# Server settings
echo max-tick-time=${MC_TICK_TIME:-60000} >> /minecraft/server.properties
echo generator-settings=${MC_GENERATOR_SETTINGS:-} >> /minecraft/server.properties
echo allow-nether=${MC_ALLOW_NETHER:-true} >> /minecraft/server.properties
echo force-gamemode=${MC_FORCE_GAMEMODE:-false} >> /minecraft/server.properties
echo gamemode=${MC_GAMEMODE:-0} >> /minecraft/server.properties
echo enable-query=${MC_ENABLE_QUERY:-false} >> /minecraft/server.properties
echo player-idle-timeout=${MC_PLAYER_IDLE:-0} >> /minecraft/server.properties
echo difficulty=${MC_DIFFICULTY:-1} >> /minecraft/server.properties
echo spawn-monsters=${MC_SPAWN_MONSTERS:-true} >> /minecraft/server.properties
echo op-permission-level=${MC_OP_PERMISSION_LEVEL:-4} >> /minecraft/server.properties
echo announce-player-achievements=${MC_ANNOUNCE_PLAYER_ACHIEVMENTS:-true} >> /minecraft/server.properties
echo pvp=${MC_PVP:-true} >> /minecraft/server.properties
echo snooper-enabled=${MC_SNOOPER_ENABLED:-true} >> /minecraft/server.properties
echo level-type=${MC_LEVEL_TYPE:-DEFAULT} >> /minecraft/server.properties
echo hardcore=${MC_HARDCORE:-false} >> /minecraft/server.properties
echo enable-command-block=${MC_ENABLE_COMMAND_BLOCK:-false} >> /minecraft/server.properties
echo max-players=${MC_MAX_PLAYERS:-20} >> /minecraft/server.properties
echo network-compression-threshold=${MC_NETWORK_COMPRESSION_THRESHOLD:-256} >> /minecraft/server.properties
echo resource-pack-sha1=${MC_RESOURCE_PACK_SHA1:-} >> /minecraft/server.properties
echo max-world-size=${MC_MAX_WORLD_SIZE:-29999984} >> /minecraft/server.properties
echo spawn-npcs=${MC_SPAWN_NPCS:-true} >> /minecraft/server.properties
echo allow-flight=${MC_ALLOW_FLIGHT:-false} >> /minecraft/server.properties
echo level-name=${MC_LEVEL_NAME:-Docker-world} >> /minecraft/server.properties
echo view-distance=${MC_VIEW_DISTANCE:-10} >> /minecraft/server.properties
echo resource-pack=${MC_RESOURCE_PACK:-} >> /minecraft/server.properties
echo spawn-animals=${MC_SPAWN_ANIMALS:-true} >> /minecraft/server.properties
echo white-list=${MC_WHITE_LIST:-false} >> /minecraft/server.properties
echo generate-structures=${MC_GENERATE_STRUCTURES:-true} >> /minecraft/server.properties
echo online-mode=${MC_ONLINE_MODE=:-true} >> /minecraft/server.properties
echo max-build-height=${MC_MAX_BUILD_HEIGHT:-256} >> /minecraft/server.properties
echo level-seed=${MC_LEVEL_SEED:-} >> /minecraft/server.properties
echo motd=${MC_MOTD:-Welcome to a minimal Docker Minecraft Server} >> /minecraft/server.properties

/usr/bin/java -Xms1G -Xmx1G -jar minecraft-server.jar nogui
