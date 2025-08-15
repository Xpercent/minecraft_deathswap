scoreboard players add gmchange deathswap.setting 1
execute if score gmchange deathswap.setting matches 2 run scoreboard players set gmchange deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score gmchange deathswap.setting matches 0 run tellraw @a [{"text": "§6DeathSwap§7§l｜§r"},{"text": "§fGame mode scheduled chnages set §cDisable"}]
execute if score language deathswap.setting matches 1 if score gmchange deathswap.setting matches 1 run tellraw @a [{"text": "§6DeathSwap§7§l｜§r"},{"text": "§fGame mode scheduled changes set §aEnabled"}]

#中文
execute if score language deathswap.setting matches 2 if score gmchange deathswap.setting matches 0 run tellraw @a [{"text": "§6DeathSwap§7§l｜§r"},{"text": "§f遊戲模式定時切換已§c關閉"}]
execute if score language deathswap.setting matches 2 if score gmchange deathswap.setting matches 1 run tellraw @a [{"text": "§6DeathSwap§7§l｜§r"},{"text": "§f遊戲模式定時切換已§a開啟"}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/gmchange