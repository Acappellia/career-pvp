teleport @a[gamemode=!creative] @e[type=armor_stand,tag=spawn,limit=1]

scoreboard objectives remove spec
scoreboard objectives add spec dummy

gamemode adventure @a[gamemode=!creative]

replaceitem entity @a armor.head air

tag @a remove death_career_select
tag @a remove dead
scoreboard players set @a death_cd 21