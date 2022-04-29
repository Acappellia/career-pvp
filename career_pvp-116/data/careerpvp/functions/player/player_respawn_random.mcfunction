tag @p[distance=..3,tag=dead,gamemode=!spectator] add tp_r
execute at @e[type=armor_stand,tag=mapcenter] run spreadplayers ~ ~ 40 180 true @p[tag=tp_r]
tag @p[tag=tp_r,distance=10..] remove dead
effect give @p[tag=tp_r] minecraft:instant_health 1 9
tag @a remove tp_r