kill @e[type=armor_stand,tag=rp_origin]
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["rp_origin"]}
execute as @e[type=armor_stand,tag=rp_origin] at @p run tp @s ~ ~ ~ ~ ~

scoreboard objectives remove rp_index
scoreboard objectives add rp_index dummy
scoreboard objectives remove rp_x
scoreboard objectives add rp_x dummy
scoreboard objectives remove rp_y
scoreboard objectives add rp_y dummy
scoreboard objectives remove rp_z
scoreboard objectives add rp_z dummy