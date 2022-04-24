tag @p[distance=..3,gamemode=!spectator] add choose_10
execute as @p[distance=..20,tag=choose_10 ] at @s run execute as @a if score @s team = @p team if score @s career matches 10 run tag @p remove choose_10
execute as @p[distance=..20,tag=choose_10 ] at @s run execute as @a if score @s team = @p team if score @s career matches 10 run tellraw @p "不可以选择与队友重复的职业！"
clear @p[distance=..20,tag=choose_10 ] 
scoreboard players set @p[distance=..20,tag=choose_10 ] give_item 10
scoreboard players set @p[distance=..20,tag=choose_10 ] career 10
tag @a remove choose_10