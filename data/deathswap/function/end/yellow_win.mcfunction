tag @a[team=yellow] add win

execute if score language deathswap.setting matches 1 run title @a[tag=win] title {"text": "§6Win!"}
execute if score language deathswap.setting matches 1 run title @a[tag=!win] title {"text": "§eYellow team wins!"}
execute if score language deathswap.setting matches 2 run title @a[tag=win] title {"text": "§6獲勝！"}
execute if score language deathswap.setting matches 2 run title @a[tag=!win] title {"text": "§e黃隊獲勝！"}

title @a subtitle [{"selector":"@a[tag=win]"}]

tellraw @a {"text": "----------------------------------------------"}
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§e================================"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§eCongratulations! The yellow team wins!"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§e================================"}]

execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§e================================"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§e恭喜！黃隊獲勝！"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§e================================"}]

scoreboard players add @a[team=yellow] deathswap.win_score 1

scoreboard players set win deathswap.status 3
function deathswap:end/the_end
