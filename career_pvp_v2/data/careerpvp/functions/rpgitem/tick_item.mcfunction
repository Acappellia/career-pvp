execute as @a[scores={career=1}] at @s run function careerpvp:rpgitem/tick_sorcerer
execute as @a[scores={career=2}] at @s run function careerpvp:rpgitem/tick_druid
execute as @a[scores={career=3}] at @s run function careerpvp:rpgitem/tick_defender
execute as @a[scores={career=4}] at @s run function careerpvp:rpgitem/tick_berserker
execute as @a[scores={career=5}] at @s run function careerpvp:rpgitem/tick_alchemist
execute as @a[scores={career=6}] at @s run function careerpvp:rpgitem/tick_assassin
execute as @a[scores={career=7}] at @s run function careerpvp:rpgitem/tick_archer
execute as @a[scores={career=8}] at @s run function careerpvp:rpgitem/tick_priest
execute as @a[scores={career=9}] at @s run function careerpvp:rpgitem/tick_witch
execute as @a[scores={career=10}] at @s run function careerpvp:rpgitem/tick_blade
execute as @a[scores={career=11}] at @s run function careerpvp:rpgitem/tick_sword

#defender ult:
execute as @e[type=minecraft:area_effect_cloud,tag=defender_ult] at @s run execute as @a[distance=..6] if score @s team = @e[limit=1,sort=nearest,type=minecraft:area_effect_cloud,tag=defender_ult] team run effect give @s minecraft:resistance 1 0 false
execute as @e[type=minecraft:area_effect_cloud,tag=defender_ult] at @s run execute as @a[distance=..6] unless score @s team = @e[limit=1,sort=nearest,type=minecraft:area_effect_cloud,tag=defender_ult] team run effect give @s minecraft:weakness 1 0 false
execute as @e[type=minecraft:area_effect_cloud,tag=defender_ult] at @s unless entity @e[distance=..1,type=minecraft:armor_stand,tag=defender_ult] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["token","defender_ult"],ArmorItems:[{},{},{},{id:"minecraft:netherite_pickaxe",Count:1b,tag:{CustomModelData:4}}]}
execute as @e[type=minecraft:armor_stand,tag=defender_ult] at @s unless entity @e[distance=..1,type=minecraft:area_effect_cloud,tag=defender_ult] run kill @s
scoreboard players set @e[tag=token,tag=defender_ult] eff_r8 -160

