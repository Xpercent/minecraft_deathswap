tellraw @a {"text": "----------------------------------------------"}
scoreboard players set game deathswap.status -1
#team/tag
team leave @a
tag @a remove player
tag @a remove died
tag @a remove win
tag @a remove spectator
tag @a remove creative
#gamerule
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning true
gamerule naturalRegeneration true
gamerule reducedDebugInfo false
gamerule announceAdvancements false
gamerule keepInventory true
difficulty peaceful
#
effect clear @a
clear @a
function deathswap:wait/clear_ender_chest
xp set @a 0 points
xp set @a 0 levels
kill @e[type=marker,tag=start]
kill @e[type=marker,tag=pos]
gamemode adventure @a
kill @a
gamemode survival @a 
tp @a @e[type=marker,tag=lobby,limit=1]
advancement revoke @a everything
recipe take @a *

#設定時間
execute if score time_set deathswap.setting matches 0 run time set day
execute if score time_set deathswap.setting matches 1 run time set noon
execute if score time_set deathswap.setting matches 2 run time set night
execute if score time_set deathswap.setting matches 3 run time set midnight
#設定天氣
execute if score weather deathswap.setting matches 0 run weather clear
execute if score weather deathswap.setting matches 1 run weather rain
execute if score weather deathswap.setting matches 2 run weather thunder

#team
team modify red collisionRule always
team modify blue collisionRule always
team modify yellow collisionRule always
team modify green collisionRule always

team modify red friendlyFire true
team modify blue friendlyFire true
team modify yellow friendlyFire true
team modify green friendlyFire true

scoreboard players set tick deathswap.timer 0
scoreboard players set second deathswap.timer 0
scoreboard players set swap_countdown deathswap.timer 0
scoreboard players set swap_time deathswap.timer 0
scoreboard players set wait deathswap.timer 0
scoreboard players set end deathswap.timer 0
scoreboard players set play_time deathswap.timer 0
scoreboard players set safetime deathswap.timer 30
scoreboard players set gmchange deathswap.timer 0

scoreboard players reset @a deathswap.hurt
scoreboard players reset @a deathswap.death
scoreboard players reset @a deathswap.health
scoreboard players reset @a deathswap.team_red
scoreboard players reset @a deathswap.team_blue
scoreboard players reset @a deathswap.team_yellow
scoreboard players reset @a deathswap.team_green 

scoreboard players set team_red deathswap.status 0
scoreboard players set team_blue deathswap.status 0
scoreboard players set team_yellow deathswap.status 0
scoreboard players set team_green deathswap.status 0
scoreboard players set win deathswap.status 0
scoreboard players set gmchange deathswap.status 0

scoreboard players set team_choose deathswap.setting 0

scoreboard players set red_count deathswap.count 0
scoreboard players set blue_count deathswap.count 0
scoreboard players set yellow_count deathswap.count 0
scoreboard players set green_count deathswap.count 0
scoreboard players set swap_count deathswap.count 0
scoreboard players set team_count deathswap.count 0
scoreboard players set player_count deathswap.count 0

scoreboard players set @a deathswap.warped_right_click 0
scoreboard players set @a deathswap.carrot_right_click 0

scoreboard objectives setdisplay list deathswap.win_score
scoreboard objectives setdisplay sidebar deathswap.win_score

execute as @a run attribute @s minecraft:generic.max_health base set 20

#bossbar
bossbar set deathswap:gmchange_time visible false
bossbar set deathswap:swap_time visible false
execute if score language deathswap.setting matches 1 run bossbar set deathswap:wait name "§eYou are waiting for play §6Death Swap"
execute if score language deathswap.setting matches 2 run bossbar set deathswap:wait name "§e你正在等待遊玩§6死亡交換"
bossbar set deathswap:wait visible true
bossbar set deathswap:wait value 200

#team
execute if score language deathswap.setting matches 1 run team modify red displayName {"text":"Red team","color": "red"}
execute if score language deathswap.setting matches 1 run team modify blue displayName {"text":"Blue team","color": "blue"}
execute if score language deathswap.setting matches 1 run team modify yellow displayName {"text":"Yellow team","color": "yellow"}
execute if score language deathswap.setting matches 1 run team modify green displayName {"text":"Green team","color": "green"}
execute if score language deathswap.setting matches 1 run team modify spectator displayName {"text":"Spectator","color": "gray"}
execute if score language deathswap.setting matches 2 run team modify red displayName {"text":"紅隊","color": "red"}
execute if score language deathswap.setting matches 2 run team modify blue displayName {"text":"藍隊","color": "blue"}
execute if score language deathswap.setting matches 2 run team modify yellow displayName {"text":"黃隊","color": "yellow"}
execute if score language deathswap.setting matches 2 run team modify green displayName {"text":"綠隊","color": "green"}
execute if score language deathswap.setting matches 2 run team modify spectator displayName {"text":"旁觀","color": "gray"}

scoreboard players set game deathswap.status 0
function deathswap:ui/update/main

tellraw @a {"text": "----------------------------------------------"}

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§2Successfully reset §6Death Swap"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§6Death Swap §fMade by §dvipvincent"}]
execute if score language deathswap.setting matches 1 run title @a title {"text": "§6Death Swap"}
execute if score language deathswap.setting matches 1 run title @a subtitle {"text": "§dMade by vipvincent"}

execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§2已成功重製§6死亡交換"}]
# execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§6死亡交換§f是由§d早安豆江 vipvincent§f製作"}]
execute if score language deathswap.setting matches 2 run title @a title {"text": "§6死亡交換"}
# execute if score language deathswap.setting matches 2 run title @a subtitle {"text": "§d製作：早安豆江 vipvincent"}

execute as @a run function deathswap:ui/link
execute as @a run function deathswap:ui/click_admin

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1