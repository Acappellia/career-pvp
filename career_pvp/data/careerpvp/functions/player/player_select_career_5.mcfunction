tag @p[distance=..3,gamemode=!spectator] add choose_5
execute as @p[distance=..20,tag=choose_5 ] at @s run execute as @a if score @s team = @p team if score @s career matches 5 run tag @p remove choose_5
execute as @p[distance=..20,tag=choose_5 ] at @s run execute as @a if score @s team = @p team if score @s career matches 5 run tellraw @p "不可以选择与队友重复的职业！"
clear @p[distance=..20,tag=choose_5 ] 
scoreboard players set @p[distance=..20,tag=choose_5 ] give_item 5
scoreboard players set @p[distance=..20,tag=choose_5 ] career 5
tag @a remove choose_5