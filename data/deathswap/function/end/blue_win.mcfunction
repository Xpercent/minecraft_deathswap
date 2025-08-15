tag @a[team=blue] add win

execute if score language deathswap.setting matches 1 run title @a[tag=win] title {"text": "§6Win!"}
execute if score language deathswap.setting matches 1 run title @a[tag=!win] title {"text": "§9Blue team wins!"}

execute if score language deathswap.setting matches 2 run title @a[tag=win] title {"text": "§6獲勝！"}
execute if score language deathswap.setting matches 2 run title @a[tag=!win] title {"text": "§9藍隊獲勝！"}

title @a subtitle [{"selector":"@a[tag=win]"}]

tellraw @a {"text": "----------------------------------------------"}
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§9================================"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§9Congratulations! The blue team wins!"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§9================================"}]

execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§9================================"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§9恭喜！藍隊獲勝！"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§9================================"}]

scoreboard players add @a[team=blue] deathswap.win_score 1

scoreboard players set win deathswap.status 2
function deathswap:end/the_end