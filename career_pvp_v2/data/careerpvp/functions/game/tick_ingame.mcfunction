title @a[tag=!dead,team=!,distance=197..,gamemode=adventure] actionbar {"text":"即将离开地图边界，请返回地图作战区域！","color":"red"}
effect give @a[tag=!dead,team=!,distance=210..,gamemode=adventure] slowness 1 2
effect give @a[tag=!dead,team=!,distance=215..,gamemode=adventure] wither 1 9
effect give @a[tag=!dead,team=!,distance=225..,gamemode=adventure] instant_damage 1 1

execute as @e[type=armor_stand, tag=respawn] at @s run function careerpvp:internal/internal_loc_respawn_ingame_tick
execute as @e[type=armor_stand, tag=spawn] at @s run function careerpvp:internal/internal_loc_spawn_ingame_tick
execute if score spawn_mobs int_val matches 1.. run function careerpvp:mobs/mob_tick