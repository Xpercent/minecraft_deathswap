#inventory
#  0  1  2  3  4  5  6  7  8
#  9 10 11 12 13 14 15 16 17
# 18 19 20 21 22 23 24 25 26
#hotbar
#  0  1  2  3  4  5  6  7  8  

#admin-------------------
##inventory
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.0 *[custom_data={ui:1b}] run function deathswap:setting/difficulty
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.9 *[custom_data={ui:1b}] run function deathswap:setting/time
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.18 *[custom_data={ui:1b}] run function deathswap:setting/weather
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.1 *[custom_data={ui:1b}] run function deathswap:setting/mobspawn
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.10 *[custom_data={ui:1b}] run function deathswap:setting/time_cycle
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.19 *[custom_data={ui:1b}] run function deathswap:setting/weather_cycle

execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.2 *[custom_data={ui:1b}] run function deathswap:setting/hp_natural
execute if score hp_adj deathswap.setting matches 1 as @a[tag=admin,tag=!creative] unless items entity @s inventory.3 *[custom_data={ui:1b},count=1] run function deathswap:setting/hp_adj
execute if score hp_adj deathswap.setting matches 10 as @a[tag=admin,tag=!creative] unless items entity @s inventory.3 *[custom_data={ui:1b},count=10] run function deathswap:setting/hp_adj
execute if score hp_adj deathswap.setting matches 20 as @a[tag=admin,tag=!creative] unless items entity @s inventory.3 *[custom_data={ui:1b},count=20] run function deathswap:setting/hp_adj
execute if score hp_adj deathswap.setting matches 30 as @a[tag=admin,tag=!creative] unless items entity @s inventory.3 *[custom_data={ui:1b},count=30] run function deathswap:setting/hp_adj
execute if score hp_adj deathswap.setting matches 40 as @a[tag=admin,tag=!creative] unless items entity @s inventory.3 *[custom_data={ui:1b},count=40] run function deathswap:setting/hp_adj
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.11 *[custom_data={ui:1b}] run function deathswap:setting/tool
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.12 *[custom_data={ui:1b}] run function deathswap:setting/armor
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.20 *[custom_data={ui:1b}] run function deathswap:setting/saturation
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.21 *[custom_data={ui:1b}] run function deathswap:setting/night_vision

execute if score warn deathswap.setting matches 0 as @a[tag=admin,tag=!creative] unless items entity @s inventory.4 *[custom_data={ui:1b},count=1] run function deathswap:setting/warn
execute if score warn deathswap.setting matches 5 as @a[tag=admin,tag=!creative] unless items entity @s inventory.4 *[custom_data={ui:1b},count=5] run function deathswap:setting/warn
execute if score warn deathswap.setting matches 10 as @a[tag=admin,tag=!creative] unless items entity @s inventory.4 *[custom_data={ui:1b},count=10] run function deathswap:setting/warn
execute if score invincible deathswap.setting matches 0 as @a[tag=admin,tag=!creative] unless items entity @s inventory.5 *[custom_data={ui:1b},count=1] run function deathswap:setting/invincible
execute if score invincible deathswap.setting matches 1 as @a[tag=admin,tag=!creative] unless items entity @s inventory.5 *[custom_data={ui:1b},count=1] run function deathswap:setting/invincible
execute if score invincible deathswap.setting matches 3 as @a[tag=admin,tag=!creative] unless items entity @s inventory.5 *[custom_data={ui:1b},count=3] run function deathswap:setting/invincible
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:setting/team_collisionrule
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.14 *[custom_data={ui:1b}] run function deathswap:setting/team_friendlyfire
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.22 *[custom_data={ui:1b}] run function deathswap:setting/furnace
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.23 *[custom_data={ui:1b}] run function deathswap:setting/lobbymode

execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.6 *[custom_data={ui:1b},count=2] run function deathswap:team/random_main {random:2}
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.7 *[custom_data={ui:1b},count=3] run function deathswap:team/random_main {random:3}
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.8 *[custom_data={ui:1b},count=4] run function deathswap:team/random_main {random:4}
# execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.15 *[custom_data={ui:1b}] run function deathswap:ui/gmchange
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.15 *[custom_data={ui:1b}] run function deathswap:setting/swap_time
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.16 *[custom_data={ui:1b}] run function deathswap:ui/language
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.17 *[custom_data={ui:1b}] run function deathswap:team/choose_team
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.24 *[custom_data={ui:1b}] run function deathswap:setting/default
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.25 *[custom_data={ui:1b}] run function deathswap:prepare/reset_wins
execute as @a[tag=admin,tag=!creative] unless items entity @s inventory.26 *[custom_data={ui:1b}] run function deathswap:team/reset_team

##hotbar
execute as @a[tag=admin,tag=!creative,gamemode=!creative] unless items entity @s hotbar.0 *[custom_data={ui:1b}] run function deathswap:prepare/changeto_creative
execute as @a[tag=admin,tag=creative,gamemode=creative] unless items entity @s hotbar.0 *[custom_data={ui:1b}] run function deathswap:prepare/changeto_survival
execute as @a[tag=admin,tag=!creative] unless items entity @s hotbar.1 *[custom_data={ui:1b}] run function deathswap:prepare/tp

execute as @e[type=armor_stand,tag=setlobby] at @s run function deathswap:prepare/lobby_set
execute as @a[tag=admin,tag=!creative] at @s unless items entity @s hotbar.7 *[custom_data={ui:1b}] run function deathswap:prepare/lobby_set

execute as @a[tag=admin,tag=!creative] unless items entity @s hotbar.8 *[custom_data={ui:1b}] run function deathswap:prepare/checkstart

execute as @a[tag=admin,tag=!creative] unless items entity @s weapon.offhand warped_fungus_on_a_stick[custom_data={ui:1b}] run function deathswap:ui/update/main

##right_click
execute as @a[tag=admin,tag=creative,scores={deathswap.carrot_right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b}] run function deathswap:prepare/changeto_survival

execute as @a[tag=admin,tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand feather[custom_data={ui:1b}] run function deathswap:prepare/changeto_creative
execute as @a[tag=admin,tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand slime_ball[custom_data={ui:1b}] run function deathswap:prepare/tp
execute as @a[tag=admin,tag=!creative,scores={deathswap.warped_right_click=1}] at @s if items entity @s weapon.mainhand armor_stand[custom_data={ui:1b}] run function deathswap:prepare/lobby_set
execute as @a[tag=admin,tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand emerald[custom_data={ui:1b}] run function deathswap:prepare/checkstart

##air
execute if score team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] run item replace entity @s hotbar.2 with air
execute if score team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] run item replace entity @s hotbar.3 with air
execute if score team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] run item replace entity @s hotbar.4 with air
execute if score team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] run item replace entity @s hotbar.5 with air
execute if score team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] run item replace entity @s hotbar.6 with air

#notadmin-------------------
execute as @a[tag=notadmin] unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:ui/update/main

#team-------------------
execute if score team_choose deathswap.setting matches 1 as @a[tag=notadmin] unless items entity @s weapon.offhand warped_fungus_on_a_stick[custom_data={ui:1b}] run function deathswap:ui/update/main

execute if score team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.2 *[custom_data={ui:1b}] run function deathswap:team/join/red
execute if score team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.3 *[custom_data={ui:1b}] run function deathswap:team/join/blue
execute if score team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.4 *[custom_data={ui:1b}] run function deathswap:team/join/spectator
execute if score team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.5 *[custom_data={ui:1b}] run function deathswap:team/join/yellow
execute if score team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.6 *[custom_data={ui:1b}] run function deathswap:team/join/green

execute as @a[tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand red_dye[custom_data={ui:1b}] run function deathswap:team/join/red
execute as @a[tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand blue_dye[custom_data={ui:1b}] run function deathswap:team/join/blue
execute as @a[tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand gray_dye[custom_data={ui:1b}] run function deathswap:team/join/spectator
execute as @a[tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand yellow_dye[custom_data={ui:1b}] run function deathswap:team/join/yellow
execute as @a[tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand lime_dye[custom_data={ui:1b}] run function deathswap:team/join/green

#right click clear-------------------
scoreboard players set @a deathswap.carrot_right_click 0
scoreboard players set @a deathswap.warped_right_click 0