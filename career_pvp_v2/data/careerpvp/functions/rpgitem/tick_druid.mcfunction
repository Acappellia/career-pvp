#druid left heal
execute as @s[tag=druid_leftheal] at @s run execute as @a[distance=..8,tag=!druid_leftheal] if score @s team = @p team run effect give @s minecraft:regeneration 1 3 true 
tag @s remove druid_leftheal

#druid sneak heal
execute as @s[tag=druid_sneakheal] at @s run execute as @a[distance=..8] if score @s team = @p team run effect give @s minecraft:regeneration 10 1 true 
tag @s remove druid_sneakheal

#druid ult
execute as @s[scores={druid_ult=0}] at @s run execute as @e[type=iron_golem,tag=druid_golem] if score @s team = @p team run kill @s
scoreboard players add @s[scores={druid_ult=..0}] druid_ult 1
execute as @s[tag=druid_ulttp] at @s run execute as @e[type=minecraft:iron_golem,tag=druid_golem] if score @s team = @p team run teleport @s @p
tag @s remove druid_ulttp