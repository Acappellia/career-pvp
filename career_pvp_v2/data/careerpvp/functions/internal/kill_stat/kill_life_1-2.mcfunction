scoreboard players set @s kill_score 1
scoreboard players operation @s kill_score *= @s kill_inter
execute as @s run function careerpvp:internal/kill_stat/kill_addscore