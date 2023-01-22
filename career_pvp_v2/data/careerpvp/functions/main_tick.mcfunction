gamemode adventure @a[gamemode=survival]
gamemode spectator @a[scores={spec=1..},gamemode=!creative]
effect give @a minecraft:saturation 10 0 true
tag @a[gamemode=!adventure] add spec
tag @a[gamemode=adventure] remove spec
kill @e[type=item]
scoreboard players add start_delay timer 1
execute store result bossbar match_timer value run scoreboard players remove match_time timer 1

execute if score start_delay timer matches -200..-181 run title @a title "10"
execute if score start_delay timer matches -180..-161 run title @a title "9"
execute if score start_delay timer matches -160..-141 run title @a title "8"
execute if score start_delay timer matches -140..-121 run title @a title "7"
execute if score start_delay timer matches -120..-101 run title @a title "6"
execute if score start_delay timer matches -100..-81 run title @a title "5"
execute if score start_delay timer matches -80..-61 run title @a title "4"
execute if score start_delay timer matches -60..-41 run title @a title "3"
execute if score start_delay timer matches -40..-21 run title @a title "2"
execute if score start_delay timer matches -20..-2 run title @a title "1"
execute if score start_delay timer matches -1 run tellraw @a "本局游戏开始"
execute if score start_delay timer matches -1 run function careerpvp:game/game_start

execute at @e[type=armor_stand, tag=mapcenter, tag=ingame] run title @a[team=!,distance=197..,gamemode=adventure] actionbar "即将离开地图边界，请返回地图作战区域！"
execute at @e[type=armor_stand, tag=mapcenter, tag=ingame] run effect give @a[team=!,distance=200..,gamemode=adventure] slowness 1 2
execute at @e[type=armor_stand, tag=mapcenter, tag=ingame] run effect give @a[team=!,distance=205..,gamemode=adventure] wither 1 9
execute at @e[type=armor_stand, tag=mapcenter, tag=ingame] run effect give @a[team=!,distance=215..,gamemode=adventure] instant_damage 1 1

execute if score match_time timer matches 36000 run tellraw @a "本局时间剩余 30 分钟"
execute if score match_time timer matches 35960 run tellraw @a "本局时间剩余 30 分钟"
execute if score match_time timer matches 35920 run tellraw @a "本局时间剩余 30 分钟"
execute if score match_time timer matches 18000 run tellraw @a "本局时间剩余 15 分钟"
execute if score match_time timer matches 17960 run tellraw @a "本局时间剩余 15 分钟"
execute if score match_time timer matches 17920 run tellraw @a "本局时间剩余 15 分钟"
execute if score match_time timer matches 12000 run tellraw @a "本局时间剩余 10 分钟"
execute if score match_time timer matches 11960 run tellraw @a "本局时间剩余 10 分钟"
execute if score match_time timer matches 11920 run tellraw @a "本局时间剩余 10 分钟"
execute if score match_time timer matches 6000 run tellraw @a "本局时间剩余 5 分钟"
execute if score match_time timer matches 5960 run tellraw @a "本局时间剩余 5 分钟"
execute if score match_time timer matches 5920 run tellraw @a "本局时间剩余 5 分钟"
execute if score match_time timer matches 3600 run tellraw @a "本局时间剩余 3 分钟"
execute if score match_time timer matches 2400 run tellraw @a "本局时间剩余 2 分钟"
execute if score match_time timer matches 1200 run tellraw @a "本局时间剩余 1 分钟"
execute if score match_time timer matches 600 run tellraw @a "本局时间剩余 30 秒"
execute if score match_time timer matches 400 run tellraw @a "本局时间剩余 20 秒"
execute if score match_time timer matches 200 run tellraw @a "倒计时： 10 秒"
execute if score match_time timer matches 180 run tellraw @a "倒计时： 9 秒"
execute if score match_time timer matches 160 run tellraw @a "倒计时： 8 秒"
execute if score match_time timer matches 140 run tellraw @a "倒计时： 7 秒"
execute if score match_time timer matches 120 run tellraw @a "倒计时： 6 秒"
execute if score match_time timer matches 100 run tellraw @a "倒计时： 5 秒"
execute if score match_time timer matches 80 run tellraw @a "倒计时： 4 秒"
execute if score match_time timer matches 60 run tellraw @a "倒计时： 3 秒"
execute if score match_time timer matches 40 run tellraw @a "倒计时： 2 秒"
execute if score match_time timer matches 20 run tellraw @a "倒计时： 1 秒"
execute if score match_time timer matches 1 run tellraw @a "本局游戏结束"
execute if score match_time timer matches 1 run function careerpvp:game/game_stop

function careerpvp:internal/internal_update_teammate_tick
function careerpvp:internal/internal_player_kill_tick
function careerpvp:internal/internal_revive_countdown_tick
function careerpvp:internal/internal_loc_spawn_ingame_tick
function careerpvp:internal/internal_loc_respawn_ingame_tick
function careerpvp:internal/internal_manabar
function careerpvp:effect/effect_range_loop
function careerpvp:mobs/mob_tick