execute store result score Team.5 member run team list 5
scoreboard players remove Team.5 member 2
tellraw @p[distance=..3,team=5] "你已经在这个队伍里了！"
execute if score Team.5 member matches 4.. run tellraw @p[distance=..3,team=!5] "该队伍已满！请选择其他队伍加入！"
execute if score Team.5 member matches ..3 run tellraw @p[distance=..3,team=] "您已经成功加入队伍 5"
execute if score Team.5 member matches ..3 run tellraw @p[distance=..3,team=!,team=!5] "您已经成功更换至队伍 5"
execute if score Team.5 member matches ..3 run execute as @p[distance=..3,team=!5] at @s run function careerpvp:team/leave_team
execute if score Team.5 member matches ..3 run team join 5 @p[distance=..3,team=]
execute store result score Team.5 member run team list 5
scoreboard players remove Team.5 member 2