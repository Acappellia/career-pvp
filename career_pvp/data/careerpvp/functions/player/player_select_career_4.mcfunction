tag @p[distance=..3,gamemode=!spectator] add choose_4
execute as @p[distance=..20,tag=choose_4 ] at @s run execute as @a if score @s team = @p team if score @s career matches 4 run tag @p remove choose_4
execute as @p[distance=..20,tag=choose_4 ] at @s run execute as @a if score @s team = @p team if score @s career matches 4 run tellraw @p "不可以选择与队友重复的职业！"
clear @p[distance=..20,tag=choose_4 ] 
scoreboard players set @p[distance=..20,tag=choose_4 ] give_item 4
scoreboard players set @p[distance=..20,tag=choose_4 ] career 4
tag @a remove choose_4