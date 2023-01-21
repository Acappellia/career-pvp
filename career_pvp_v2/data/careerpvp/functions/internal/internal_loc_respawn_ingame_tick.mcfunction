execute at @e[type=armor_stand, tag=respawn, tag=ingame] run scoreboard players set @a[distance=..10,team=,gamemode=!creative] spec 1

execute at @e[type=armor_stand, tag=respawn, tag=ingame] run tag @a[distance=..10,tag=!dead,team=!,gamemode=!creative] add login
execute as @a[tag=login] run scoreboard players set @s kill_life 0
scoreboard players operation @a[tag=login] death_cd = revive_time int_val
tag @a[tag=login] add dead
tag @a remove login

execute at @e[type=armor_stand, tag=respawn, tag=ingame] run effect give @a[distance=..10] minecraft:instant_health 1 9

execute at @e[type=armor_stand, tag=respawn, tag=ingame] run tag @a[distance=..10] remove death_career_select