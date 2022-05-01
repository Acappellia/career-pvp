title @a title {"text":"作 战 结 束","color":"yellow"}

effect give @a minecraft:resistance 10000 9 true
effect give @a minecraft:instant_health 1 9

clear @a[gamemode=!creative]

tellraw @p[distance=..15] "请输入 /setspawn default 以更新重生点"
teleport @p[distance=..15] @e[type=armor_stand,tag=spawn,limit=1]

tag @e[type=armor_stand,tag=spawn] remove ingame
tag @e[type=armor_stand,tag=respawn] remove ingame

tag @a remove death_career_select
tag @a remove dead
scoreboard players set @a death_cd 21

gamerule sendCommandFeedback true