execute store result score @s rp_x run data get entity @s Pos[0] 1
execute store result score @s rp_y run data get entity @s Pos[1] 1
execute store result score @s rp_z run data get entity @s Pos[2] 1

scoreboard players operation @s rp_x -= @e[type=armor_stand,tag=rp_selected,limit=1] rp_x 
scoreboard players operation @s rp_y -= @e[type=armor_stand,tag=rp_selected,limit=1] rp_y
scoreboard players operation @s rp_z -= @e[type=armor_stand,tag=rp_selected,limit=1] rp_z 

execute if score @s rp_x matches -1..1 if score @s rp_y matches -1..1 if score @s rp_z matches -1..1 run tag @s add rp_tpdone
execute as @s[tag=rp_tpdone] at @s unless block ~ ~ ~ air run function careerpvp:respawn/unstuck_loop

execute as @s[tag=!rp_tpdone] at @s if score @s rp_x matches 2.. run tp ~-2 ~ ~
execute as @s[tag=!rp_tpdone] at @s if score @s rp_x matches ..-2 run tp ~2 ~ ~
execute as @s[tag=!rp_tpdone] at @s if score @s rp_y matches 2.. run tp ~ ~-2 ~
execute as @s[tag=!rp_tpdone] at @s if score @s rp_y matches ..-2 run tp ~ ~2 ~
execute as @s[tag=!rp_tpdone] at @s if score @s rp_z matches 2.. run tp ~ ~ ~-2
execute as @s[tag=!rp_tpdone] at @s if score @s rp_z matches ..-2 run tp ~ ~ ~2
execute as @s[tag=!rp_tpdone] at @s run function careerpvp:respawn/rp_tploop