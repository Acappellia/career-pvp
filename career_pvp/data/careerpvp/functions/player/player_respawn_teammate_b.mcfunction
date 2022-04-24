tag @p[distance=..3,tag=dead,gamemode=!spectator] add tp_b
execute as @a[tag=!dead,sort=random] at @s if score @s team = @p[tag=tp_b] team run spreadplayers ~ ~ 0 5 true @p[tag=tp_b]
tag @p[tag=tp_b,distance=10..] remove dead
effect give @p[tag=tp_b] minecraft:instant_health 1 9
tag @a remove tp_b 