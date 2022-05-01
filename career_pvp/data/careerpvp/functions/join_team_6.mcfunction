execute store result score Team.6 member run team list 6
scoreboard players remove Team.6 member 2
tellraw @p[distance=..3,team=6] "你已经在这个队伍里了！"
execute if score Team.6 member matches 5.. run tellraw @p[distance=..3,team=!6] "该队伍已满！请选择其他队伍加入！"
execute if score Team.6 member matches ..4 run tellraw @p[distance=..3,team=] "您已经成功加入队伍！"
execute if score Team.6 member matches ..4 run tellraw @p[distance=..3,team=!,team=!6] "您已经成功更换队伍！"
execute if score Team.6 member matches ..4 run execute as @p[distance=..3,team=!6] at @s run function careerpvp:leave_team
execute if score Team.6 member matches ..4 run team join 6 @p[distance=..3,team=]
execute if score Team.6 member matches ..4 run scoreboard players remove Team.6 member 1