execute if score start_delay timer matches -200 at @e[tag=spawn,limit=1] run playsound block.bell.use master @a ~ ~ ~ 3 1
execute if score start_delay timer matches -180 at @e[tag=spawn,limit=1] run playsound block.bell.use master @a ~ ~ ~ 3 1
execute if score start_delay timer matches -160 at @e[tag=spawn,limit=1] run playsound block.bell.use master @a ~ ~ ~ 3 1
execute if score start_delay timer matches -140 at @e[tag=spawn,limit=1] run playsound block.bell.use master @a ~ ~ ~ 3 1
execute if score start_delay timer matches -120 at @e[tag=spawn,limit=1] run playsound block.bell.use master @a ~ ~ ~ 3 1
execute if score start_delay timer matches -100 at @e[tag=spawn,limit=1] run playsound block.bell.use master @a ~ ~ ~ 3 1
execute if score start_delay timer matches -80 at @e[tag=spawn,limit=1] run playsound block.bell.use master @a ~ ~ ~ 3 1
execute if score start_delay timer matches -60 at @e[tag=spawn,limit=1] run playsound block.bell.use master @a ~ ~ ~ 3 1
execute if score start_delay timer matches -40 at @e[tag=spawn,limit=1] run playsound block.bell.use master @a ~ ~ ~ 3 1
execute if score start_delay timer matches -20 at @e[tag=spawn,limit=1] run playsound block.bell.use master @a ~ ~ ~ 3 1

execute if score start_delay timer matches -200..-181 run title @a subtitle "10"
execute if score start_delay timer matches -180..-161 run title @a subtitle "9"
execute if score start_delay timer matches -160..-141 run title @a subtitle "8"
execute if score start_delay timer matches -140..-121 run title @a subtitle "7"
execute if score start_delay timer matches -120..-101 run title @a subtitle "6"
execute if score start_delay timer matches -100..-81 run title @a subtitle "5"
execute if score start_delay timer matches -80..-61 run title @a subtitle "4"
execute if score start_delay timer matches -60..-41 run title @a subtitle "3"
execute if score start_delay timer matches -40..-21 run title @a subtitle "2"
execute if score start_delay timer matches -20..-2 run title @a subtitle "1"
execute if score start_delay timer matches -200..-2 run title @a title {"text":"游戏即将开始","color":"gray"}
execute if score start_delay timer matches -1 run tellraw @a "本局游戏开始"
execute if score start_delay timer matches -1 if score show_cutscene int_val matches ..0 run function careerpvp:game/game_start
execute if score start_delay timer matches -1 if score show_cutscene int_val matches 1.. run function careerpvp:cutscene/cutscene_start
