#text
tellraw @a {"text": "----------------------------------------------"}
execute unless score language deathswap.setting matches 2.. run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fUninstall §6Death Swap§f!"}]
execute unless score language deathswap.setting matches 2.. run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fDirect enter /reload to reinstall."}]
execute unless score language deathswap.setting matches 2.. run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fIf you want to uninstall it completely,"}]
execute unless score language deathswap.setting matches 2.. run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fdelete file and type /reload"}]

execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f解除安裝§6死亡交換§f！"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f直接輸入/reload則重新安裝"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f如要徹底解除安裝，請刪除檔案後輸入/reload"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1
tellraw @a {"text": "----------------------------------------------"}

#uninstall
time set day
weather clear
bossbar remove deathswap:swap_time
bossbar remove deathswap:wait
bossbar remove deathswap:gmchange_time
clear @a
xp set @a 0 points
xp set @a 0 levels
effect clear @a
advancement revoke @a everything
execute as @e[type=marker,tag=lobby] at @s run forceload remove ~ ~
kill @a
kill @e[type=marker,tag=start]
kill @e[type=marker,tag=pos]
kill @e[type=marker,tag=lobby]
tag @a remove player
tag @a remove spectator
tag @a remove died
tag @a remove win
tag @a remove admin
tag @a remove notadmin
tag @a remove creative
#scoreboard
scoreboard objectives remove deathswap.count
scoreboard objectives remove deathswap.death
scoreboard objectives remove deathswap.version
scoreboard objectives remove deathswap.health
scoreboard objectives remove deathswap.hurt
scoreboard objectives remove deathswap.join
scoreboard objectives remove deathswap.status
scoreboard objectives remove deathswap.timer
scoreboard objectives remove deathswap.warped_right_click
scoreboard objectives remove deathswap.carrot_right_click
scoreboard objectives remove deathswap
scoreboard objectives remove deathswap.enabled
scoreboard objectives remove deathswap.win_score
scoreboard objectives remove deathswap.setting
#team
team remove red
team remove blue
team remove yellow
team remove green
team remove spectator
#gamerule
gamerule keepInventory false
gamerule doImmediateRespawn false
gamerule doDaylightCycle true
gamerule doWeatherCycle true 
gamerule naturalRegeneration true
gamerule doMobSpawning true
gamerule reducedDebugInfo false
gamerule maxEntityCramming 24
gamerule announceAdvancements true
gamerule spawnRadius 10

gamemode survival @a