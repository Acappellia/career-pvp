execute as @s[tag=!dead] unless score @s archer_ultcharge matches 1.. if score ingame int_val matches 1.. run scoreboard players add @s all_ultcharge 20
execute if score @s all_ultcharge matches 72000..100000 run advancement grant @s only careerpvp:ult_ok_druid
execute if score @s all_ultcharge matches 72000..100000 run tellraw @s [{"text": ">>","color": "white","bold": false},{"text":"\n妖精们在向你低语。","color":"yellow","bold": true},{"text": "\n[终极技能已就绪]","color": "gray","bold": true},{"text": "\n>>","color": "white","bold": false}]
execute if score @s all_ultcharge matches 72000..100000 run scoreboard players set @s all_ultcharge 100001
execute if score cutscene timer matches 0.. run function careerpvp:rpgitem/ultimatebar

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