title @s[scores={death_cd=..0}] subtitle ""
title @s[scores={death_cd=..0}] title ""

execute if score @s death_cd matches -600 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"30 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -580 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"29 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -560 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"28 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -540 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"27 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -520 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"26 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -500 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"25 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -480 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"24 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -460 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"23 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -440 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"22 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -420 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"21 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -400 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"20 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -380 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"19 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -360 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"18 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -340 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"17 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -320 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"16 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -300 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"15 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -280 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"14 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -260 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"13 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -240 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"12 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -220 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"11 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -200 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"10 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -180 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"9 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -160 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"8 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -140 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"7 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -120 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"6 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -100 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"5 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -80 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"4 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -60 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"3 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -40 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"2 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -20 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"1 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -1 run title @s actionbar [{"text":"等待重生中，剩余 ","color":"yellow"},{"text":"0 ","color":"aqua"},{"text":"秒","color":"yellow"}]
execute if score @s death_cd matches -1 if entity @s[tag=!death_career_select] run teleport @s @e[type=armor_stand,tag=respawnroom,limit=1]
execute if score @s death_cd matches 20 run title @s actionbar ""