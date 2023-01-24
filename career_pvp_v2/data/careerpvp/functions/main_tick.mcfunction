gamemode adventure @a[gamemode=survival]
gamemode spectator @a[scores={spec=1..},gamemode=!creative]
effect give @a minecraft:saturation 10 0 true
tag @a[gamemode=!adventure] add spec
tag @a[gamemode=adventure] remove spec
kill @e[type=item]
scoreboard players add start_delay timer 1
scoreboard players add cutscene timer 1
execute store result bossbar match_timer value run scoreboard players remove match_time timer 1
execute as @e[type=armor_stand, tag=spawn, tag=ingame] run bossbar set match_timer players @a

execute if score show_cutscene int_val matches 1.. if score cutscene timer matches ..-1 run function careerpvp:cutscene/tick_cutscene
execute if score start_delay timer matches -200..-1 run function careerpvp:game/start_timer
execute if score match_time timer matches 1.. run function careerpvp:game/stop_timer 

function careerpvp:internal/internal_update_teammate_tick

execute as @a[scores={kill_inter=1..}] at @s run function careerpvp:internal/internal_player_kill_tick
execute as @a[scores={death_inter=1..}] at @s run function careerpvp:internal/internal_player_death_tick
execute as @a[tag=dead] at @s run function careerpvp:internal/tick_revive_countdown
function careerpvp:internal/tick_functional

execute if score tick_item int_val matches 1.. run function careerpvp:rpgitem/tick_item
execute if score allow_jumppad int_val matches 1.. run function careerpvp:jumppad/tick_jumppad
execute if score show_manabar int_val matches 1.. run function careerpvp:internal/internal_manabar
execute if score show_effect_range int_val matches 1.. run function careerpvp:effect/effect_range_loop
execute if score show_cd_advancement int_val matches 1.. run function careerpvp:advancements/tick_advancement_revoke

execute if score ingame int_val matches 1 run function careerpvp:game/tick_ingame