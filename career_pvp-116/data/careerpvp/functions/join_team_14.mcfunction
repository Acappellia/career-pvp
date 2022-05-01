execute store result score Team.14 member run team list 14
scoreboard players remove Team.14 member 2
tellraw @p[distance=..3,team=14] "你已经在这个队伍里了！"
execute if score Team.14 member matches 5.. run tellraw @p[distance=..3,team=!14] "该队伍已满！请选择其他队伍加入！"
execute if score Team.14 member matches ..4 run tellraw @p[distance=..3,team=] "您已经成功加入队伍！"
execute if score Team.14 member matches ..4 run tellraw @p[distance=..3,team=!,team=!14] "您已经成功更换队伍！"
execute if score Team.14 member matches ..4 run execute as @p[distance=..3,team=!14] at @s run function careerpvp:leave_team
execute if score Team.14 member matches ..4 run team join 14 @p[distance=..3,team=]
execute if score Team.14 member matches ..4 run scoreboard players remove Team.14 member 1