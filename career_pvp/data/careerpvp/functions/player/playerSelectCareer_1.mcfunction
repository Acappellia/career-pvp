tag @p[distance=..3,gamemode=!spectator] add choose_1
execute as @p[distance=..20,tag=choose_1 ] at @s run execute as @a if score @s team = @p team if score @s career matches 1 run tag @p remove choose_1
execute as @p[distance=..20,tag=choose_1 ] at @s run execute as @a if score @s team = @p team if score @s career matches 1 run tellraw @p "不可以选择与队友重复的职业！"
clear @p[distance=..20,tag=choose_1 ] 
scoreboard players set @p[distance=..20,tag=choose_1 ] give_item 1
scoreboard players set @p[distance=..20,tag=choose_1 ] career 1
tag @a remove choose_1