scoreboard players set gmchange deathswap.status 1
scoreboard players operation gmchange deathswap.timer = creative_time deathswap.setting

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§c§lCreative §r§ftime!"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§c§l創造模式§r§f時間！"}]
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~