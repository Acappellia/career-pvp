tag @e[tag=team] remove chosen_1
tag @e[tag=team] remove chosen_2
tag @e[tag=team] remove chosen_3
tag @e[tag=team] remove chosen_4
tag @e[tag=team] remove chosen_5
tag @e[tag=team] remove chosen_6
tag @e[tag=team] remove chosen_7
tag @e[tag=team] remove chosen_8
tag @e[tag=team] remove chosen_9
tag @e[tag=team] remove chosen_10

scoreboard objectives remove career
scoreboard objectives add career dummy
scoreboard objectives remove give_item
scoreboard objectives add give_item dummy
clear @a

team empty 1
team empty 2
team empty 3
team empty 4
team empty 5
team empty 6
team empty 7
team empty 8
team empty 9
team empty 10
team empty 11
team empty 12
team empty 13
team empty 14
team empty 15
team empty 16
scoreboard objectives remove member
scoreboard objectives add member dummy "队伍人数"
scoreboard players set Team.1 member 0
scoreboard players set Team.2 member 0
scoreboard players set Team.3 member 0
scoreboard players set Team.4 member 0
scoreboard players set Team.5 member 0
scoreboard players set Team.6 member 0
scoreboard players set Team.7 member 0
scoreboard players set Team.8 member 0
scoreboard players set Team.9 member 0
scoreboard players set Team.10 member 0
scoreboard players set Team.11 member 0
scoreboard players set Team.12 member 0
scoreboard players set Team.13 member 0
scoreboard players set Team.14 member 0
scoreboard players set Team.15 member 0
scoreboard players set Team.16 member 0
scoreboard objectives setdisplay sidebar member

team join 1 Team.1
team join 2 Team.2
team join 3 Team.3
team join 4 Team.4
team join 5 Team.5
team join 6 Team.6
team join 7 Team.7
team join 8 Team.8
team join 9 Team.9
team join 10 Team.10
team join 11 Team.11
team join 12 Team.12
team join 13 Team.13
team join 14 Team.14
team join 15 Team.15
team join 16 Team.16

team join 1 @e[type=armor_stand,tag=team_1]
team join 2 @e[type=armor_stand,tag=team_2]
team join 3 @e[type=armor_stand,tag=team_3]
team join 4 @e[type=armor_stand,tag=team_4]
team join 5 @e[type=armor_stand,tag=team_5]
team join 6 @e[type=armor_stand,tag=team_6]
team join 7 @e[type=armor_stand,tag=team_7]
team join 8 @e[type=armor_stand,tag=team_8]
team join 9 @e[type=armor_stand,tag=team_9]
team join 10 @e[type=armor_stand,tag=team_10]
team join 11 @e[type=armor_stand,tag=team_11]
team join 12 @e[type=armor_stand,tag=team_12]
team join 13 @e[type=armor_stand,tag=team_13]
team join 14 @e[type=armor_stand,tag=team_14]
team join 15 @e[type=armor_stand,tag=team_15]
team join 16 @e[type=armor_stand,tag=team_16]