tp @a @s
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fTeleport §eall players §fto "},{"selector":"@s"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f傳送§e所有玩家§f到 "},{"selector":"@s"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1
function deathswap:ui/update/main