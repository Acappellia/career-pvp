execute if score start_delay timer matches 0.. run scoreboard players set tmp int_val 1
execute if score start_delay timer matches ..-2 run scoreboard players set tmp int_val 0

execute if score tmp int_val matches 1 run scoreboard players operation start_delay timer = start_delay int_val
execute if score tmp int_val matches 1 run tellraw @a "游戏即将开始..."

execute if score tmp int_val matches 0 run scoreboard players set start_delay timer 0 
execute if score tmp int_val matches 0 run tellraw @a "游戏准备中止"