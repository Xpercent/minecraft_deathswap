$scoreboard players add survival_time deathswap.setting $(survival)

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6DeathSwap§7§l｜§r"},{"text": "§fThe survival time has been increased to "},{"score":{"name": "survival_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6s"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f生存模式時長已增加為"},{"score":{"name": "survival_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6秒"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/gmchange