tag @a[team=red] add win

execute if score language deathswap.setting matches 1 run title @a[tag=win] title {"text": "§6Win!"}
execute if score language deathswap.setting matches 1 run title @a[tag=!win] title {"text": "§cRed team wins!"}
execute if score language deathswap.setting matches 2 run title @a[tag=win] title {"text": "§6獲勝！"}
execute if score language deathswap.setting matches 2 run title @a[tag=!win] title {"text": "§c紅隊獲勝！"}

title @a subtitle [{"selector":"@a[tag=win]"}]

tellraw @a {"text": "----------------------------------------------"}
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§c================================"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§cCongratulations! The red team wins!"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§c================================"}]

execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§c================================"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§c恭喜！紅隊獲勝！"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§c================================"}]

scoreboard players add @a[team=red] deathswap.win_score 1

scoreboard players set win deathswap.status 1
function deathswap:end/the_end
