title @a title {"text":"作 战 结 束","color":"yellow"}

execute store result storage careerpvp:log match[0].team1.score int 1 run scoreboard players get Team.1 score
execute store result storage careerpvp:log match[0].team2.score int 1 run scoreboard players get Team.2 score
execute store result storage careerpvp:log match[0].team3.score int 1 run scoreboard players get Team.3 score
execute store result storage careerpvp:log match[0].team4.score int 1 run scoreboard players get Team.4 score
execute store result storage careerpvp:log match[0].team5.score int 1 run scoreboard players get Team.5 score
execute store result storage careerpvp:log match[0].team6.score int 1 run scoreboard players get Team.6 score
execute store result storage careerpvp:log match[0].team7.score int 1 run scoreboard players get Team.7 score
execute store result storage careerpvp:log match[0].team8.score int 1 run scoreboard players get Team.8 score
execute store result storage careerpvp:log match[0].team9.score int 1 run scoreboard players get Team.9 score
execute store result storage careerpvp:log match[0].team10.score int 1 run scoreboard players get Team.10 score
execute store result storage careerpvp:log match[0].team11.score int 1 run scoreboard players get Team.11 score
execute store result storage careerpvp:log match[0].team12.score int 1 run scoreboard players get Team.12 score
execute store result storage careerpvp:log match[0].team13.score int 1 run scoreboard players get Team.13 score
execute store result storage careerpvp:log match[0].team14.score int 1 run scoreboard players get Team.14 score
execute store result storage careerpvp:log match[0].team15.score int 1 run scoreboard players get Team.15 score
execute store result storage careerpvp:log match[0].team16.score int 1 run scoreboard players get Team.16 score

effect give @a minecraft:resistance 10000 9 true
effect give @a minecraft:instant_health 1 9

clear @a[gamemode=!creative]

scoreboard players set ingame int_val 0

tag @a remove death_career_select
tag @a remove dead
scoreboard players set @a death_cd 21
bossbar set match_timer players

teleport @a[gamemode=!creative] @e[type=armor_stand,tag=spawn,limit=1]

scoreboard objectives remove spec
scoreboard objectives add spec dummy

gamemode adventure @a[gamemode=!creative]

gamerule sendCommandFeedback true
scoreboard players set match_end int_val 1

# extra
scoreboard players set @a witch_ultstack 0
scoreboard players set @a archer_rightcharge 0
kill @e[type=minecraft:iron_golem,tag=!toastModel]
kill @e[type=minecraft:zombie]
kill @e[type=minecraft:zombie_villager]
kill @e[type=minecraft:fox]