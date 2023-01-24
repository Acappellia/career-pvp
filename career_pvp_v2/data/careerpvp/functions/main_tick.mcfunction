gamemode adventure @a[gamemode=survival]
gamemode spectator @a[scores={spec=1..},gamemode=!creative]
effect give @a minecraft:saturation 10 0 true
tag @a[gamemode=!adventure] add spec
tag @a[gamemode=adventure] remove spec
kill @e[type=item]
scoreboard players add start_delay timer 1
scoreboard players add cutscene timer 1
execute store result bossbar match_timer value run scoreboard players remove match_time timer 1
execute as @e[type=armor_stand, tag=spawn, tag=ingame] run bossbar set match_timer players @a

execute if score show_cutscene int_val matches 1.. if score cutscene timer matches ..-1 run function careerpvp:cutscene/tick_cutscene
execute if score start_delay timer matches -200..-1 run function careerpvp:game/start_timer
execute if score match_time timer matches 1.. run function careerpvp:game/stop_timer 

function careerpvp:internal/internal_update_teammate_tick
function careerpvp:internal/internal_player_kill_tick
function careerpvp:internal/internal_revive_countdown_tick
function careerpvp:internal/internal_loc_spawn_ingame_tick
function careerpvp:internal/internal_loc_respawn_ingame_tick
function careerpvp:internal/internal_manabar
function careerpvp:effect/effect_range_loop
function careerpvp:mobs/mob_tick
function careerpvp:advancements/tick_advancement_revoke

execute at @e[type=armor_stand, tag=mapcenter, tag=ingame] run title @a[tag=!dead,team=!,distance=197..,gamemode=adventure] actionbar {"text":"即将离开地图边界，请返回地图作战区域！","color":"red"}
execute at @e[type=armor_stand, tag=mapcenter, tag=ingame] run effect give @a[tag=!dead,team=!,distance=210..,gamemode=adventure] slowness 1 2
execute at @e[type=armor_stand, tag=mapcenter, tag=ingame] run effect give @a[tag=!dead,team=!,distance=215..,gamemode=adventure] wither 1 9
execute at @e[type=armor_stand, tag=mapcenter, tag=ingame] run effect give @a[tag=!dead,team=!,distance=225..,gamemode=adventure] instant_damage 1 1
