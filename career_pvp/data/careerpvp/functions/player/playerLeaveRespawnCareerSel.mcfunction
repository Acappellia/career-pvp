tag @p[distance=..4,tag=dead,gamemode=!spectator] remove death_career_select
teleport @p[distance=..5,tag=dead,gamemode=!spectator,scores={death_cd=0..}] @e[type=armor_stand,tag=respawn,limit=1]
teleport @p[distance=..5,tag=dead,gamemode=!spectator,scores={death_cd=..-1}] @e[type=armor_stand,tag=respawnroom,limit=1]