tag @p[distance=..3,gamemode=!spectator] add choose_2
execute as @p[distance=..20,tag=choose_2 ] at @s run execute as @a if score @s team = @p team if score @s career matches 2 run tag @p remove choose_2
execute as @p[distance=..20,tag=choose_2 ] at @s run execute as @a if score @s team = @p team if score @s career matches 2 run tellraw @p "不可以选择与队友重复的职业！"
clear @p[distance=..20,tag=choose_2 ] 
scoreboard players set @p[distance=..20,tag=choose_2 ] give_item 2
scoreboard players set @p[distance=..20,tag=choose_2 ] career 2
tag @a remove choose_2