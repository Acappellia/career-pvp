scoreboard players add mob_interval timer 1
execute if score mob_interval timer = mob_interval int_val run scoreboard players set mob_interval timer 0 
execute as @e[tag=mob_refresh,tag=ingame] if score mob_interval timer matches 0 run function careerpvp:mobs/mob_tp

execute as @a[scores={mobkill_a=1..}] run scoreboard players add @s mobkill 1
execute as @a[scores={mobkill_b=1..}] run scoreboard players add @s mobkill 1
execute as @a[scores={mobkill_c=1..}] run scoreboard players add @s mobkill 1

execute as @a[team=1 ,scores={mobkill_a=1..}] run scoreboard players add Team.1 score 1
execute as @a[team=2 ,scores={mobkill_a=1..}] run scoreboard players add Team.2 score 1
execute as @a[team=3 ,scores={mobkill_a=1..}] run scoreboard players add Team.3 score 1
execute as @a[team=4 ,scores={mobkill_a=1..}] run scoreboard players add Team.4 score 1
execute as @a[team=5 ,scores={mobkill_a=1..}] run scoreboard players add Team.5 score 1
execute as @a[team=6 ,scores={mobkill_a=1..}] run scoreboard players add Team.6 score 1
execute as @a[team=7 ,scores={mobkill_a=1..}] run scoreboard players add Team.7 score 1
execute as @a[team=8 ,scores={mobkill_a=1..}] run scoreboard players add Team.8 score 1
execute as @a[team=9 ,scores={mobkill_a=1..}] run scoreboard players add Team.9 score 1
execute as @a[team=10 ,scores={mobkill_a=1..}] run scoreboard players add Team.10 score 1
execute as @a[team=11 ,scores={mobkill_a=1..}] run scoreboard players add Team.11 score 1
execute as @a[team=12 ,scores={mobkill_a=1..}] run scoreboard players add Team.12 score 1
execute as @a[team=13 ,scores={mobkill_a=1..}] run scoreboard players add Team.13 score 1
execute as @a[team=14 ,scores={mobkill_a=1..}] run scoreboard players add Team.14 score 1
execute as @a[team=15 ,scores={mobkill_a=1..}] run scoreboard players add Team.15 score 1
execute as @a[team=16 ,scores={mobkill_a=1..}] run scoreboard players add Team.16 score 1

execute as @a[team=1 ,scores={mobkill_b=1..}] run scoreboard players add Team.1 score 2
execute as @a[team=2 ,scores={mobkill_b=1..}] run scoreboard players add Team.2 score 2
execute as @a[team=3 ,scores={mobkill_b=1..}] run scoreboard players add Team.3 score 2
execute as @a[team=4 ,scores={mobkill_b=1..}] run scoreboard players add Team.4 score 2
execute as @a[team=5 ,scores={mobkill_b=1..}] run scoreboard players add Team.5 score 2
execute as @a[team=6 ,scores={mobkill_b=1..}] run scoreboard players add Team.6 score 2
execute as @a[team=7 ,scores={mobkill_b=1..}] run scoreboard players add Team.7 score 2
execute as @a[team=8 ,scores={mobkill_b=1..}] run scoreboard players add Team.8 score 2
execute as @a[team=9 ,scores={mobkill_b=1..}] run scoreboard players add Team.9 score 2
execute as @a[team=10 ,scores={mobkill_b=1..}] run scoreboard players add Team.10 score 2
execute as @a[team=11 ,scores={mobkill_b=1..}] run scoreboard players add Team.11 score 2
execute as @a[team=12 ,scores={mobkill_b=1..}] run scoreboard players add Team.12 score 2
execute as @a[team=13 ,scores={mobkill_b=1..}] run scoreboard players add Team.13 score 2
execute as @a[team=14 ,scores={mobkill_b=1..}] run scoreboard players add Team.14 score 2
execute as @a[team=15 ,scores={mobkill_b=1..}] run scoreboard players add Team.15 score 2
execute as @a[team=16 ,scores={mobkill_b=1..}] run scoreboard players add Team.16 score 2

execute as @a[team=1 ,scores={mobkill_c=1..}] run scoreboard players add Team.1 score 3
execute as @a[team=2 ,scores={mobkill_c=1..}] run scoreboard players add Team.2 score 3
execute as @a[team=3 ,scores={mobkill_c=1..}] run scoreboard players add Team.3 score 3
execute as @a[team=4 ,scores={mobkill_c=1..}] run scoreboard players add Team.4 score 3
execute as @a[team=5 ,scores={mobkill_c=1..}] run scoreboard players add Team.5 score 3
execute as @a[team=6 ,scores={mobkill_c=1..}] run scoreboard players add Team.6 score 3
execute as @a[team=7 ,scores={mobkill_c=1..}] run scoreboard players add Team.7 score 3
execute as @a[team=8 ,scores={mobkill_c=1..}] run scoreboard players add Team.8 score 3
execute as @a[team=9 ,scores={mobkill_c=1..}] run scoreboard players add Team.9 score 3
execute as @a[team=10 ,scores={mobkill_c=1..}] run scoreboard players add Team.10 score 3
execute as @a[team=11 ,scores={mobkill_c=1..}] run scoreboard players add Team.11 score 3
execute as @a[team=12 ,scores={mobkill_c=1..}] run scoreboard players add Team.12 score 3
execute as @a[team=13 ,scores={mobkill_c=1..}] run scoreboard players add Team.13 score 3
execute as @a[team=14 ,scores={mobkill_c=1..}] run scoreboard players add Team.14 score 3
execute as @a[team=15 ,scores={mobkill_c=1..}] run scoreboard players add Team.15 score 3
execute as @a[team=16 ,scores={mobkill_c=1..}] run scoreboard players add Team.16 score 3

scoreboard players remove @a[scores={mobkill_a=1..}] mobkill_a 1
scoreboard players remove @a[scores={mobkill_b=1..}] mobkill_b 1
scoreboard players remove @a[scores={mobkill_c=1..}] mobkill_c 1