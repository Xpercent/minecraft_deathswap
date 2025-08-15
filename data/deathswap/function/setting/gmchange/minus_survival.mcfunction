$scoreboard players remove survival_time deathswap.setting $(survival)
execute if score survival_time deathswap.setting matches ..5 run scoreboard players set survival_time deathswap.setting 5

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6DeathSwap§7§l｜§r"},{"text": "§fThe survival time has been reduced to "},{"score":{"name": "survival_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6s"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f生存模式時長已設定為"},{"score":{"name": "survival_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6秒"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/gmchange