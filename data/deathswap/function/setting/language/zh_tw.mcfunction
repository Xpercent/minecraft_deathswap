scoreboard players set language deathswap.setting 2

tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f語言已變更為§b中文"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:reset