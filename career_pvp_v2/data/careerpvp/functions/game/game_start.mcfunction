title @a times 0 10 5 
title @a title {"text":"作 战 开 始","color":"green"}

function careerpvp:game/game_reset_stat

data modify storage careerpvp:log match prepend value {}
execute store result storage careerpvp:log match[0].id int 1 run scoreboard players add match_count int_val 1
execute as @a[team=1] run data modify storage careerpvp:log match[0].team1.players append from entity @s UUID
execute as @a[team=2] run data modify storage careerpvp:log match[0].team2.players append from entity @s UUID
execute as @a[team=3] run data modify storage careerpvp:log match[0].team3.players append from entity @s UUID
execute as @a[team=4] run data modify storage careerpvp:log match[0].team4.players append from entity @s UUID
execute as @a[team=5] run data modify storage careerpvp:log match[0].team5.players append from entity @s UUID
execute as @a[team=6] run data modify storage careerpvp:log match[0].team6.players append from entity @s UUID
execute as @a[team=7] run data modify storage careerpvp:log match[0].team7.players append from entity @s UUID
execute as @a[team=8] run data modify storage careerpvp:log match[0].team8.players append from entity @s UUID
execute as @a[team=9] run data modify storage careerpvp:log match[0].team9.players append from entity @s UUID
execute as @a[team=10] run data modify storage careerpvp:log match[0].team10.players append from entity @s UUID
execute as @a[team=11] run data modify storage careerpvp:log match[0].team11.players append from entity @s UUID
execute as @a[team=12] run data modify storage careerpvp:log match[0].team12.players append from entity @s UUID
execute as @a[team=13] run data modify storage careerpvp:log match[0].team13.players append from entity @s UUID
execute as @a[team=14] run data modify storage careerpvp:log match[0].team14.players append from entity @s UUID
execute as @a[team=15] run data modify storage careerpvp:log match[0].team15.players append from entity @s UUID
execute as @a[team=16] run data modify storage careerpvp:log match[0].team16.players append from entity @s UUID
execute store result storage careerpvp:log match[0].team1.members int 1 run scoreboard players get Team.1 member
execute store result storage careerpvp:log match[0].team2.members int 1 run scoreboard players get Team.2 member
execute store result storage careerpvp:log match[0].team3.members int 1 run scoreboard players get Team.3 member
execute store result storage careerpvp:log match[0].team4.members int 1 run scoreboard players get Team.4 member
execute store result storage careerpvp:log match[0].team5.members int 1 run scoreboard players get Team.5 member
execute store result storage careerpvp:log match[0].team6.members int 1 run scoreboard players get Team.6 member
execute store result storage careerpvp:log match[0].team7.members int 1 run scoreboard players get Team.7 member
execute store result storage careerpvp:log match[0].team8.members int 1 run scoreboard players get Team.8 member
execute store result storage careerpvp:log match[0].team9.members int 1 run scoreboard players get Team.9 member
execute store result storage careerpvp:log match[0].team10.members int 1 run scoreboard players get Team.10 member
execute store result storage careerpvp:log match[0].team11.members int 1 run scoreboard players get Team.11 member
execute store result storage careerpvp:log match[0].team12.members int 1 run scoreboard players get Team.12 member
execute store result storage careerpvp:log match[0].team13.members int 1 run scoreboard players get Team.13 member
execute store result storage careerpvp:log match[0].team14.members int 1 run scoreboard players get Team.14 member
execute store result storage careerpvp:log match[0].team15.members int 1 run scoreboard players get Team.15 member
execute store result storage careerpvp:log match[0].team16.members int 1 run scoreboard players get Team.16 member

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

scoreboard players set ingame int_val 1

execute store result bossbar match_timer max run scoreboard players get match_time int_val
scoreboard players operation match_time timer = match_time int_val
bossbar set match_timer players @a

gamerule sendCommandFeedback false
scoreboard players set match_end int_val 0
scoreboard players set @a all_ultcharge 0