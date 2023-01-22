execute as @e[tag=mobspawn_a,sort=random,limit=1] at @s unless entity @e[distance=..5,tag=mob_a] at @e[tag=mob_refresh,limit=1] run tp @e[distance=..20,tag=mob_a,limit=1] @s
execute as @e[tag=mobspawn_b,sort=random,limit=1] at @s unless entity @e[distance=..5,tag=mob_b] at @e[tag=mob_refresh,limit=1] run tp @e[distance=..20,tag=mob_b,limit=1] @s
execute as @e[tag=mobspawn_c,sort=random,limit=1] at @s unless entity @e[distance=..5,tag=mob_c] at @e[tag=mob_refresh,limit=1] run tp @e[distance=..20,tag=mob_c,limit=1] @s
