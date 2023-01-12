tag @p[distance=..3,tag=dead,gamemode=!spectator] add tp_r
execute as @p[tag=tp_r] run function careerpvp:respawn/rp_tp
tag @p[tag=tp_r,distance=10..] remove dead
effect give @p[tag=tp_r] minecraft:instant_health 1 9
scoreboard players set @p[tag=tp_r] mana 20
tag @a remove tp_r