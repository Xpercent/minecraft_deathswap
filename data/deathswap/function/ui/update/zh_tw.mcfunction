#inventory
#  0  1  2  3  4  5  6  7  8
#  9 10 11 12 13 14 15 16 17
# 18 19 20 21 22 23 24 25 26
#hotbar
#  0  1  2  3  4  5  6  7  8  


#zh_tw

#admin-------------------
#difficulty
execute if score difficulty deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.0 with player_head[custom_data={ui:1b},custom_name='{"text":"§a難度：和平","italic":false}',lore=['"§7遊戲難度"'],profile={name:"cow"}]
execute if score difficulty deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.0 with zombie_head[custom_data={ui:1b},custom_name='{"text":"§2難度：簡單","italic":false}',lore=['"§7遊戲難度"']]
execute if score difficulty deathswap.setting matches 2 run item replace entity @a[tag=admin,gamemode=!creative] inventory.0 with piglin_head[custom_data={ui:1b},custom_name='{"text":"§6難度：普通","italic":false}',lore=['"§7遊戲難度"']]
execute if score difficulty deathswap.setting matches 3 run item replace entity @a[tag=admin,gamemode=!creative] inventory.0 with wither_skeleton_skull[custom_data={ui:1b},custom_name='{"text":"§c難度：困難","italic":false}',lore=['"§7遊戲難度"']]

#time
execute if score time_set deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.9 with clock[custom_data={ui:1b},custom_name='{"text":"§b時間：早上","italic":false}',lore=['"§7遊戲時間"']]
execute if score time_set deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.9 with clock[custom_data={ui:1b},custom_name='{"text":"§6時間：中午","italic":false}',lore=['"§7遊戲時間"']]
execute if score time_set deathswap.setting matches 2 run item replace entity @a[tag=admin,gamemode=!creative] inventory.9 with clock[custom_data={ui:1b},custom_name='{"text":"§7時間：傍晚","italic":false}',lore=['"§7遊戲時間"']]
execute if score time_set deathswap.setting matches 3 run item replace entity @a[tag=admin,gamemode=!creative] inventory.9 with clock[custom_data={ui:1b},custom_name='{"text":"§8時間：晚上","italic":false}',lore=['"§7遊戲時間"']]

#weather
execute if score weather deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.18 with sunflower[custom_data={ui:1b},custom_name='{"text":"§b天氣：晴朗","italic":false}',lore=['"§7遊戲天氣"']]
execute if score weather deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.18 with water_bucket[custom_data={ui:1b},custom_name='{"text":"§3天氣：下雨","italic":false}',lore=['"§7遊戲天氣"']]
execute if score weather deathswap.setting matches 2 run item replace entity @a[tag=admin,gamemode=!creative] inventory.18 with lightning_rod[custom_data={ui:1b},custom_name='{"text":"§9天氣：雷雨","italic":false}',lore=['"§7遊戲天氣"']]

#mobspawn
execute if score mobspawn deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.1 with bat_spawn_egg[custom_data={ui:1b},custom_name='{"text":"§a怪物生成：開啟","italic":false}',lore=['"§7是否生成怪物，不影響生怪磚"'],enchantment_glint_override=true]
execute if score mobspawn deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.1 with bat_spawn_egg[custom_data={ui:1b},custom_name='{"text":"§c怪物生成：關閉","italic":false}',lore=['"§7是否生成怪物，不影響生怪磚"']]

#time_cycle
execute if score time_cycle deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.10 with daylight_detector[custom_data={ui:1b},custom_name='{"text":"§a日夜交替：開啟","italic":false}',lore=['"§7是否進行晝夜更替和月相變化"'],enchantment_glint_override=true]
execute if score time_cycle deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.10 with daylight_detector[custom_data={ui:1b},custom_name='{"text":"§c日夜交替：關閉","italic":false}',lore=['"§7是否進行晝夜更替和月相變化"']]

