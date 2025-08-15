#gmchange
# 0 survival
# 1 creative

execute if score gmchange deathswap.status matches 0 run gamemode survival @a[tag=player]
execute if score gmchange deathswap.status matches 1 run gamemode creative @a[tag=player]

# gmchange bossbar
execute if score gmchange deathswap.status matches 0 if score language deathswap.setting matches 1 run bossbar set deathswap:gmchange_time name [{"text": "§aGamemode Change in "},{"score":{"name": "gmchange","objective": "deathswap.timer"},"color": "gold"},{"text": "§6s §ato creative"}]
execute if score gmchange deathswap.status matches 0 if score language deathswap.setting matches 2 run bossbar set deathswap:gmchange_time name [{"text": "§a遊戲模式將於"},{"score":{"name": "gmchange","objective": "deathswap.timer"},"color": "gold"},{"text": "§6秒§a後切換至創造模式"}]
execute if score gmchange deathswap.status matches 1 if score language deathswap.setting matches 1 run bossbar set deathswap:gmchange_time name [{"text": "§cGamemode Change in "},{"score":{"name": "gmchange","objective": "deathswap.timer"},"color": "gold"},{"text": "§6s §cto survival"}]
execute if score gmchange deathswap.status matches 1 if score language deathswap.setting matches 2 run bossbar set deathswap:gmchange_time name [{"text": "§c遊戲模式將於"},{"score":{"name": "gmchange","objective": "deathswap.timer"},"color": "gold"},{"text": "§6秒§c後切換至生存模式"}]

execute if score gmchange deathswap.status matches 0 run bossbar set deathswap:gmchange_time color green
execute if score gmchange deathswap.status matches 0 run bossbar set deathswap:gmchange_time style notched_10
execute if score gmchange deathswap.status matches 1 run bossbar set deathswap:gmchange_time color red
execute if score gmchange deathswap.status matches 1 run bossbar set deathswap:gmchange_time style notched_6

# gmchange to creative
execute if score gmchange deathswap.status matches 0 if score gmchange deathswap.timer matches 0 run function deathswap:play/gmchange/creative
# gmchange to survival
execute if score gmchange deathswap.status matches 1 if score gmchange deathswap.timer matches 0 run function deathswap:play/gmchange/survival

execute if score gmchange deathswap.status matches 0 store result bossbar deathswap:gmchange_time max run scoreboard players get survival_time deathswap.setting
execute if score gmchange deathswap.status matches 1 store result bossbar deathswap:gmchange_time max run scoreboard players get creative_time deathswap.setting
execute store result bossbar deathswap:gmchange_time value run scoreboard players get gmchange deathswap.timer