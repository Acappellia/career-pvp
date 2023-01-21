tag @p[distance=..3,tag=dead,gamemode=!spectator] add tp_d
execute as @a[tag=!dead,sort=random] at @s if score @s team = @p[tag=tp_d] team run tp @p[tag=tp_d] ~ ~5 ~
execute as @p[tag=tp_d,distance=10..] at @s run function careerpvp:respawn/unstuck_loop
effect give @p[tag=tp_d,distance=10..] minecraft:slowness 3 4
effect give @p[tag=tp_d,distance=10..] minecraft:slow_falling 3 4
execute as @p[tag=tp_d,distance=10..] at @s run particle totem_of_undying ~ ~ ~ 0 0 0 0.5 50
execute as @p[tag=tp_d,distance=10..] at @s run playsound block.beacon.power_select master @a ~ ~ ~ 1 0.9
tag @p[tag=tp_d,distance=10..] remove dead
effect give @p[tag=tp_d] minecraft:instant_health 1 9
scoreboard players set @p[tag=tp_d] mana 20
tag @a remove tp_d 