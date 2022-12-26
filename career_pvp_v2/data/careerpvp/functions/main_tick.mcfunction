gamemode adventure @a[gamemode=survival]
gamemode spectator @a[scores={spec=1..},gamemode=!creative]
effect give @a minecraft:saturation 10 0 true
tag @a[gamemode=!adventure] add spec
tag @a[gamemode=adventure] remove spec
kill @e[type=item]

function careerpvp:internal/internal_update_teammate_tick
function careerpvp:internal/internal_player_kill_tick
function careerpvp:internal/internal_revive_countdown_tick
function careerpvp:internal/internal_loc_spawn_ingame_tick
function careerpvp:internal/internal_loc_respawn_ingame_tick
function careerpvp:internal/internal_manabar