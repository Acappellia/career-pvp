execute as @s[team=1] run bossbar set minecraft:druid_golemhealth_1 players @a[team=1]
execute store result bossbar minecraft:druid_golemhealth_1 value run data get entity @s[team=1] Health 1
execute as @s[team=2] run bossbar set minecraft:druid_golemhealth_2 players @a[team=2]
execute store result bossbar minecraft:druid_golemhealth_2 value run data get entity @s[team=2] Health 1
execute as @s[team=3] run bossbar set minecraft:druid_golemhealth_3 players @a[team=3]
execute store result bossbar minecraft:druid_golemhealth_3 value run data get entity @s[team=3] Health 1
execute as @s[team=4] run bossbar set minecraft:druid_golemhealth_4 players @a[team=4]
execute store result bossbar minecraft:druid_golemhealth_4 value run data get entity @s[team=4] Health 1
execute as @s[team=5] run bossbar set minecraft:druid_golemhealth_5 players @a[team=5]
execute store result bossbar minecraft:druid_golemhealth_5 value run data get entity @s[team=5] Health 1
execute as @s[team=6] run bossbar set minecraft:druid_golemhealth_6 players @a[team=6]
execute store result bossbar minecraft:druid_golemhealth_6 value run data get entity @s[team=6] Health 1
execute as @s[team=7] run bossbar set minecraft:druid_golemhealth_7 players @a[team=7]
execute store result bossbar minecraft:druid_golemhealth_7 value run data get entity @s[team=7] Health 1
execute as @s[team=8] run bossbar set minecraft:druid_golemhealth_8 players @a[team=8]
execute store result bossbar minecraft:druid_golemhealth_8 value run data get entity @s[team=8] Health 1
execute as @s[team=9] run bossbar set minecraft:druid_golemhealth_9 players @a[team=9]
execute store result bossbar minecraft:druid_golemhealth_9 value run data get entity @s[team=9] Health 1
execute as @s[team=10] run bossbar set minecraft:druid_golemhealth_10 players @a[team=10]
execute store result bossbar minecraft:druid_golemhealth_10 value run data get entity @s[team=10] Health 1
execute as @s[team=11] run bossbar set minecraft:druid_golemhealth_11 players @a[team=11]
execute store result bossbar minecraft:druid_golemhealth_11 value run data get entity @s[team=11] Health 1
execute as @s[team=12] run bossbar set minecraft:druid_golemhealth_12 players @a[team=12]
execute store result bossbar minecraft:druid_golemhealth_12 value run data get entity @s[team=12] Health 1
execute as @s[team=13] run bossbar set minecraft:druid_golemhealth_13 players @a[team=13]
execute store result bossbar minecraft:druid_golemhealth_13 value run data get entity @s[team=13] Health 1
execute as @s[team=14] run bossbar set minecraft:druid_golemhealth_14 players @a[team=14]
execute store result bossbar minecraft:druid_golemhealth_14 value run data get entity @s[team=14] Health 1
execute as @s[team=15] run bossbar set minecraft:druid_golemhealth_15 players @a[team=15]
execute store result bossbar minecraft:druid_golemhealth_15 value run data get entity @s[team=15] Health 1
execute as @s[team=16] run bossbar set minecraft:druid_golemhealth_16 players @a[team=16]
execute store result bossbar minecraft:druid_golemhealth_16 value run data get entity @s[team=16] Health 1
execute as @a if score @s team = @e[type=minecraft:iron_golem,sort=nearest,limit=1] team run function careerpvp:rpgitem/druid_ult
