execute as @a unless score @s kill_life matches 3.. run item replace entity @s armor.feet with air
execute as @a[scores={kill_successive=1..}] run scoreboard players remove @s kill_timer 1
execute as @a[scores={kill_timer=0}] run scoreboard players reset @s kill_successive

execute as @a[scores={death_timer=0}] at @s run particle poof ~ ~ ~ 0.3 0.8 0.3 0.05 50
execute as @a[scores={death_timer=0}] at @s run playsound entity.cat.death master @a ~ ~ ~ 1 1

scoreboard players set @a[team=,scores={death_cd=..0}] death_cd 21
scoreboard players add @a death_cd 1