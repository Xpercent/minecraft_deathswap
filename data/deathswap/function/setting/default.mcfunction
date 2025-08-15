scoreboard players set difficulty deathswap.setting 2
scoreboard players set time_set deathswap.setting 0
time set day
scoreboard players set weather deathswap.setting 0
weather clear
scoreboard players set time_cycle deathswap.setting 0
scoreboard players set weather_cycle deathswap.setting 0
scoreboard players set mobspawn deathswap.setting 0
scoreboard players set hp_natural deathswap.setting 0
scoreboard players set saturation deathswap.setting 0
scoreboard players set night_vision deathswap.setting 0
scoreboard players set furnace deathswap.setting 0
scoreboard players set invincible deathswap.setting 0
scoreboard players set warn deathswap.setting 0
scoreboard players set lobbymode deathswap.setting 0
scoreboard players set tool deathswap.setting 0
scoreboard players set armor deathswap.setting 0
scoreboard players set hp_adj deathswap.setting 20
scoreboard players set team_collisionrule deathswap.setting 0
scoreboard players set team_friendlyfire deathswap.setting 0
scoreboard players set gmchange deathswap.setting 0
scoreboard players set survival_time deathswap.setting 60
scoreboard players set creative_time deathswap.setting 3

function deathswap:ui/update/main

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fGame settings have been reset to §dDefault"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f遊戲設定已重製為§d預設值"}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1