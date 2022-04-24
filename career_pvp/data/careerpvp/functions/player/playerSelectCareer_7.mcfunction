tag @p[distance=..3,gamemode=!spectator] add choose_7
execute as @p[distance=..20,tag=choose_7 ] at @s run execute as @a if score @s team = @p team if score @s career matches 7 run tag @p remove choose_7
execute as @p[distance=..20,tag=choose_7 ] at @s run execute as @a if score @s team = @p team if score @s career matches 7 run tellraw @p "不可以选择与队友重复的职业！"
clear @p[distance=..20,tag=choose_7 ] 
scoreboard players set @p[distance=..20,tag=choose_7 ] give_item 7
scoreboard players set @p[distance=..20,tag=choose_7 ] career 7
tag @a remove choose_7