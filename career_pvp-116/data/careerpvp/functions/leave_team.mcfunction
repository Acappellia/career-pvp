tag @p[distance=..5] add team_leave

execute as @p[distance=..20,tag=team_leave,scores={career=1} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_1
execute as @p[distance=..20,tag=team_leave,scores={career=2} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_2
execute as @p[distance=..20,tag=team_leave,scores={career=3} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_3
execute as @p[distance=..20,tag=team_leave,scores={career=4} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_4
execute as @p[distance=..20,tag=team_leave,scores={career=5} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_5
execute as @p[distance=..20,tag=team_leave,scores={career=6} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_6
execute as @p[distance=..20,tag=team_leave,scores={career=7} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_7
execute as @p[distance=..20,tag=team_leave,scores={career=8} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_8
execute as @p[distance=..20,tag=team_leave,scores={career=9} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_9
execute as @p[distance=..20,tag=team_leave,scores={career=10} ] at @s run execute as @e[tag=team] if score @s team = @p team run tag @s remove chosen_10

execute as @p[distance=..20,tag=team_leave,team=1 ] run scoreboard players remove Team.1 member 1 
execute as @p[distance=..20,tag=team_leave,team=2 ] run scoreboard players remove Team.2 member 1 
execute as @p[distance=..20,tag=team_leave,team=3 ] run scoreboard players remove Team.3 member 1 
execute as @p[distance=..20,tag=team_leave,team=4 ] run scoreboard players remove Team.4 member 1 
execute as @p[distance=..20,tag=team_leave,team=5 ] run scoreboard players remove Team.5 member 1 
execute as @p[distance=..20,tag=team_leave,team=6 ] run scoreboard players remove Team.6 member 1 
execute as @p[distance=..20,tag=team_leave,team=7 ] run scoreboard players remove Team.7 member 1 
execute as @p[distance=..20,tag=team_leave,team=8 ] run scoreboard players remove Team.8 member 1 
execute as @p[distance=..20,tag=team_leave,team=9 ] run scoreboard players remove Team.9 member 1 
execute as @p[distance=..20,tag=team_leave,team=10 ] run scoreboard players remove Team.10 member 1 
execute as @p[distance=..20,tag=team_leave,team=11 ] run scoreboard players remove Team.11 member 1 
execute as @p[distance=..20,tag=team_leave,team=12 ] run scoreboard players remove Team.12 member 1 
execute as @p[distance=..20,tag=team_leave,team=13 ] run scoreboard players remove Team.13 member 1 
execute as @p[distance=..20,tag=team_leave,team=14 ] run scoreboard players remove Team.14 member 1 
execute as @p[distance=..20,tag=team_leave,team=15 ] run scoreboard players remove Team.15 member 1 
execute as @p[distance=..20,tag=team_leave,team=16 ] run scoreboard players remove Team.16 member 1 

scoreboard players set @p[tag=team_leave,distance=..10] career 0
scoreboard players set @p[tag=team_leave,distance=..10] give_item 0
clear @p[tag=team_leave,distance=..10]
team leave @p[tag=team_leave,distance=..10]
tag @a remove team_leave