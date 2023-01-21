execute store result score Team.3 member run team list 3
scoreboard players remove Team.3 member 2
tellraw @p[distance=..3,team=3] "你已经在这个队伍里了！"
execute if score Team.3 member matches 5.. run tellraw @p[distance=..3,team=!3] "该队伍已满！请选择其他队伍加入！"
execute if score Team.3 member matches ..4 run tellraw @p[distance=..3,team=] "您已经成功加入队伍 3"
execute if score Team.3 member matches ..4 run tellraw @p[distance=..3,team=!,team=!3] "您已经成功更换至队伍 3"
execute if score Team.3 member matches ..4 run execute as @p[distance=..3,team=!3] at @s run function careerpvp:team/leave_team
execute if score Team.3 member matches ..4 run team join 3 @p[distance=..3,team=]
execute store result score Team.3 member run team list 3
scoreboard players remove Team.3 member 2