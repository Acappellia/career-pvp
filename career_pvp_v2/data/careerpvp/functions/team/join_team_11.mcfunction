execute store result score Team.11 member run team list 11
scoreboard players remove Team.11 member 2
tellraw @p[distance=..3,team=11] "你已经在这个队伍里了！"
execute if score Team.11 member matches 4.. run tellraw @p[distance=..3,team=!11] "该队伍已满！请选择其他队伍加入！"
execute if score Team.11 member matches ..3 run tellraw @p[distance=..3,team=] "您已经成功加入队伍 11"
execute if score Team.11 member matches ..3 run tellraw @p[distance=..3,team=!,team=!11] "您已经成功更换至队伍 11"
execute if score Team.11 member matches ..3 run execute as @p[distance=..3,team=!11] at @s run function careerpvp:team/leave_team
execute if score Team.11 member matches ..3 run team join 11 @p[distance=..3,team=]
execute store result score Team.11 member run team list 11
scoreboard players remove Team.11 member 2