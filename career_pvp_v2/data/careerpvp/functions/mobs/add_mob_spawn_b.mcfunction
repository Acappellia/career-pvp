kill @e[type=armor_stand,tag=mobspawn_b,distance=..2]
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mobspawn_b"]}
execute as @e[type=armor_stand,tag=mobspawn_b] at @p run tp @s ~ ~ ~ ~ ~