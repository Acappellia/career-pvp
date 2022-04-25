kill @e[type=armor_stand,tag=spawnsel]
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["spawnsel"]}
execute as @e[type=armor_stand,tag=spawnsel] at @p run tp @s ~ ~ ~ ~ ~