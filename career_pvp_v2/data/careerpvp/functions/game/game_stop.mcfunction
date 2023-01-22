title @a title {"text":"作 战 结 束","color":"yellow"}

effect give @a minecraft:resistance 10000 9 true
effect give @a minecraft:instant_health 1 9

clear @a[gamemode=!creative]

tag @e[type=armor_stand,tag=spawn] remove ingame
tag @e[type=armor_stand,tag=respawn] remove ingame
tag @e[type=armor_stand,tag=mob_refresh] remove ingame
tag @e[type=armor_stand,tag=mapcenter] remove ingame

tag @a remove death_career_select
tag @a remove dead
scoreboard players set @a death_cd 21

teleport @a[gamemode=!creative] @e[type=armor_stand,tag=spawn,limit=1]

scoreboard objectives remove spec
scoreboard objectives add spec dummy

gamemode adventure @a[gamemode=!creative]

gamerule sendCommandFeedback true
