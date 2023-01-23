scoreboard players operation start_delay timer = start_delay int_val
tellraw @a "游戏即将开始。本局游戏中——"

tellraw @a[team=!] ["您加入了队伍 ",{"score":{"name":"@s","objective":"team"}}]
tellraw @a[team=] "您未加入任何队伍，将开始观战"
tellraw @a[team=,gamemode=creative] "您作为活动管理员，不会受到传送影响。"
tellraw @a[team=!,scores={career=1}] "您选择了初始职业 奥术法师"
tellraw @a[team=!,scores={career=2}] "您选择了初始职业 自然法师"
tellraw @a[team=!,scores={career=3}] "您选择了初始职业 坚守者"
tellraw @a[team=!,scores={career=4}] "您选择了初始职业 狂战士"
tellraw @a[team=!,scores={career=5}] "您选择了初始职业 炼金术师"
tellraw @a[team=!,scores={career=6}] "您选择了初始职业 暗影刺客"
tellraw @a[team=!,scores={career=7}] "您选择了初始职业 精灵弓手"
tellraw @a[team=!,scores={career=8}] "您选择了初始职业 圣职者"
tellraw @a[team=!,scores={career=9}] "您选择了初始职业 巫医"
tellraw @a[team=!,scores={career=10}] "您选择了初始职业 双刃斗士"
tellraw @a[team=!,scores={career=11}] "您选择了初始职业 破阵剑士"
tellraw @a[team=!,scores={career=12}] "您选择了初始职业 NULL"
tellraw @a[team=1] ["您的小队成员： ",{"selector":"@a[team=1]","separator":", "}]
tellraw @a[team=2] ["您的小队成员： ",{"selector":"@a[team=2]","separator":", "}]
tellraw @a[team=3] ["您的小队成员： ",{"selector":"@a[team=3]","separator":", "}]
tellraw @a[team=4] ["您的小队成员： ",{"selector":"@a[team=4]","separator":", "}]
tellraw @a[team=5] ["您的小队成员： ",{"selector":"@a[team=5]","separator":", "}]
tellraw @a[team=6] ["您的小队成员： ",{"selector":"@a[team=6]","separator":", "}]
tellraw @a[team=7] ["您的小队成员： ",{"selector":"@a[team=7]","separator":", "}]
tellraw @a[team=8] ["您的小队成员： ",{"selector":"@a[team=8]","separator":", "}]
tellraw @a[team=9] ["您的小队成员： ",{"selector":"@a[team=9]","separator":", "}]
tellraw @a[team=10] ["您的小队成员： ",{"selector":"@a[team=10]","separator":", "}]
tellraw @a[team=11] ["您的小队成员： ",{"selector":"@a[team=11]","separator":", "}]
tellraw @a[team=12] ["您的小队成员： ",{"selector":"@a[team=12]","separator":", "}]
tellraw @a[team=13] ["您的小队成员： ",{"selector":"@a[team=13]","separator":", "}]
tellraw @a[team=14] ["您的小队成员： ",{"selector":"@a[team=14]","separator":", "}]
tellraw @a[team=15] ["您的小队成员： ",{"selector":"@a[team=15]","separator":", "}]
tellraw @a[team=16] ["您的小队成员： ",{"selector":"@a[team=16]","separator":", "}]