#druit ult
execute as @e[type=iron_golem,tag=druid_golem,team=1] run bossbar set minecraft:druid_golemhealth_1 players @a[team=1]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=1] run bossbar set minecraft:druid_golemhealth_1 players
execute store result bossbar minecraft:druid_golemhealth_1 value run data get entity @e[type=iron_golem,tag=druid_golem,team=1,limit=1] Health 1
execute as @e[type=iron_golem,tag=druid_golem,team=2] run bossbar set minecraft:druid_golemhealth_2 players @a[team=2]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=2] run bossbar set minecraft:druid_golemhealth_2 players
execute store result bossbar minecraft:druid_golemhealth_2 value run data get entity @e[type=iron_golem,tag=druid_golem,team=2,limit=1] Health 1
execute as @e[type=iron_golem,tag=druid_golem,team=3] run bossbar set minecraft:druid_golemhealth_3 players @a[team=3]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=3] run bossbar set minecraft:druid_golemhealth_3 players
execute store result bossbar minecraft:druid_golemhealth_3 value run data get entity @e[type=iron_golem,tag=druid_golem,team=3,limit=1] Health 1
execute as @e[type=iron_golem,tag=druid_golem,team=4] run bossbar set minecraft:druid_golemhealth_4 players @a[team=4]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=4] run bossbar set minecraft:druid_golemhealth_4 players
execute store result bossbar minecraft:druid_golemhealth_4 value run data get entity @e[type=iron_golem,tag=druid_golem,team=4,limit=1] Health 1
execute as @e[type=iron_golem,tag=druid_golem,team=5] run bossbar set minecraft:druid_golemhealth_5 players @a[team=5]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=5] run bossbar set minecraft:druid_golemhealth_5 players
execute store result bossbar minecraft:druid_golemhealth_5 value run data get entity @e[type=iron_golem,tag=druid_golem,team=5,limit=1] Health 1
execute as @e[type=iron_golem,tag=druid_golem,team=6] run bossbar set minecraft:druid_golemhealth_6 players @a[team=6]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=6] run bossbar set minecraft:druid_golemhealth_6 players
execute store result bossbar minecraft:druid_golemhealth_6 value run data get entity @e[type=iron_golem,tag=druid_golem,team=6,limit=1] Health 1
execute as @e[type=iron_golem,tag=druid_golem,team=7] run bossbar set minecraft:druid_golemhealth_7 players @a[team=7]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=7] run bossbar set minecraft:druid_golemhealth_7 players
execute store result bossbar minecraft:druid_golemhealth_7 value run data get entity @e[type=iron_golem,tag=druid_golem,team=7,limit=1] Health 1
execute as @e[type=iron_golem,tag=druid_golem,team=8] run bossbar set minecraft:druid_golemhealth_8 players @a[team=8]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=8] run bossbar set minecraft:druid_golemhealth_8 players
execute store result bossbar minecraft:druid_golemhealth_8 value run data get entity @e[type=iron_golem,tag=druid_golem,team=8,limit=1] Health 1
execute as @e[type=iron_golem,tag=druid_golem,team=9] run bossbar set minecraft:druid_golemhealth_9 players @a[team=9]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=9] run bossbar set minecraft:druid_golemhealth_9 players
execute store result bossbar minecraft:druid_golemhealth_9 value run data get entity @e[type=iron_golem,tag=druid_golem,team=9,limit=1] Health 1
execute as @e[type=iron_golem,tag=druid_golem,team=10] run bossbar set minecraft:druid_golemhealth_10 players @a[team=10]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=10] run bossbar set minecraft:druid_golemhealth_10 players
execute store result bossbar minecraft:druid_golemhealth_10 value run data get entity @e[type=iron_golem,tag=druid_golem,team=10,limit=1] Health 1
execute as @e[type=iron_golem,tag=druid_golem,team=11] run bossbar set minecraft:druid_golemhealth_11 players @a[team=11]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=11] run bossbar set minecraft:druid_golemhealth_11 players
execute store result bossbar minecraft:druid_golemhealth_11 value run data get entity @e[type=iron_golem,tag=druid_golem,team=11,limit=1] Health 1
execute as @e[type=iron_golem,tag=druid_golem,team=12] run bossbar set minecraft:druid_golemhealth_12 players @a[team=12]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=12] run bossbar set minecraft:druid_golemhealth_12 players
execute store result bossbar minecraft:druid_golemhealth_12 value run data get entity @e[type=iron_golem,tag=druid_golem,team=12,limit=1] Health 1
execute as @e[type=iron_golem,tag=druid_golem,team=13] run bossbar set minecraft:druid_golemhealth_13 players @a[team=13]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=13] run bossbar set minecraft:druid_golemhealth_13 players
execute store result bossbar minecraft:druid_golemhealth_13 value run data get entity @e[type=iron_golem,tag=druid_golem,team=13,limit=1] Health 1
execute as @e[type=iron_golem,tag=druid_golem,team=14] run bossbar set minecraft:druid_golemhealth_14 players @a[team=14]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=14] run bossbar set minecraft:druid_golemhealth_14 players
execute store result bossbar minecraft:druid_golemhealth_14 value run data get entity @e[type=iron_golem,tag=druid_golem,team=14,limit=1] Health 1
execute as @e[type=iron_golem,tag=druid_golem,team=15] run bossbar set minecraft:druid_golemhealth_15 players @a[team=15]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=15] run bossbar set minecraft:druid_golemhealth_15 players
execute store result bossbar minecraft:druid_golemhealth_15 value run data get entity @e[type=iron_golem,tag=druid_golem,team=15,limit=1] Health 1
execute as @e[type=iron_golem,tag=druid_golem,team=16] run bossbar set minecraft:druid_golemhealth_16 players @a[team=16]
execute unless entity @e[type=iron_golem,tag=druid_golem,team=16] run bossbar set minecraft:druid_golemhealth_16 players
execute store result bossbar minecraft:druid_golemhealth_16 value run data get entity @e[type=iron_golem,tag=druid_golem,team=16,limit=1] Health 1
execute as @e[type=minecraft:iron_golem,tag=druid_golem] at @s run execute as @a if score @s team = @e[type=minecraft:iron_golem,sort=nearest,limit=1] team run function careerpvp:rpgitem/druid_ult

#assassin right reset speed
execute as @e[tag=assassin_rmarker] at @s run execute as @a[scores={assassin_right=..0},distance=2..] if score @s team = @e[tag=assassin_rmarker,sort=nearest,limit=1] setteam run scoreboard players set @s +alt_vector_bypct 1
execute as @e[tag=assassin_rmarker] at @s run execute as @a[scores={assassin_right=..0},distance=..2] if score @s team = @e[tag=assassin_rmarker,sort=nearest,limit=1] setteam run scoreboard players set @s +alt_vector_look 1000