#wather_cycle
execute if score weather_cycle deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.19 with heart_of_the_sea[custom_data={ui:1b},custom_name='{"text":"§a更新天氣：開啟","italic":false}',lore=['"§7天氣是否變化"'],enchantment_glint_override=true]
execute if score weather_cycle deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.19 with heart_of_the_sea[custom_data={ui:1b},custom_name='{"text":"§c更新天氣：關閉","italic":false}',lore=['"§7天氣是否變化"']]

#hp_natural
execute if score hp_natural deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.2 with apple[custom_data={ui:1b},custom_name='{"text":"§a自然回血：開啟","italic":false}',lore=['"§7玩家是否能在飢餓值足夠時自然恢復生命值"'],enchantment_glint_override=true]
execute if score hp_natural deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.2 with apple[custom_data={ui:1b},custom_name='{"text":"§c自然回血：關閉","italic":false}',lore=['"§7玩家是否能在飢餓值足夠時自然恢復生命值"']]

#HP adj
execute if score hp_adj deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.3 with redstone[custom_data={ui:1b},custom_name='{"text":"§a血量：1點","italic":false}',lore=['"§7調整玩家的血量，1顆心等於2點"','"§720點為Minecraft預設值"'],enchantment_glint_override=true] 1
execute if score hp_adj deathswap.setting matches 10 run item replace entity @a[tag=admin,gamemode=!creative] inventory.3 with redstone[custom_data={ui:1b},custom_name='{"text":"§a血量：10點","italic":false}',lore=['"§7調整玩家的血量，1顆心等於2點"','"§720點為Minecraft預設值"'],enchantment_glint_override=true] 10
execute if score hp_adj deathswap.setting matches 20 run item replace entity @a[tag=admin,gamemode=!creative] inventory.3 with redstone[custom_data={ui:1b},custom_name='{"text":"§c血量：20點","italic":false}',lore=['"§7調整玩家的血量，1顆心等於2點"','"§720點為Minecraft預設值"']] 20
execute if score hp_adj deathswap.setting matches 30 run item replace entity @a[tag=admin,gamemode=!creative] inventory.3 with redstone[custom_data={ui:1b},custom_name='{"text":"§a血量：30點","italic":false}',lore=['"§7調整玩家的血量，1顆心等於2點"','"§720點為Minecraft預設值"'],enchantment_glint_override=true] 30
execute if score hp_adj deathswap.setting matches 40 run item replace entity @a[tag=admin,gamemode=!creative] inventory.3 with redstone[custom_data={ui:1b},custom_name='{"text":"§a血量：40點","italic":false}',lore=['"§7調整玩家的血量，1顆心等於2點"','"§720點為Minecraft預設值"'],enchantment_glint_override=true] 40

