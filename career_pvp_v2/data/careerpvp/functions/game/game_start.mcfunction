title @a times 0 10 5 
title @a title {"text":"作 战 开 始","color":"green"}

function careerpvp:game/game_reset_stat

tag @a remove dead
effect clear @a minecraft:resistance
effect give @a minecraft:instant_health 1 9
effect give @a minecraft:resistance 10 9
scoreboard players set @a[team=!] mana 20

advancement revoke @s only careerpvp:sneak_ok
advancement revoke @s only careerpvp:left_ok
advancement revoke @s only careerpvp:right_ok
advancement revoke @s only careerpvp:jumppad_ok

execute at @e[type=armor_stand,tag=mapcenter] run spreadplayers ~ ~ 15 160 true @a[team=!]

clear @a[team=,gamemode=!creative]
scoreboard players set @a[team=,gamemode=!creative] spec 1
execute as @a[scores={spec=1..}] run tp @s @r[team=!]

tag @e[type=armor_stand,tag=spawn] add ingame
tag @e[type=armor_stand,tag=respawn] add ingame
tag @e[type=armor_stand,tag=mob_refresh] add ingame
tag @e[type=armor_stand,tag=mapcenter] add ingame

execute store result bossbar match_timer max run scoreboard players get match_time int_val
scoreboard players operation match_time timer = match_time int_val
bossbar set match_timer players @a

gamerule sendCommandFeedback false
scoreboard players set match_end int_val 0