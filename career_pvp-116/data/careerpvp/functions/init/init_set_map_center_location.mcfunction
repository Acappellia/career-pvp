kill @e[type=armor_stand,tag=mapcenter]
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mapcenter"]}
execute as @e[type=armor_stand,tag=mapcenter] at @p run tp @s ~ ~ ~ ~ ~