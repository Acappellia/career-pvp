execute if score match_time timer matches 36000 run tellraw @a {"text":"本局时间剩余 30 分钟","color":"yellow"}
execute if score match_time timer matches 35960 run tellraw @a {"text":"本局时间剩余 30 分钟","color":"yellow"}
execute if score match_time timer matches 35920 run tellraw @a {"text":"本局时间剩余 30 分钟","color":"yellow"}
execute if score match_time timer matches 18000 run tellraw @a {"text":"本局时间剩余 15 分钟","color":"yellow"}
execute if score match_time timer matches 17960 run tellraw @a {"text":"本局时间剩余 15 分钟","color":"yellow"}
execute if score match_time timer matches 17920 run tellraw @a {"text":"本局时间剩余 15 分钟","color":"yellow"}
execute if score match_time timer matches 12000 at @e[tag=mapcenter,limit=1] run playsound block.bell.use master @a ~ ~ ~ 200 1
execute if score match_time timer matches 11990 at @e[tag=mapcenter,limit=1] run playsound block.bell.use master @a ~ ~ ~ 200 1
execute if score match_time timer matches 11980 at @e[tag=mapcenter,limit=1] run playsound block.bell.use master @a ~ ~ ~ 200 1
execute if score match_time timer matches 12000 run tellraw @a {"text":"本局时间剩余 10 分钟","color":"gold"}
execute if score match_time timer matches 11960 run tellraw @a {"text":"本局时间剩余 10 分钟","color":"gold"}
execute if score match_time timer matches 11920 run tellraw @a {"text":"本局时间剩余 10 分钟","color":"gold"}
execute if score match_time timer matches 6000 at @e[tag=mapcenter,limit=1] run playsound block.bell.use master @a ~ ~ ~ 200 1
execute if score match_time timer matches 5990 at @e[tag=mapcenter,limit=1] run playsound block.bell.use master @a ~ ~ ~ 200 1
execute if score match_time timer matches 5980 at @e[tag=mapcenter,limit=1] run playsound block.bell.use master @a ~ ~ ~ 200 1
execute if score match_time timer matches 6000 run tellraw @a {"text":"本局时间剩余 5 分钟","color":"gold"}
execute if score match_time timer matches 5960 run tellraw @a {"text":"本局时间剩余 5 分钟","color":"gold"}
execute if score match_time timer matches 5920 run tellraw @a {"text":"本局时间剩余 5 分钟","color":"gold"}
execute if score match_time timer matches 3600 run tellraw @a {"text":"本局时间剩余 3 分钟","color":"gold"}
execute if score match_time timer matches 2400 at @e[tag=mapcenter,limit=1] run playsound block.bell.use master @a ~ ~ ~ 200 1
execute if score match_time timer matches 2390 at @e[tag=mapcenter,limit=1] run playsound block.bell.use master @a ~ ~ ~ 200 1
execute if score match_time timer matches 2380 at @e[tag=mapcenter,limit=1] run playsound block.bell.use master @a ~ ~ ~ 200 1
execute if score match_time timer matches 2400 run tellraw @a {"text":"本局时间剩余 2 分钟","color":"gold"}
execute if score match_time timer matches 2400 run tellraw @a {"text":"即将播放终场音乐...","color":"gray"}
execute if score match_time timer matches 2140 run playsound music_disc.mellohi record @a 0 82 -200 200 1
execute if score match_time timer matches 1200 run tellraw @a {"text":"本局时间剩余 1 分钟","color":"red"}
execute if score match_time timer matches 600 run tellraw @a {"text":"本局时间剩余 30 秒","color":"red"}
execute if score match_time timer matches 400 run tellraw @a {"text":"本局时间剩余 20 秒","color":"red"}
execute if score match_time timer matches 200 run tellraw @a {"text":"倒计时： 10","color":"red"}
execute if score match_time timer matches 180 run tellraw @a {"text":"倒计时： 9","color":"red"}
execute if score match_time timer matches 160 run tellraw @a {"text":"倒计时： 8","color":"red"}
execute if score match_time timer matches 140 run tellraw @a {"text":"倒计时： 7","color":"red"}
execute if score match_time timer matches 120 run tellraw @a {"text":"倒计时： 6","color":"red"}
execute if score match_time timer matches 100 run tellraw @a {"text":"倒计时： 5","color":"red"}
execute if score match_time timer matches 80 run tellraw @a {"text":"倒计时： 4","color":"red"}
execute if score match_time timer matches 60 run tellraw @a {"text":"倒计时： 3","color":"red"}
execute if score match_time timer matches 40 run tellraw @a {"text":"倒计时： 2","color":"red"}
execute if score match_time timer matches 20 run tellraw @a {"text":"倒计时： 1","color":"red"}
execute if score match_time timer matches 1 run tellraw @a "本局游戏结束"
execute if score match_time timer matches 1 run function careerpvp:game/game_stop
