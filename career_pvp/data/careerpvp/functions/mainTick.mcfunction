gamemode adventure @a[gamemode=survival]
gamemode spectator @a[scores={spec=1..},gamemode=!creative]
effect give @a minecraft:saturation 10 0 true
tag @a[gamemode=!adventure] add spec
tag @a[gamemode=adventure] remove spec

function careerpvp:internal/internalUpdateTeammateTick
function careerpvp:internal/internalPlayerKillTick
function careerpvp:internal/internalReviveCountdownTick
function careerpvp:internal/internalLocSpawnIngameTick
function careerpvp:internal/internalLocRespawnIngameTick