title @a times 5 20 5
title @a title {"text":"作 战 开 始","color":"green"}

function careerpvp:init/init_scoreboard

tag @a remove dead
effect clear @a minecraft:resistance
effect give @a minecraft:instant_health 1 9
effect give @a minecraft:resistance 10 9

execute at @e[type=armor_stand,tag=mapcenter] run spreadplayers ~ ~ 20 180 true @a[team=!]

clear @a[team=,gamemode=!creative]
scoreboard players set @a[team=,gamemode=!creative] spec 1
execute at @e[type=armor_stand,tag=mapcenter] run spreadplayers ~ ~ 0 200 true @a[scores={spec=1..}]

tellraw @p[distance=..15] "请输入 /setspawn default 以更新重生点"
teleport @p[distance=..15] @e[type=armor_stand,tag=respawn,limit=1]

tag @e[type=armor_stand,tag=spawn] add ingame
tag @e[type=armor_stand,tag=respawn] add ingame

gamerule sendCommandFeedback false
scoreboard objectives setdisplay sidebar score