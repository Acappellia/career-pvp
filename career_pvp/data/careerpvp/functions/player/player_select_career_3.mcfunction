tag @p[distance=..3,gamemode=!spectator] add choose_3
execute as @p[distance=..20,tag=choose_3 ] at @s run execute as @a if score @s team = @p team if score @s career matches 3 run tag @p remove choose_3
execute as @p[distance=..20,tag=choose_3 ] at @s run execute as @a if score @s team = @p team if score @s career matches 3 run tellraw @p "不可以选择与队友重复的职业！"
clear @p[distance=..20,tag=choose_3 ] 
scoreboard players set @p[distance=..20,tag=choose_3 ] give_item 3
scoreboard players set @p[distance=..20,tag=choose_3 ] career 3
tag @a remove choose_3