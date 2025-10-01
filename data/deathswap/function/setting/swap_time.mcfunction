scoreboard players add swap_time_setting deathswap.setting 30
execute if score swap_time_setting deathswap.setting matches ..290 run scoreboard players set swap_time_setting deathswap.setting 300
execute if score swap_time_setting deathswap.setting matches 630.. run scoreboard players set swap_time_setting deathswap.setting 300

# #en
# execute if score language deathswap.setting matches 1 if score swap_time_setting deathswap.setting matches 300 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fSwap time has been changed to §b300 seconds"}]
# execute if score language deathswap.setting matches 1 if score swap_time_setting deathswap.setting matches 330 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fSwap time has been changed to §b330 seconds"}]
# execute if score language deathswap.setting matches 1 if score swap_time_setting deathswap.setting matches 360 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fSwap time has been changed to §b360 seconds"}]
# execute if score language deathswap.setting matches 1 if score swap_time_setting deathswap.setting matches 390 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fSwap time has been changed to §b390 seconds"}]
# execute if score language deathswap.setting matches 1 if score swap_time_setting deathswap.setting matches 420 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fSwap time has been changed to §b420 seconds"}]
# execute if score language deathswap.setting matches 1 if score swap_time_setting deathswap.setting matches 450 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fSwap time has been changed to §b450 seconds"}]
# execute if score language deathswap.setting matches 1 if score swap_time_setting deathswap.setting matches 480 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fSwap time has been changed to §b480 seconds"}]
# execute if score language deathswap.setting matches 1 if score swap_time_setting deathswap.setting matches 510 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fSwap time has been changed to §b510 seconds"}]
# execute if score language deathswap.setting matches 1 if score swap_time_setting deathswap.setting matches 540 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fSwap time has been changed to §b540 seconds"}]
# execute if score language deathswap.setting matches 1 if score swap_time_setting deathswap.setting matches 570 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fSwap time has been changed to §b570 seconds"}]
# execute if score language deathswap.setting matches 1 if score swap_time_setting deathswap.setting matches 600 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fSwap time has been changed to §b600 seconds"}]

# #中文
# execute if score language deathswap.setting matches 2 if score swap_time_setting deathswap.setting matches 300 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": ""}]
# execute if score language deathswap.setting matches 2 if score swap_time_setting deathswap.setting matches 330 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": ""}]
# execute if score language deathswap.setting matches 2 if score swap_time_setting deathswap.setting matches 360 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": ""}]
# execute if score language deathswap.setting matches 2 if score swap_time_setting deathswap.setting matches 390 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": ""}]
# execute if score language deathswap.setting matches 2 if score swap_time_setting deathswap.setting matches 420 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": ""}]
# execute if score language deathswap.setting matches 2 if score swap_time_setting deathswap.setting matches 450 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": ""}]
# execute if score language deathswap.setting matches 2 if score swap_time_setting deathswap.setting matches 480 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": ""}]
# execute if score language deathswap.setting matches 2 if score swap_time_setting deathswap.setting matches 510 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": ""}]
# execute if score language deathswap.setting matches 2 if score swap_time_setting deathswap.setting matches 540 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": ""}]
# execute if score language deathswap.setting matches 2 if score swap_time_setting deathswap.setting matches 570 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": ""}]
# execute if score language deathswap.setting matches 2 if score swap_time_setting deathswap.setting matches 600 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": ""}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/update/main
