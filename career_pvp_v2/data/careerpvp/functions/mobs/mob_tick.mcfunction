scoreboard players add mob_interval timer 1
execute if score mob_interval timer = mob_interval int_val run scoreboard players set mob_interval timer 0 
execute as @e[tag=mob_refresh] if score mob_interval timer matches 0 run function careerpvp:mobs/mob_tp

execute as @a[scores={mobkill_a=1..}] at @s run function careerpvp:mobs/tick_mobkill_a
execute as @a[scores={mobkill_b=1..}] at @s run function careerpvp:mobs/tick_mobkill_b
execute as @a[scores={mobkill_c=1..}] at @s run function careerpvp:mobs/tick_mobkill_c
execute as @a[scores={mobkill_iron=1..}] at @s run function careerpvp:mobs/tick_mobkill_iron