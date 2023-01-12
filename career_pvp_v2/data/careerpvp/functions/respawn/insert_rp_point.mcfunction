execute as @e[type=armor_stand,tag=rp_origin] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["rp_point","newpoint"]}
scoreboard players set @e[type=armor_stand,tag=newpoint] rp_index 0
execute as @e[type=armor_stand,tag=rp_point] run scoreboard players add @s rp_index 1
execute store result score @e[type=armor_stand,tag=newpoint] rp_x run data get entity @p Pos[0] 1
execute store result score @e[type=armor_stand,tag=newpoint] rp_y run data get entity @p Pos[1] 1
execute store result score @e[type=armor_stand,tag=newpoint] rp_z run data get entity @p Pos[2] 1
tag @e[type=armor_stand] remove newpoint