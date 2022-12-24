scoreboard objectives remove career
scoreboard objectives add career dummy
scoreboard objectives remove team
scoreboard objectives add team dummy
scoreboard objectives remove member
scoreboard objectives add member dummy "队伍人数"

team add 1
team add 2
team add 3
team add 4
team add 5
team add 6
team add 7
team add 8
team add 9
team add 10
team add 11
team add 12
team add 13
team add 14
team add 15
team add 16

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

team modify 1 collisionRule pushOtherTeams
team modify 2 collisionRule pushOtherTeams
team modify 3 collisionRule pushOtherTeams
team modify 4 collisionRule pushOtherTeams
team modify 5 collisionRule pushOtherTeams
team modify 6 collisionRule pushOtherTeams
team modify 7 collisionRule pushOtherTeams
team modify 8 collisionRule pushOtherTeams
team modify 9 collisionRule pushOtherTeams
team modify 10 collisionRule pushOtherTeams
team modify 11 collisionRule pushOtherTeams
team modify 12 collisionRule pushOtherTeams
team modify 13 collisionRule pushOtherTeams
team modify 14 collisionRule pushOtherTeams
team modify 15 collisionRule pushOtherTeams
team modify 16 collisionRule pushOtherTeams

team modify 1 friendlyFire false
team modify 2 friendlyFire false
team modify 3 friendlyFire false
team modify 4 friendlyFire false
team modify 5 friendlyFire false
team modify 6 friendlyFire false
team modify 7 friendlyFire false
team modify 8 friendlyFire false
team modify 9 friendlyFire false
team modify 10 friendlyFire false
team modify 11 friendlyFire false
team modify 12 friendlyFire false
team modify 13 friendlyFire false
team modify 14 friendlyFire false
team modify 15 friendlyFire false
team modify 16 friendlyFire false

team modify 1 nametagVisibility hideForOtherTeams
team modify 2 nametagVisibility hideForOtherTeams
team modify 3 nametagVisibility hideForOtherTeams
team modify 4 nametagVisibility hideForOtherTeams
team modify 5 nametagVisibility hideForOtherTeams
team modify 6 nametagVisibility hideForOtherTeams
team modify 7 nametagVisibility hideForOtherTeams
team modify 8 nametagVisibility hideForOtherTeams
team modify 9 nametagVisibility hideForOtherTeams
team modify 10 nametagVisibility hideForOtherTeams
team modify 11 nametagVisibility hideForOtherTeams
team modify 12 nametagVisibility hideForOtherTeams
team modify 13 nametagVisibility hideForOtherTeams
team modify 14 nametagVisibility hideForOtherTeams
team modify 15 nametagVisibility hideForOtherTeams
team modify 16 nametagVisibility hideForOtherTeams

team modify 1 prefix "[1] "
team modify 2 prefix "[2] "
team modify 3 prefix "[3] "
team modify 4 prefix "[4] "
team modify 5 prefix "[5] "
team modify 6 prefix "[6] "
team modify 7 prefix "[7] "
team modify 8 prefix "[8] "
team modify 9 prefix "[9] "
team modify 10 prefix "[10] "
team modify 11 prefix "[11] "
team modify 12 prefix "[12] "
team modify 13 prefix "[13] "
team modify 14 prefix "[14] "
team modify 15 prefix "[15] "
team modify 16 prefix "[16] "

team modify 1 color aqua
team modify 2 color gold
team modify 3 color green
team modify 4 color red
team modify 5 color light_purple
team modify 6 color yellow
team modify 7 color white
team modify 8 color blue
team modify 9 color dark_aqua
team modify 10 color dark_green
team modify 11 color gray
team modify 12 color dark_purple
team modify 13 color dark_blue
team modify 14 color dark_red
team modify 15 color dark_gray
team modify 16 color black

kill @e[type=armor_stand,tag=team]

summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_1"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_2"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_3"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_4"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_5"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_6"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_7"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_8"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_9"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_10"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_11"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_12"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_13"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_14"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_15"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["team","team_16"]}

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