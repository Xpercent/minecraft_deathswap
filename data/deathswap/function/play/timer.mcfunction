scoreboard players add tick deathswap.timer 1

execute if score tick deathswap.timer matches 20 run scoreboard players add second deathswap.timer 1
execute if score tick deathswap.timer matches 20 run scoreboard players remove swap_countdown deathswap.timer 1
execute if score tick deathswap.timer matches 20 run scoreboard players add play_time deathswap.timer 1

execute if score gmchange deathswap.setting matches 1 if score tick deathswap.timer matches 20 run scoreboard players remove gmchange deathswap.timer 1

execute if score tick deathswap.timer matches 20 run scoreboard players set tick deathswap.timer 0