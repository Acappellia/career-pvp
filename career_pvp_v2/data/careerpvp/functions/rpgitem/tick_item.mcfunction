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
bossbar set minecraft:druid_golemhealth_1 players
bossbar set minecraft:druid_golemhealth_2 players
bossbar set minecraft:druid_golemhealth_3 players
bossbar set minecraft:druid_golemhealth_4 players
bossbar set minecraft:druid_golemhealth_5 players
bossbar set minecraft:druid_golemhealth_6 players
bossbar set minecraft:druid_golemhealth_7 players
bossbar set minecraft:druid_golemhealth_8 players
bossbar set minecraft:druid_golemhealth_9 players
bossbar set minecraft:druid_golemhealth_10 players
bossbar set minecraft:druid_golemhealth_11 players
bossbar set minecraft:druid_golemhealth_12 players
bossbar set minecraft:druid_golemhealth_13 players
bossbar set minecraft:druid_golemhealth_14 players
bossbar set minecraft:druid_golemhealth_15 players
bossbar set minecraft:druid_golemhealth_16 players
execute as @e[type=iron_golem,tag=druid_golem] at @s run function careerpvp:rpgitem/tick_xiaoye

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