scoreboard players add lobbymode deathswap.setting 1
execute if score lobbymode deathswap.setting matches 2 run scoreboard players set lobbymode deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score lobbymode deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fGame start point has been set to §cRandom"}]
execute if score language deathswap.setting matches 1 if score lobbymode deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fGame start point has been set to §aLobby"}]

#中文
execute if score language deathswap.setting matches 2 if score lobbymode deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f遊戲開始點已設定為§c隨機"}]
execute if score language deathswap.setting matches 2 if score lobbymode deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f遊戲開始點已設定為§a大廳"}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/update/main
