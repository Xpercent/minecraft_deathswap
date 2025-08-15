tag @a[team=green] add win

execute if score language deathswap.setting matches 1 run title @a[tag=win] title {"text": "§6Win!"}
execute if score language deathswap.setting matches 1 run title @a[tag=!win] title {"text": "§aGreen team wins!"}
execute if score language deathswap.setting matches 2 run title @a[tag=win] title {"text": "§6獲勝！"}
execute if score language deathswap.setting matches 2 run title @a[tag=!win] title {"text": "§a綠隊獲勝！"}

title @a subtitle [{"selector":"@a[tag=win]"}]

tellraw @a {"text": "----------------------------------------------"}
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§a================================"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§aCongratulations! The green team wins!"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§a================================"}]

execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§a================================"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§a恭喜！綠隊獲勝！"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§a================================"}]

scoreboard players add @a[team=green] deathswap.win_score 1

scoreboard players set win deathswap.status 4
function deathswap:end/the_end
