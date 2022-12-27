execute at @e[type=armor_stand, tag=spawn, tag=ingame] run scoreboard players set @a[distance=..10,team=,gamemode=!creative] spec 1
execute at @e[type=armor_stand, tag=spawn, tag=ingame] run tag @a[team=,distance=..11,gamemode=!creative] add join_tp
execute at @e[type=armor_stand,tag=mapcenter] run spreadplayers ~ ~ 40 200 true @a[tag=join_tp]
execute as @a[tag=join_tp] run title @s times 0 10 5 
tag @a remove join_tp

execute at @e[type=armor_stand, tag=spawn, tag=ingame] run tag @a[distance=..10] remove death_career_select