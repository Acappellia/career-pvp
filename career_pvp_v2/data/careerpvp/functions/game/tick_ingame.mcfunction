execute as @e[type=armor_stand,tag=mapcenter] at @s run function careerpvp:game/out_bound
execute as @e[type=armor_stand, tag=respawn] at @s run function careerpvp:internal/internal_loc_respawn_ingame_tick
execute as @e[type=armor_stand, tag=spawn] at @s run function careerpvp:internal/internal_loc_spawn_ingame_tick
execute if score spawn_mobs int_val matches 1.. run function careerpvp:mobs/mob_tick