kill @e[type=armor_stand,tag=mob_refresh]
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mob_refresh"]}
execute as @e[type=armor_stand,tag=mob_refresh] at @p run tp @s ~ ~ ~ ~ ~