tag @p[distance=..3,tag=dead,gamemode=!spectator] add tp_d
execute as @a[tag=!dead,sort=random] at @s if score @s team = @p[tag=tp_d] team run spreadplayers ~ ~ 0 5 true @p[tag=tp_d]
tag @p[tag=tp_d,distance=10..] remove dead
effect give @p[tag=tp_d] minecraft:instant_health 1 9
scoreboard players set @p[tag=tp_d] mana 20
tag @a remove tp_d 