#tool
execute if score tool deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.11 with stick[custom_data={ui:1b},custom_name='{"text":"§c起始工具：關閉","italic":false}',lore=['"§7遊戲開始後是否要給予玩家起始工具和食物"']]
execute if score tool deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.11 with wooden_axe[custom_data={ui:1b},custom_name='{"text":"§a起始工具：木製工具+4個麵包","italic":false}',lore=['"§7遊戲開始後是否要給予玩家起始工具和食物"'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 2 run item replace entity @a[tag=admin,gamemode=!creative] inventory.11 with stone_axe[custom_data={ui:1b},custom_name='{"text":"§a起始工具：石製工具+8個麵包","italic":false}',lore=['"§7遊戲開始後是否要給予玩家起始工具和食物"'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 3 run item replace entity @a[tag=admin,gamemode=!creative] inventory.11 with iron_axe[custom_data={ui:1b},custom_name='{"text":"§a起始工具：鐵製工具+16個麵包","italic":false}',lore=['"§7遊戲開始後是否要給予玩家起始工具和食物"'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 4 run item replace entity @a[tag=admin,gamemode=!creative] inventory.11 with diamond_axe[custom_data={ui:1b},custom_name='{"text":"§a起始工具：鑽石工具+32個麵包","italic":false}',lore=['"§7遊戲開始後是否要給予玩家起始工具和食物"'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 5 run item replace entity @a[tag=admin,gamemode=!creative] inventory.11 with netherite_axe[custom_data={ui:1b},custom_name='{"text":"§a起始工具：獄髓工具+64個麵包","italic":false}',lore=['"§7遊戲開始後是否要給予玩家起始工具和食物"'],enchantment_glint_override=true]

#armor
execute if score armor deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.12 with blaze_rod[custom_data={ui:1b},custom_name='{"text":"§c起始裝備：關閉","italic":false}',lore=['"§7遊戲開始後是否要給予玩家裝備"']]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.12 with leather_chestplate[custom_data={ui:1b},custom_name='{"text":"§a起始裝備：皮革裝備","italic":false}',lore=['"§7遊戲開始後是否要給予玩家裝備"'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=admin,gamemode=!creative] inventory.12 with chainmail_chestplate[custom_data={ui:1b},custom_name='{"text":"§a起始裝備：鎖鏈裝備","italic":false}',lore=['"§7遊戲開始後是否要給予玩家裝備"'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=admin,gamemode=!creative] inventory.12 with iron_chestplate[custom_data={ui:1b},custom_name='{"text":"§a起始裝備：鐵製裝備","italic":false}',lore=['"§7遊戲開始後是否要給予玩家裝備"'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=admin,gamemode=!creative] inventory.12 with diamond_chestplate[custom_data={ui:1b},custom_name='{"text":"§a起始裝備：鑽石裝備","italic":false}',lore=['"§7遊戲開始後是否要給予玩家裝備"'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=admin,gamemode=!creative] inventory.12 with netherite_chestplate[custom_data={ui:1b},custom_name='{"text":"§a起始裝備：獄髓裝備","italic":false}',lore=['"§7遊戲開始後是否要給予玩家裝備"'],enchantment_glint_override=true]

#saturation
execute if score saturation deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.20 with honey_bottle[custom_data={ui:1b},custom_name='{"text":"§c飽食效果：關閉","italic":false}',lore=['"§7是否給予玩家飽食效果"']]
execute if score saturation deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.20 with honey_bottle[custom_data={ui:1b},custom_name='{"text":"§a飽食效果：開啟","italic":false}',lore=['"§7是否給予玩家飽食效果"'],enchantment_glint_override=true]

#night_vision
execute if score night_vision deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.21 with potion[custom_data={ui:1b},custom_name='{"text":"§c夜視效果：關閉","italic":false}',lore=['"§7是否給予玩家夜視效果"'],potion_contents={potion:long_night_vision}]
execute if score night_vision deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.21 with potion[custom_data={ui:1b},custom_name='{"text":"§a夜視效果：開啟","italic":false}',lore=['"§7是否給予玩家夜視效果"'],potion_contents={potion:long_night_vision},enchantment_glint_override=true]

#warn
execute if score warn deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.4 with note_block[custom_data={ui:1b},custom_name='{"text":"§c傳送警告：關閉","italic":false}',lore=['"§7傳送前是否要警告"']] 1
execute if score warn deathswap.setting matches 5 run item replace entity @a[tag=admin,gamemode=!creative] inventory.4 with note_block[custom_data={ui:1b},custom_name='{"text":"§a傳送警告：5秒","italic":false}',lore=['"§7傳送前是否要警告"'],enchantment_glint_override=true] 5
execute if score warn deathswap.setting matches 10 run item replace entity @a[tag=admin,gamemode=!creative] inventory.4 with note_block[custom_data={ui:1b},custom_name='{"text":"§a傳送警告：10秒","italic":false}',lore=['"§7傳送前是否要警告"'],enchantment_glint_override=true] 10

#invincible
execute if score invincible deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.5 with ender_pearl[custom_data={ui:1b},custom_name='{"text":"§c傳送無敵：關閉","italic":false}',lore=['"§7傳送時是否要給予抗性"']] 1
execute if score invincible deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.5 with ender_eye[custom_data={ui:1b},custom_name='{"text":"§a傳送無敵：1秒","italic":false}',lore=['"§7傳送時是否要給予抗性"'],enchantment_glint_override=true] 1
execute if score invincible deathswap.setting matches 3 run item replace entity @a[tag=admin,gamemode=!creative] inventory.5 with ender_eye[custom_data={ui:1b},custom_name='{"text":"§a傳送無敵：3秒","italic":false}',lore=['"§7傳送時是否要給予抗性"'],enchantment_glint_override=true] 3

#team collisionRule
execute if score team_collisionrule deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.13 with lead[custom_data={ui:1b},custom_name='{"text":"§a同隊推擠：開啟","italic":false}',lore=['"§7同隊是否要互相推擠"'],enchantment_glint_override=true]
execute if score team_collisionrule deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.13 with lead[custom_data={ui:1b},custom_name='{"text":"§c同隊推擠：關閉","italic":false}',lore=['"§7同隊是否要互相推擠"']]

#team friendlyFire
execute if score team_friendlyfire deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.14 with pufferfish[custom_data={ui:1b},custom_name='{"text":"§a同隊傷害：開啟","italic":false}',lore=['"§7同隊是否可以互相傷害"'],enchantment_glint_override=true]
execute if score team_friendlyfire deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.14 with pufferfish[custom_data={ui:1b},custom_name='{"text":"§c同隊傷害：關閉","italic":false}',lore=['"§7同隊是否可以互相傷害"']]

#furnace
execute if score furnace deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.22 with raw_iron[custom_data={ui:1b},custom_name='{"text":"§c物品免燒：關閉","italic":false}',lore=['"§7礦物和食物是否不用燒，就能獲得燒好的"']]
execute if score furnace deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.22 with iron_ingot[custom_data={ui:1b},custom_name='{"text":"§a物品免燒：開啟","italic":false}',lore=['"§7礦物和食物是否不用燒，就能獲得燒好的"'],enchantment_glint_override=true]

#lobbymode
execute if score lobbymode deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.23 with lectern[custom_data={ui:1b},custom_name='{"text":"§c遊戲開始點：隨機","italic":false}',lore=['"§7遊戲一開始的出生地"','"§7會依照大廳所在緯度"']]
execute if score lobbymode deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.23 with lectern[custom_data={ui:1b},custom_name='{"text":"§a遊戲開始點：大廳","italic":false}',lore=['"§7遊戲一開始的出生地"','"§7會依照大廳所在緯度"'],enchantment_glint_override=true]

#random_team
item replace entity @a[tag=admin,gamemode=!creative] inventory.6 with magenta_glazed_terracotta[custom_data={ui:1b},custom_name='{"text":"§e隨機分為兩隊","italic":false}',lore=['"§7將非旁觀者的玩家隨機分為兩隊"']] 2
item replace entity @a[tag=admin,gamemode=!creative] inventory.7 with magenta_glazed_terracotta[custom_data={ui:1b},custom_name='{"text":"§e隨機分為三隊","italic":false}',lore=['"§7將非旁觀者的玩家隨機分為兩隊"']] 3
item replace entity @a[tag=admin,gamemode=!creative] inventory.8 with magenta_glazed_terracotta[custom_data={ui:1b},custom_name='{"text":"§e隨機分為四隊","italic":false}',lore=['"§7將非旁觀者的玩家隨機分為兩隊"']] 4

# #gmchange
# execute if score gmchange deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§c遊戲模式定時切換：關閉","italic":false}',lore=['"§7在設定時間定時切換遊戲模式"']]
# execute if score gmchange deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§a遊戲模式定時切換：開啟","italic":false}',lore=['"§7在設定時間定時切換遊戲模式"'],enchantment_glint_override=true]
#swap_time
execute if score swap_time_setting deathswap.setting matches 300 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§b傳送時間：300秒","italic":false}',lore=['"§7玩家交換位置的時間間隔"']]
execute if score swap_time_setting deathswap.setting matches 330 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§b傳送時間：330秒","italic":false}',lore=['"§7玩家交換位置的時間間隔"']]
execute if score swap_time_setting deathswap.setting matches 360 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§b傳送時間：360秒","italic":false}',lore=['"§7玩家交換位置的時間間隔"']]
execute if score swap_time_setting deathswap.setting matches 390 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§b傳送時間：390秒","italic":false}',lore=['"§7玩家交換位置的時間間隔"']]
execute if score swap_time_setting deathswap.setting matches 420 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§b傳送時間：420秒","italic":false}',lore=['"§7玩家交換位置的時間間隔"']]
execute if score swap_time_setting deathswap.setting matches 450 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§b傳送時間：450秒","italic":false}',lore=['"§7玩家交換位置的時間間隔"']]
execute if score swap_time_setting deathswap.setting matches 480 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§b傳送時間：480秒","italic":false}',lore=['"§7玩家交換位置的時間間隔"']]
execute if score swap_time_setting deathswap.setting matches 510 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§b傳送時間：510秒","italic":false}',lore=['"§7玩家交換位置的時間間隔"']]
execute if score swap_time_setting deathswap.setting matches 540 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§b傳送時間：540秒","italic":false}',lore=['"§7玩家交換位置的時間間隔"']]
execute if score swap_time_setting deathswap.setting matches 570 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§b傳送時間：570秒","italic":false}',lore=['"§7玩家交換位置的時間間隔"']]
execute if score swap_time_setting deathswap.setting matches 600 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§b傳送時間：600秒","italic":false}',lore=['"§7玩家交換位置的時間間隔"']]

#language
item replace entity @a[tag=admin,gamemode=!creative] inventory.16 with player_head[custom_data={ui:1b},custom_name='{"translate":"options.language","color": "yellow","italic":false}',lore=['{"translate":"narrator.button.language","color":"gray","italic":false}'],profile={name:"",id:[I;-1121419518,2067529689,-982738485,263170875], properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThkYWExZTNlZDk0ZmYzZTMzZTFkNGM2ZTQzZjAyNGM0N2Q3OGE1N2JhNGQzOGU3NWU3YzkyNjQxMDYifX19"}]}]

#choose_team
execute if score team_choose deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.17 with snowball[custom_data={ui:1b},custom_name='{"text":"§c選隊權限：關閉","italic":false}',lore=['"§7開啟此功能才能讓玩家自己選擇隊伍"']]
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.17 with snowball[custom_data={ui:1b},custom_name='{"text":"§a選隊權限：開啟","italic":false}',lore=['"§7開啟此功能才能讓玩家自己選擇隊伍"'],enchantment_glint_override=true]

#reset setting
item replace entity @a[tag=admin,gamemode=!creative] inventory.24 with nautilus_shell[custom_data={ui:1b},custom_name='{"text":"§e重製設定","italic":false}',lore=['"§7點我重製設定"']]

#reset win scores
item replace entity @a[tag=admin,gamemode=!creative] inventory.25 with nether_star[custom_data={ui:1b},custom_name='{"text":"§e重製獲勝次數","italic":false}',lore=['"§7清除所有玩家的獲勝次數"','"§7按TAB顯示獲勝次數"']]

#reset_team
item replace entity @a[tag=admin,gamemode=!creative] inventory.26 with redstone_torch[custom_data={ui:1b},custom_name='{"text":"§e重製隊伍","italic":false}',lore=['"§7將所有玩家移出隊伍"']]

#hotbar-lobby
item replace entity @a[tag=admin,gamemode=!creative] hotbar.7 with armor_stand[custom_data={ui:1b},custom_name='[{"text":"設置遊戲大廳(","italic":false,"color":"yellow"},{"keybind":"key.use"},{"text":")"}]',entity_data={id:"armor_stand",Tags:["setlobby"],"Invisible":true}]

#hotbar-tp
item replace entity @a[tag=admin,gamemode=!creative] hotbar.1 with slime_ball[custom_data={ui:1b},custom_name='[{"text":"傳送所有玩家到這裡(","italic":false,"color":"yellow"},{"keybind":"key.use"},{"text":")"}]']

#survival-creative
item replace entity @a[tag=admin,gamemode=!creative] hotbar.0 with feather[custom_data={ui:1b},custom_name='[{"text":"切換至創造模式(","italic":false,"color":"yellow"},{"keybind":"key.use"},{"text":")"}]']
item replace entity @a[tag=admin,gamemode=creative] hotbar.0 with carrot_on_a_stick[custom_data={ui:1b},custom_name='[{"text":"§e切換至設定介面(","italic":false,"color":"yellow"},{"keybind":"key.use"},{"text":")"}]']

#start
item replace entity @a[tag=admin,gamemode=!creative] hotbar.8 with emerald[custom_data={ui:1b},custom_name='[{"text":"開始遊戲！(","italic":false,"color":"green"},{"keybind":"key.use"},{"text":")"}]']

#left head admin
item replace entity @a[tag=admin,gamemode=!creative] weapon.offhand with warped_fungus_on_a_stick[custom_data={ui:1b},custom_name='{"text":"","italic":false}']

#notadmin-------------------
item replace entity @a[tag=notadmin] inventory.13 with command_block[custom_data={ui:1b},custom_name='{"text":"提示","italic":false}',lore=['"§e如果你是OP玩家"','"§e請輸入/tag @s add admin"','"§e來獲得管理員權限"']]

#left head notadmin
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=notadmin] weapon.offhand with warped_fungus_on_a_stick[custom_data={ui:1b},custom_name='{"text":"","italic":false}']

#team-------------------
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!red] hotbar.2 with red_dye[custom_data={ui:1b},custom_name='[{"text":"加入紅隊(","italic":false,"color":"red"},{"keybind":"key.use"},{"text":")"}]']
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=red] hotbar.2 with red_dye[custom_data={ui:1b},custom_name='[{"text":"已加入紅隊(","italic":false,"color":"red"},{"keybind":"key.use"},{"text":")"}]',enchantment_glint_override=true]

execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!blue] hotbar.3 with blue_dye[custom_data={ui:1b},custom_name='[{"text":"加入藍隊(","italic":false,"color":"blue"},{"keybind":"key.use"},{"text":")"}]']
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=blue] hotbar.3 with blue_dye[custom_data={ui:1b},custom_name='[{"text":"已加入藍隊(","italic":false,"color":"blue"},{"keybind":"key.use"},{"text":")"}]',enchantment_glint_override=true]

execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!yellow] hotbar.5 with yellow_dye[custom_data={ui:1b},custom_name='[{"text":"加入黃隊(","italic":false,"color":"yellow"},{"keybind":"key.use"},{"text":")"}]']
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=yellow] hotbar.5 with yellow_dye[custom_data={ui:1b},custom_name='[{"text":"已加入黃隊(","italic":false,"color":"yellow"},{"keybind":"key.use"},{"text":")"}]',enchantment_glint_override=true]

execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!green] hotbar.6 with lime_dye[custom_data={ui:1b},custom_name='[{"text":"加入綠隊(","italic":false,"color":"green"},{"keybind":"key.use"},{"text":")"}]']
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=green] hotbar.6 with lime_dye[custom_data={ui:1b},custom_name='[{"text":"已加入綠隊(","italic":false,"color":"green"},{"keybind":"key.use"},{"text":")"}]',enchantment_glint_override=true]

execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!spectator] hotbar.4 with gray_dye[custom_data={ui:1b},custom_name='[{"text":"加入旁觀(","italic":false,"color":"gray"},{"keybind":"key.use"},{"text":")"}]']
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=spectator] hotbar.4 with gray_dye[custom_data={ui:1b},custom_name='[{"text":"已加入旁觀(","italic":false,"color":"gray"},{"keybind":"key.use"},{"text":")"}]',enchantment_glint_override=true]