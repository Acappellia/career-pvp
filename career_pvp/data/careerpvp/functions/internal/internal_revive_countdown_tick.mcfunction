execute as @a[scores={death_inter=1..}] run scoreboard players set @s kill_life 0
execute as @a[scores={death_inter=1..}] run scoreboard players set @s death_cd -601
execute as @a[scores={death_inter=1..}] run tag @s add dead
scoreboard players reset @a death_inter

scoreboard players set @a[team=,scores={death_cd=..0}] death_cd 21

scoreboard players add @a death_cd 1
execute as @a[scores={death_cd=-600 }] run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"30 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute as @a[scores={death_cd=-500 }] run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"25 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute as @a[scores={death_cd=-400 }] run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"20 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute as @a[scores={death_cd=-300 }] run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"15 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute as @a[scores={death_cd=-200 }] run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"10 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute as @a[scores={death_cd=-180 }] run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"9 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute as @a[scores={death_cd=-160 }] run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"8 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute as @a[scores={death_cd=-140 }] run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"7 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute as @a[scores={death_cd=-120 }] run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"6 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute as @a[scores={death_cd=-100 }] run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"5 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute as @a[scores={death_cd=-80 }] run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"4 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute as @a[scores={death_cd=-60 }] run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"3 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute as @a[scores={death_cd=-40 }] run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"2 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute as @a[scores={death_cd=-20 }] run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"1 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute as @a[scores={death_cd=-1 }] run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"0 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute as @a[scores={death_cd=-1 },tag=!death_career_select] run teleport @s @e[type=armor_stand,tag=respawnroom,limit=1]
execute as @a[scores={death_cd=20 }] run title @s actionbar ""