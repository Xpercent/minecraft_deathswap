scoreboard players add wait deathswap.timer 1
execute if score language deathswap.setting matches 1 run title @a actionbar {"text": "§b>> The game is about to start <<"}
execute if score language deathswap.setting matches 2 run title @a actionbar {"text": "§b>> 遊戲即將開始 <<"}

#bossbar
bossbar set deathswap:wait max 200
execute store result bossbar deathswap:wait value run scoreboard players get wait deathswap.timer
execute if score wait deathswap.timer matches 1 if score language deathswap.setting matches 1 run bossbar set deathswap:wait name "§bThe system is being prepared!"
execute if score wait deathswap.timer matches 1 if score language deathswap.setting matches 2 run bossbar set deathswap:wait name "§b系統準備中！"
execute if score wait deathswap.timer matches 140 if score language deathswap.setting matches 1 run bossbar set deathswap:wait name "§eThe game is about to start!"
execute if score wait deathswap.timer matches 140 if score language deathswap.setting matches 2 run bossbar set deathswap:wait name "§e遊戲即將開始！"

#0.5s
execute if score wait deathswap.timer matches 10 run clear @a
execute if score wait deathswap.timer matches 10 if score language deathswap.setting matches 1 run title @a title {"text": "§6Death Swap"}
execute if score wait deathswap.timer matches 10 if score language deathswap.setting matches 2 run title @a title {"text": "§6死亡交換"}
execute if score wait deathswap.timer matches 10 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§dMade by vipvincent"}
# execute if score wait deathswap.timer matches 10 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§d製作：早安豆江 vipvincent"}

#2s

execute if score wait deathswap.timer matches 40 if score language deathswap.setting matches 1 run title @a title {"text": "§bThe system is being prepared!"}
execute if score wait deathswap.timer matches 40 if score language deathswap.setting matches 2 run title @a title {"text": "§b系統準備中！"}
execute if score wait deathswap.timer matches 40 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§bPlease wait~"}
execute if score wait deathswap.timer matches 40 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§b請稍後~"}

execute if score wait deathswap.timer matches 40 run function deathswap:wait/wait_setting

#gamemode
execute if score wait deathswap.timer matches 1..39 run gamemode survival @a 
execute if score wait deathswap.timer matches 40..200 run gamemode survival @a[tag=player]
execute if score wait deathswap.timer matches 40..200 run gamemode spectator @a[tag=spectator]

#spectator
execute if score wait deathswap.timer matches 40..200 run team join spectator @a[team=]
execute if score wait deathswap.timer matches 40..200 run tag @a[team=spectator] add spectator
execute if score wait deathswap.timer matches 40..200 run tag @a[team=spectator] remove player
execute if score wait deathswap.timer matches 40..200 run tag @a[tag=died] add spectator

#3s teleport
execute if score wait deathswap.timer matches 60 run execute if score lobbymode deathswap.setting matches 0 run function deathswap:wait/teleport
execute if score wait deathswap.timer matches 60..200 run execute if score lobbymode deathswap.setting matches 0 run tp @a[team=red] @e[type=marker,name="red_start",limit=1]
execute if score wait deathswap.timer matches 60..200 run execute if score lobbymode deathswap.setting matches 0 run tp @a[team=blue] @e[type=marker,name="blue_start",limit=1]
execute if score wait deathswap.timer matches 60..200 run execute if score lobbymode deathswap.setting matches 0 run tp @a[team=yellow] @e[type=marker,name="yellow_start",limit=1]
execute if score wait deathswap.timer matches 60..200 run execute if score lobbymode deathswap.setting matches 0 run tp @a[team=green] @e[type=marker,name="green_start",limit=1]

execute if score wait deathswap.timer matches 60..200 run execute if score lobbymode deathswap.setting matches 1 run tp @a[tag=player] @e[type=marker,tag=lobby,limit=1]
#6s
execute if score wait deathswap.timer matches 120 run function deathswap:wait/give_item
#7s
execute if score wait deathswap.timer matches 140 run title @a title {"text": "§43"}
execute if score wait deathswap.timer matches 140..180 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§eThe game is about to start!"}
execute if score wait deathswap.timer matches 140..180 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§e遊戲即將開始！"}
execute if score wait deathswap.timer matches 140 run execute as @a at @s run playsound block.lever.click master @s ~ ~ ~

#8s
execute if score wait deathswap.timer matches 160 run title @a title {"text": "§62"}
execute if score wait deathswap.timer matches 160 run execute as @a at @s run playsound block.lever.click master @s ~ ~ ~

#9s
execute if score wait deathswap.timer matches 180 run title @a title {"text": "§21"}
execute if score wait deathswap.timer matches 180 run execute as @a at @s run playsound block.lever.click master @s ~ ~ ~

#10s
execute if score wait deathswap.timer matches 200 run kill @e[type=marker,tag=start]
execute if score wait deathswap.timer matches 200 run function deathswap:play/start
