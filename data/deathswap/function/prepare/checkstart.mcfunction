function deathswap:ui/update/main

#check lobby
execute unless entity @e[type=marker,tag=lobby] if score language deathswap.setting matches 1 run tellraw @s [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe lobby has not been set up yet!"}]
execute unless entity @e[type=marker,tag=lobby] if score language deathswap.setting matches 2 run tellraw @s [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f尚未設置大廳！"}]
execute unless entity @e[type=marker,tag=lobby] as @s at @s run playsound entity.villager.no master @s ~ ~ ~ 1

#check player
execute if entity @e[type=marker,tag=lobby] run scoreboard players set team_count deathswap.count 0
execute if entity @e[type=marker,tag=lobby] if entity @a[team=red] run scoreboard players add team_count deathswap.count 1
execute if entity @e[type=marker,tag=lobby] if entity @a[team=blue] run scoreboard players add team_count deathswap.count 1
execute if entity @e[type=marker,tag=lobby] if entity @a[team=yellow] run scoreboard players add team_count deathswap.count 1
execute if entity @e[type=marker,tag=lobby] if entity @a[team=green] run scoreboard players add team_count deathswap.count 1
execute if entity @e[type=marker,tag=lobby] if score team_count deathswap.count matches ..1 if score language deathswap.setting matches 1 run tellraw @s [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fAt least two teams need players to start game!"}]
execute if entity @e[type=marker,tag=lobby] if score team_count deathswap.count matches ..1 if score language deathswap.setting matches 2 run tellraw @s [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f至少需要兩隊有玩家才能開始遊戲！"}]
execute if entity @e[type=marker,tag=lobby] if score team_count deathswap.count matches ..1 as @s at @s run playsound entity.villager.no master @s ~ ~ ~ 1
execute if entity @e[type=marker,tag=lobby] if score team_count deathswap.count matches ..1 run scoreboard players set team_count deathswap.count 0

#ok
execute if entity @e[type=marker,tag=lobby] if score team_count deathswap.count matches 2.. run function deathswap:wait/wait_start