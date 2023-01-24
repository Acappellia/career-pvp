execute as @s[scores={kill_life=1..2}] run function careerpvp:internal/kill_stat/kill_life_1-2
execute as @s[scores={kill_life=3}] run function careerpvp:internal/kill_stat/kill_life_3
execute as @s[scores={kill_life=4}] run function careerpvp:internal/kill_stat/kill_life_4
execute as @s[scores={kill_life=5}] run function careerpvp:internal/kill_stat/kill_life_5
execute as @s[scores={kill_life=6}] run function careerpvp:internal/kill_stat/kill_life_6
execute as @s[scores={kill_life=7}] run function careerpvp:internal/kill_stat/kill_life_7
execute as @s[scores={kill_life=8}] run function careerpvp:internal/kill_stat/kill_life_8
execute as @s[scores={kill_life=9}] run function careerpvp:internal/kill_stat/kill_life_9
execute as @s[scores={kill_life=10}] run function careerpvp:internal/kill_stat/kill_life_10
execute as @s[scores={kill_life=11}] run function careerpvp:internal/kill_stat/kill_life_11
execute as @s[scores={kill_life=12}] run function careerpvp:internal/kill_stat/kill_life_12
execute as @s[scores={kill_life=13..}] run function careerpvp:internal/kill_stat/kill_life_13

scoreboard players set @s kill_timer 200
execute as @s[scores={kill_successive=2}] run tellraw @a [{"selector":"@s"},{"text":" 双杀！ ","color":"yellow"}]
execute as @s[scores={kill_successive=3}] run tellraw @a [{"selector":"@s"},{"text":" 三杀！ ","color":"yellow"}]
execute as @s[scores={kill_successive=4}] run tellraw @a [{"selector":"@s"},{"text":" 四杀！ ","color":"yellow"}]
execute as @s[scores={kill_successive=5}] run tellraw @a [{"selector":"@s"},{"text":" 五杀！！ ","color":"yellow"}]
execute as @s[scores={kill_successive=6}] run tellraw @a [{"selector":"@s"},{"text":" 六杀！！ ","color":"yellow"}]
execute as @s[scores={kill_successive=7}] run tellraw @a [{"selector":"@s"},{"text":" 七连杀！！！ ","color":"yellow"}]
execute as @s[scores={kill_successive=8}] run tellraw @a [{"selector":"@s"},{"text":" 八连杀！！！ ","color":"yellow"}]
execute as @s[scores={kill_successive=9}] run tellraw @a [{"selector":"@s"},{"text":" 九连杀！！！！ ","color":"yellow"}]
execute as @s[scores={kill_successive=10}] run tellraw @a [{"selector":"@s"},{"text":" 十连杀！！！！ ","color":"yellow"}]
execute as @s[scores={kill_successive=11..}] run tellraw @a [{"selector":"@s"},{"text":" 仍在连续杀敌！！！！ ","color":"yellow"}]

execute unless score @s kill_successive <= @s kill_suc_max run scoreboard players operation @s kill_suc_max = @s kill_successive
execute unless score @s kill_life <= @s kill_life_max run scoreboard players operation @s kill_life_max = @s kill_life

scoreboard players set @s kill_inter 0