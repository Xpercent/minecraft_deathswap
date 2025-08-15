execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§c--------------------------------"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§cThe red team is completely wiped out!"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§c--------------------------------"}]

execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§c--------------------------------"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§c紅隊全滅！"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§c--------------------------------"}]

execute as @a at @s run playsound entity.wither.death player @s ~ ~ ~
scoreboard players remove team_count deathswap.count 1
scoreboard players set team_red deathswap.status 0