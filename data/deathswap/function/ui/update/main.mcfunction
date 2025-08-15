execute if score game deathswap.status matches 0 run clear @a *[minecraft:custom_data={ui:1b}]
execute if score game deathswap.status matches 0 if score language deathswap.setting matches 1 run function deathswap:ui/update/en_us
execute if score game deathswap.status matches 0 if score language deathswap.setting matches 2 run function deathswap:ui/update/zh_tw