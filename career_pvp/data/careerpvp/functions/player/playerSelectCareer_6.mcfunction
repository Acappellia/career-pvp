tag @p[distance=..3,gamemode=!spectator] add choose_6
execute as @p[distance=..20,tag=choose_6 ] at @s run execute as @a if score @s team = @p team if score @s career matches 6 run tag @p remove choose_6
execute as @p[distance=..20,tag=choose_6 ] at @s run execute as @a if score @s team = @p team if score @s career matches 6 run tellraw @p "不可以选择与队友重复的职业！"
clear @p[distance=..20,tag=choose_6 ] 
scoreboard players set @p[distance=..20,tag=choose_6 ] give_item 6
scoreboard players set @p[distance=..20,tag=choose_6 ] career 6
tag @a remove choose_6