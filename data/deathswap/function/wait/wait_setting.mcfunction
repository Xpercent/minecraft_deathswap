kill @e[type=marker,tag=start]
kill @e[type=marker,tag=pos]
team join spectator @a[team=]
tag @a remove player
tag @a remove died
tag @a remove win
tag @a remove spectator
tag @a[team=blue] add player
tag @a[team=red] add player
tag @a[team=yellow] add player
tag @a[team=green] add player 
tag @a[team=spectator] add spectator
clear @a
function deathswap:wait/clear_ender_chest
xp set @a 0 points
xp set @a 0 levels
effect clear @a
advancement revoke @a everything
recipe take @a *
gamerule reducedDebugInfo true
gamerule announceAdvancements true
gamerule keepInventory false

gamemode spectator @a[tag=spectator]
gamemode survival @a[tag=player]


scoreboard players set swap_count deathswap.count 0
scoreboard players set tick deathswap.timer 0
scoreboard players set second deathswap.timer 0
scoreboard players set swap_countdown deathswap.timer 0
scoreboard players operation swap_time deathswap.timer = swap_time_setting deathswap.setting
scoreboard players reset @a deathswap.hurt
scoreboard players reset @a deathswap.death

#gmchange
scoreboard players set gmchange deathswap.status 0
execute if score gmchange deathswap.setting matches 1 run scoreboard players operation gmchange deathswap.timer = survival_time deathswap.setting

#設定難度
execute if score difficulty deathswap.setting matches 0 run difficulty peaceful
execute if score difficulty deathswap.setting matches 1 run difficulty easy
execute if score difficulty deathswap.setting matches 2 run difficulty normal
execute if score difficulty deathswap.setting matches 3 run difficulty hard
#設定時間
execute if score time_set deathswap.setting matches 0 run time set day
execute if score time_set deathswap.setting matches 1 run time set noon
execute if score time_set deathswap.setting matches 2 run time set night
execute if score time_set deathswap.setting matches 3 run time set midnight
execute if score time_cycle deathswap.setting matches 0 run gamerule doDaylightCycle true
execute if score time_cycle deathswap.setting matches 1 run gamerule doDaylightCycle false
#設定天氣
execute if score weather deathswap.setting matches 0 run weather clear
execute if score weather deathswap.setting matches 1 run weather rain
execute if score weather deathswap.setting matches 2 run weather thunder
execute if score weather_cycle deathswap.setting matches 0 run gamerule doWeatherCycle true
execute if score weather_cycle deathswap.setting matches 1 run gamerule doWeatherCycle false
#設定怪物生成
execute if score mobspawn deathswap.setting matches 0 run gamerule doMobSpawning true
execute if score mobspawn deathswap.setting matches 1 run gamerule doMobSpawning false
#設定自然回血
execute if score hp_natural deathswap.setting matches 0 run gamerule naturalRegeneration true
execute if score hp_natural deathswap.setting matches 1 run gamerule naturalRegeneration false
#設定血量
execute if score hp_adj deathswap.setting matches 1 run execute as @a run attribute @s minecraft:generic.max_health base set 1
execute if score hp_adj deathswap.setting matches 10 run execute as @a run attribute @s minecraft:generic.max_health base set 10
execute if score hp_adj deathswap.setting matches 20 run execute as @a run attribute @s minecraft:generic.max_health base set 20
execute if score hp_adj deathswap.setting matches 30 run execute as @a run attribute @s minecraft:generic.max_health base set 30
execute if score hp_adj deathswap.setting matches 40 run execute as @a run attribute @s minecraft:generic.max_health base set 40

#設定同隊推擠
execute if score team_collisionrule deathswap.setting matches 0 run team modify red collisionRule always
execute if score team_collisionrule deathswap.setting matches 0 run team modify blue collisionRule always
execute if score team_collisionrule deathswap.setting matches 0 run team modify yellow collisionRule always
execute if score team_collisionrule deathswap.setting matches 0 run team modify green collisionRule always

execute if score team_collisionrule deathswap.setting matches 1 run team modify red collisionRule pushOwnTeam
execute if score team_collisionrule deathswap.setting matches 1 run team modify blue collisionRule pushOwnTeam
execute if score team_collisionrule deathswap.setting matches 1 run team modify yellow collisionRule pushOwnTeam
execute if score team_collisionrule deathswap.setting matches 1 run team modify green collisionRule pushOwnTeam

#設定同隊傷害
execute if score team_collisionrule deathswap.setting matches 0 run team modify red friendlyFire true
execute if score team_collisionrule deathswap.setting matches 0 run team modify blue friendlyFire true
execute if score team_collisionrule deathswap.setting matches 0 run team modify yellow friendlyFire true
execute if score team_collisionrule deathswap.setting matches 0 run team modify green friendlyFire true

execute if score team_collisionrule deathswap.setting matches 1 run team modify red friendlyFire false
execute if score team_collisionrule deathswap.setting matches 1 run team modify blue friendlyFire false
execute if score team_collisionrule deathswap.setting matches 1 run team modify yellow friendlyFire false
execute if score team_collisionrule deathswap.setting matches 1 run team modify green friendlyFire false

execute as @a[team=red] run scoreboard players set team_red deathswap.status 1
execute as @a[team=blue] run scoreboard players set team_blue deathswap.status 1
execute as @a[team=yellow] run scoreboard players set team_yellow deathswap.status 1
execute as @a[team=green] run scoreboard players set team_green deathswap.status 1

effect give @a[tag=player] slowness 8 255 true
effect give @a[tag=player] mining_fatigue 8 255 true
effect give @a[tag=player] weakness 8 255 true
effect give @a[tag=player] instant_health 8 4 true 
effect give @a[tag=player] regeneration 18 255 true
effect give @a[tag=player] resistance 18 255 true 