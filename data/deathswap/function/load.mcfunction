#update reinstall
execute unless score version deathswap.status matches 24 run function deathswap:uninstall
#gamerule
gamerule doImmediateRespawn true
gamerule maxEntityCramming 0
gamerule spawnRadius 0

#scoreboard
scoreboard objectives add deathswap.status dummy
scoreboard objectives add deathswap.setting dummy
scoreboard objectives add deathswap.timer dummy
scoreboard objectives add deathswap.death deathCount
scoreboard objectives add deathswap.count dummy
scoreboard objectives add deathswap.join dummy

scoreboard objectives add deathswap.win_score dummy 

scoreboard players set safetime deathswap.timer 30

scoreboard objectives add deathswap trigger

scoreboard objectives add deathswap.warped_right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add deathswap.carrot_right_click minecraft.used:minecraft.carrot_on_a_stick

#health
scoreboard objectives add deathswap.health health
scoreboard objectives add deathswap.hurt dummy
scoreboard objectives setdisplay below_name deathswap.health
scoreboard objectives modify deathswap.health displayname {"text": "§c❤"}

#team
team add red
team add blue
team add yellow
team add green
team add spectator
team modify red color red
team modify blue color blue
team modify yellow color yellow
team modify green color green
team modify spectator color gray

#bossbar
bossbar add deathswap:swap_time ""
bossbar set deathswap:swap_time color white
bossbar add deathswap:wait ""
bossbar set deathswap:wait color pink
bossbar set deathswap:wait max 200
bossbar add deathswap:gmchange_time ""
bossbar set deathswap:gmchange_time style notched_10

#text
tellraw @a {"text": "----------------------------------------------"}
execute unless score language deathswap.setting matches 2.. run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§aSuccessfully loaded §6Death Swap §ev2.4 "},{"text": "§c[Uninstall]","clickEvent": {"action": "run_command","value": "/function deathswap:uninstall"},"hoverEvent": {"action": "show_text","value": "Only for OP players"}}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§a已成功載入 §6死亡交換 §ev2.4 "},{"text": "§c[解除安裝]","clickEvent": {"action": "run_command","value": "/function deathswap:uninstall"},"hoverEvent": {"action": "show_text","value": "限OP玩家使用"}}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

#firstload
execute unless score version deathswap.status matches 24 run function deathswap:setting/default
scoreboard players set version deathswap.status 24

#load end
execute unless score language deathswap.setting matches 1.. as @a[scores={deathswap.join=1}] run function deathswap:ui/language

execute if score language deathswap.setting matches 1.. run function deathswap:reset
