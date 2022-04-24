gamemode adventure @a[gamemode=survival]
gamemode spectator @a[scores={spec=1..},gamemode=!creative]
effect give @a minecraft:saturation 10 0 true
tag @a[gamemode=!adventure] add spec
tag @a[gamemode=adventure] remove spec

function careerpvp:internal/internalupdateteammatetick
function careerpvp:internal/internalplayerkilltick
function careerpvp:internal/internalrevivecountdowntick
function careerpvp:internal/internallocspawningametick
function careerpvp:internal/internallocrespawningametick