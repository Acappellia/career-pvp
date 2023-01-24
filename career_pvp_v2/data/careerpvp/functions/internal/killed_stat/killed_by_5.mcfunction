execute if score @s kill_life matches 5..6 run scoreboard players add Team.5 score 3
execute if score @s kill_life matches 7..8 run scoreboard players add Team.5 score 6
execute if score @s kill_life matches 9..10 run scoreboard players add Team.5 score 10
execute if score @s kill_life matches 11.. run scoreboard players add Team.5 score 15
execute if score @s kill_life matches 5.. run tellraw @a [{"selector":"@s"},{"text":" 的悬赏已被 队伍 ","color":"gold"},{"text":"5","color":"yellow"},{"text":" 拿下！","color":"gold"}]

scoreboard players reset @s killed_by_t5