#alchemist left
execute as @a[tag=alchemist_left] at @s anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["alchemist_lpotion","potion_init"],ArmorItems:[{},{},{},{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:3}}]}
execute as @a[tag=alchemist_left] at @s run scoreboard players operation @e[tag=alchemist_lpotion,tag=potion_init,distance=..2] setteam = @s team
execute as @e[tag=alchemist_lpotion,tag=potion_init] at @s store result score @s alchemist_lp_x0 run data get entity @s Pos[0] 100
execute as @e[tag=alchemist_lpotion,tag=potion_init] at @s store result score @s alchemist_lp_y0 run data get entity @s Pos[1] 100
execute as @e[tag=alchemist_lpotion,tag=potion_init] at @s store result score @s alchemist_lp_z0 run data get entity @s Pos[2] 100
execute as @a[tag=alchemist_left] at @s anchored eyes run teleport @e[tag=alchemist_lpotion,tag=potion_init,sort=nearest,limit=1] ^ ^ ^1
execute as @e[tag=alchemist_lpotion,tag=potion_init] at @s store result score @s alchemist_lp_x1 run data get entity @s Pos[0] 100
execute as @e[tag=alchemist_lpotion,tag=potion_init] at @s store result score @s alchemist_lp_y1 run data get entity @s Pos[1] 100
execute as @e[tag=alchemist_lpotion,tag=potion_init] at @s store result score @s alchemist_lp_z1 run data get entity @s Pos[2] 100
execute as @e[tag=alchemist_lpotion,tag=potion_init] store result entity @s Motion[0] double 0.02 run scoreboard players operation @s alchemist_lp_x1 -= @s alchemist_lp_x0
execute as @e[tag=alchemist_lpotion,tag=potion_init] store result entity @s Motion[1] double 0.02 run scoreboard players operation @s alchemist_lp_y1 -= @s alchemist_lp_y0
execute as @e[tag=alchemist_lpotion,tag=potion_init] store result entity @s Motion[2] double 0.02 run scoreboard players operation @s alchemist_lp_z1 -= @s alchemist_lp_z0
tag @a remove alchemist_left
execute as @e[tag=alchemist_lpotion,tag=!potion_init,nbt={OnGround:1b}] at @s run playsound minecraft:entity.splash_potion.break ambient @a ~ ~ ~
execute as @e[tag=alchemist_lpotion,tag=!potion_init,nbt={OnGround:1b}] at @s run particle minecraft:effect ~ ~ ~ 0 0 0 0.1 20
execute as @e[tag=alchemist_lpotion,tag=!potion_init,nbt={OnGround:1b}] at @s run summon area_effect_cloud ~ ~1 ~ {Particle:"sneeze",Radius:4f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:100,DurationOnUse:0f,Age:0,WaitTime:0,Tags:["alchemist_lcloud"]}
execute as @e[tag=alchemist_lpotion,tag=!potion_init,nbt={OnGround:1b}] at @s run scoreboard players operation @e[type=minecraft:area_effect_cloud,distance=..1] setteam = @s setteam
kill @e[type=minecraft:armor_stand,tag=alchemist_lpotion,tag=!potion_init,nbt={OnGround:1b}]
tag @e[tag=alchemist_lpotion,tag=potion_init] remove potion_init
execute as @e[tag=alchemist_lcloud] at @s run execute as @a[distance=..4] unless score @s team = @e[tag=alchemist_lcloud,sort=nearest,limit=1] setteam run effect give @s minecraft:blindness 3 0
execute as @e[tag=alchemist_lcloud] at @s run execute as @a[distance=..4] unless score @s team = @e[tag=alchemist_lcloud,sort=nearest,limit=1] setteam run effect give @s minecraft:wither 3 1

#blade ult
execute as @e[tag=blade_ultcenter,nbt={Age:40}] at @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1.4
execute as @e[tag=blade_ultcenter,nbt={Age:80}] at @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1.4
execute as @e[tag=blade_ultcenter,nbt={Age:119}] at @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1.4
execute as @e[tag=blade_ultcenter] at @s run particle minecraft:block sand ~ ~0.2 ~ 0 0 0 0.1 5
execute as @e[tag=blade_ultcenter] at @s run particle minecraft:ash ~ ~1 ~ 3 1 3 0.1 20
execute as @e[tag=blade_ultcenter,nbt={Age:40}] at @s run particle minecraft:block sand ~ ~0.2 ~ 3 0 3 0.1 40
execute as @e[tag=blade_ultcenter,nbt={Age:80}] at @s run particle minecraft:block sand ~ ~0.2 ~ 3 0 3 0.1 40
execute as @e[tag=blade_ultcenter,nbt={Age:119}] at @s run particle minecraft:block sand ~ ~0.2 ~ 3 0 3 0.1 40
execute as @e[tag=blade_ultcenter,nbt={Age:40}] at @s run particle minecraft:explosion ~ ~0.2 ~ 0 0 0 0 1
execute as @e[tag=blade_ultcenter,nbt={Age:80}] at @s run particle minecraft:explosion ~ ~0.2 ~ 0 0 0 0 1
execute as @e[tag=blade_ultcenter,nbt={Age:119}] at @s run particle minecraft:explosion ~ ~0.2 ~ 0 0 0 0 1

#witch sneak
execute as @e[tag=witch_field] at @s run execute as @a[distance=..10] if score @s team = @e[sort=nearest,limit=1] setteam run scoreboard players set @s witch_lifesteal -5
execute as @e[tag=witch_field] at @s run particle minecraft:crimson_spore ~ ~ ~ 5 1 5 0.05 10 
execute as @e[tag=witch_field] at @s run particle minecraft:dust 255 0 0 1 ~ ~5 ~ 0.2 0.2 0.2 0 10

#witch right
scoreboard players set @a[scores={witch_rtime=0..}] witch_rstack 0

#player pitch
execute as @a store result score @s playerpitch run data get entity @s Rotation[1] 1