tag @p[distance=..3,gamemode=!spectator] add choose_3
execute as @p[distance=..20,tag=choose_3 ] at @s run execute as @e[tag=team] if score @s team = @p team if entity @s[tag=chosen_3] run tellraw @p "不可以选择与队友重复的职业"
execute as @p[distance=..20,tag=choose_3 ] at @s run execute as @e[tag=team] if score @s team = @p team if entity @s[tag=chosen_3] run tag @p remove choose_3
clear @p[distance=..20,tag=choose_3 ] 
scoreboard players set @p[distance=..20,tag=choose_3 ] give_item 3
execute as @p[distance=..20,tag=choose_3,scores={career=2} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_2
execute as @p[distance=..20,tag=choose_3,scores={career=1} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_1
execute as @p[distance=..20,tag=choose_3,scores={career=4} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_4
execute as @p[distance=..20,tag=choose_3,scores={career=5} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_5
execute as @p[distance=..20,tag=choose_3,scores={career=6} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_6
execute as @p[distance=..20,tag=choose_3,scores={career=7} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_7
execute as @p[distance=..20,tag=choose_3,scores={career=8} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_8
execute as @p[distance=..20,tag=choose_3,scores={career=9} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_9
execute as @p[distance=..20,tag=choose_3,scores={career=10} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_10
execute as @p[distance=..20,tag=choose_3 ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s add chosen_3
scoreboard players set @p[distance=..20,tag=choose_3 ] career 3
tag @a remove choose_3