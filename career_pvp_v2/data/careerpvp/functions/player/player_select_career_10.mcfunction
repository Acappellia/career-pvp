tag @p[distance=..3,gamemode=!spectator] add choose_10
execute as @p[distance=..20,tag=choose_10 ] at @s run execute as @e[tag=team] if score @s team = @p team if entity @s[tag=chosen_10] run tellraw @p "不可以选择与队友重复的职业"
execute as @p[distance=..20,tag=choose_10 ] at @s run execute as @e[tag=team] if score @s team = @p team if entity @s[tag=chosen_10] run tag @p remove choose_10
clear @p[distance=..20,tag=choose_10 ] 
scoreboard players set @p[distance=..20,tag=choose_10 ] give_item 10
execute as @p[distance=..20,tag=choose_10,scores={career=2} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_2
execute as @p[distance=..20,tag=choose_10,scores={career=3} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_3
execute as @p[distance=..20,tag=choose_10,scores={career=4} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_4
execute as @p[distance=..20,tag=choose_10,scores={career=5} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_5
execute as @p[distance=..20,tag=choose_10,scores={career=6} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_6
execute as @p[distance=..20,tag=choose_10,scores={career=7} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_7
execute as @p[distance=..20,tag=choose_10,scores={career=8} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_8
execute as @p[distance=..20,tag=choose_10,scores={career=9} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_9
execute as @p[distance=..20,tag=choose_10,scores={career=1} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_1
execute as @p[distance=..20,tag=choose_10,scores={career=11} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_11
execute as @p[distance=..20,tag=choose_10,scores={career=12} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_12
execute as @p[distance=..20,tag=choose_10 ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s add chosen_10
scoreboard players set @p[distance=..20,tag=choose_10 ] career 10
title @p[distance=..20,tag=choose_10 ] times 0 10 5
title @p[distance=..20,tag=choose_10 ] subtitle ""
title @p[distance=..20,tag=choose_10 ] title ""
tag @a remove choose_10