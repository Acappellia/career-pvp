tag @p[distance=..5] add team_leave
scoreboard players set @p[tag=team_leave,distance=..10] career 0
scoreboard players set @p[tag=team_leave,distance=..10] give_item 0
clear @p[tag=team_leave,distance=..10]
team leave @p[tag=team_leave,distance=..10]
tag @a remove team_leave