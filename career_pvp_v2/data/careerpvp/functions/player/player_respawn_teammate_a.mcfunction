tag @p[distance=..3,tag=dead,gamemode=!spectator] add tp_a
execute as @a[tag=!dead,sort=random] at @s if score @s team = @p[tag=tp_a] team run spreadplayers ~ ~ 0 5 true @p[tag=tp_a]
tag @p[tag=tp_a,distance=10..] remove dead
effect give @p[tag=tp_a] minecraft:instant_health 1 9
scoreboard players set @p[tag=tp_a] mana 20
tag @a remove tp_a 