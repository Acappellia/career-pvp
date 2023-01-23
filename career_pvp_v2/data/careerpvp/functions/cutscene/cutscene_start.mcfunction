scoreboard players operation cutscene timer = cutscene int_val
kill @e[type=armor_stand,tag=cutscene]
execute as @e[tag=mapcenter] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["cutscene"]}
playsound music_disc.11 record @a 0 82 -200 9999 1