execute unless entity @e[tag=ingame] if score cutscene timer matches 0.. if score start_delay timer matches 0.. run scoreboard players set tmp int_val 1
execute if score start_delay timer matches ..-2 run scoreboard players set tmp int_val 0

execute if score tmp int_val matches 1 run function careerpvp:game/game_ready

execute if score tmp int_val matches 0 run scoreboard players set start_delay timer 0 
execute if score tmp int_val matches 0 run tellraw @a "游戏准备中止"