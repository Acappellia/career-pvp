tag @p[distance=..3,gamemode=!spectator] add choose_8
execute as @p[distance=..20,tag=choose_8 ] at @s run execute as @a if score @s team = @p team if score @s career matches 8 run tag @p remove choose_8
execute as @p[distance=..20,tag=choose_8 ] at @s run execute as @a if score @s team = @p team if score @s career matches 8 run tellraw @p "不可以选择与队友重复的职业！"
clear @p[distance=..20,tag=choose_8 ] 
scoreboard players set @p[distance=..20,tag=choose_8 ] give_item 8
scoreboard players set @p[distance=..20,tag=choose_8 ] career 8
tag @a remove choose_8