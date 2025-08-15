$scoreboard players remove creative_time deathswap.setting $(creative)
execute if score creative_time deathswap.setting matches ..1 run scoreboard players set creative_time deathswap.setting 1

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6DeathSwap§7§l｜§r"},{"text": "§fThe creative time has been reduced to "},{"score":{"name": "creative_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6s"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f創造模式時長已減少為"},{"score":{"name": "creative_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6秒"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/gmchange