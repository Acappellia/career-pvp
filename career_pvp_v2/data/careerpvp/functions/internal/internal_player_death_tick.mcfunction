execute if score @s killed_by_t1 matches 1.. run function careerpvp:internal/killed_stat/killed_by_1
execute if score @s killed_by_t2 matches 1.. run function careerpvp:internal/killed_stat/killed_by_2
execute if score @s killed_by_t3 matches 1.. run function careerpvp:internal/killed_stat/killed_by_3
execute if score @s killed_by_t4 matches 1.. run function careerpvp:internal/killed_stat/killed_by_4
execute if score @s killed_by_t5 matches 1.. run function careerpvp:internal/killed_stat/killed_by_5
execute if score @s killed_by_t6 matches 1.. run function careerpvp:internal/killed_stat/killed_by_6
execute if score @s killed_by_t7 matches 1.. run function careerpvp:internal/killed_stat/killed_by_7
execute if score @s killed_by_t8 matches 1.. run function careerpvp:internal/killed_stat/killed_by_8
execute if score @s killed_by_t9 matches 1.. run function careerpvp:internal/killed_stat/killed_by_9
execute if score @s killed_by_t10 matches 1.. run function careerpvp:internal/killed_stat/killed_by_10
execute if score @s killed_by_t11 matches 1.. run function careerpvp:internal/killed_stat/killed_by_11
execute if score @s killed_by_t12 matches 1.. run function careerpvp:internal/killed_stat/killed_by_12
execute if score @s killed_by_t13 matches 1.. run function careerpvp:internal/killed_stat/killed_by_13
execute if score @s killed_by_t14 matches 1.. run function careerpvp:internal/killed_stat/killed_by_14
execute if score @s killed_by_t15 matches 1.. run function careerpvp:internal/killed_stat/killed_by_15
execute if score @s killed_by_t16 matches 1.. run function careerpvp:internal/killed_stat/killed_by_16

scoreboard players set @s kill_life 0
scoreboard players operation @s death_cd = revive_time int_val
tag @s add dead

execute if score @s killed_by_a matches 1.. at @s run function careerpvp:mobs/tick_mobkilled_a
execute if score @s killed_by_b matches 1.. at @s run function careerpvp:mobs/tick_mobkilled_b
execute if score @s killed_by_c matches 1.. at @s run function careerpvp:mobs/tick_mobkilled_c 
execute if score @s killed_by_iron matches 1.. at @s run function careerpvp:mobs/tick_mobkilled_iron 

scoreboard players reset @s death_inter
