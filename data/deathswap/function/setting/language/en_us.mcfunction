scoreboard players set language deathswap.setting 1

tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe language has been changed to §cEnglish"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:reset