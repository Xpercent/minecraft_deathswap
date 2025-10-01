#inventory
#  0  1  2  3  4  5  6  7  8
#  9 10 11 12 13 14 15 16 17
# 18 19 20 21 22 23 24 25 26
#hotbar
#  0  1  2  3  4  5  6  7  8  


#en_us

#admin-------------------
#difficulty
execute if score difficulty deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.0 with player_head[custom_data={ui:1b},custom_name='{"text":"§aDifficulty: Peaceful","italic":false}',lore=['"§7Game difficulty"'],profile={name:"cow"}]
execute if score difficulty deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.0 with zombie_head[custom_data={ui:1b},custom_name='{"text":"§2Difficulty: Easy","italic":false}',lore=['"§7Game difficulty"']]
execute if score difficulty deathswap.setting matches 2 run item replace entity @a[tag=admin,gamemode=!creative] inventory.0 with piglin_head[custom_data={ui:1b},custom_name='{"text":"§6Difficulty: Normal","italic":false}',lore=['"§7Game difficulty"']]
execute if score difficulty deathswap.setting matches 3 run item replace entity @a[tag=admin,gamemode=!creative] inventory.0 with wither_skeleton_skull[custom_data={ui:1b},custom_name='{"text":"§cDifficulty: Hard","italic":false}',lore=['"§7Game difficulty"']]

#time
execute if score time_set deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.9 with clock[custom_data={ui:1b},custom_name='{"text":"§bTime: Day","italic":false}',lore=['"§7Game time"']]
execute if score time_set deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.9 with clock[custom_data={ui:1b},custom_name='{"text":"§6Time: Noon","italic":false}',lore=['"§7Game time"']]
execute if score time_set deathswap.setting matches 2 run item replace entity @a[tag=admin,gamemode=!creative] inventory.9 with clock[custom_data={ui:1b},custom_name='{"text":"§7Time: Night","italic":false}',lore=['"§7Game time"']]
execute if score time_set deathswap.setting matches 3 run item replace entity @a[tag=admin,gamemode=!creative] inventory.9 with clock[custom_data={ui:1b},custom_name='{"text":"§8Time: Midnight","italic":false}',lore=['"§7Game time"']]

#weather
execute if score weather deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.18 with sunflower[custom_data={ui:1b},custom_name='{"text":"§bWeather: Clear","italic":false}',lore=['"§7Game weather"']]
execute if score weather deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.18 with water_bucket[custom_data={ui:1b},custom_name='{"text":"§3Weather: Rain","italic":false}',lore=['"§7Game weather"']]
execute if score weather deathswap.setting matches 2 run item replace entity @a[tag=admin,gamemode=!creative] inventory.18 with lightning_rod[custom_data={ui:1b},custom_name='{"text":"§9Weather: Thunder","italic":false}',lore=['"§7Game weather"']]

#mobspawn
execute if score mobspawn deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.1 with bat_spawn_egg[custom_data={ui:1b},custom_name='{"text":"§aMonster spawn: Enabled","italic":false}',lore=['"§7Whether to generate monsters, does not affect monster spawners"'],enchantment_glint_override=true]
execute if score mobspawn deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.1 with bat_spawn_egg[custom_data={ui:1b},custom_name='{"text":"§cMonster spawn: Disable","italic":false}',lore=['"§7Whether to generate monsters, does not affect monster spawners"']]

#time_cycle
execute if score time_cycle deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.10 with daylight_detector[custom_data={ui:1b},custom_name='{"text":"§aDay/Night Cycle: Enabled","italic":false}',lore=['"§7Whether the daylight cycle and moon phases progress"'],enchantment_glint_override=true]
execute if score time_cycle deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.10 with daylight_detector[custom_data={ui:1b},custom_name='{"text":"§cDay/Night Cycle: Disable","italic":false}',lore=['"§7Whether the daylight cycle and moon phases progress"']]

#wather_cycle
execute if score weather_cycle deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.19 with heart_of_the_sea[custom_data={ui:1b},custom_name='{"text":"§aWeather Cycle: Enabled","italic":false}',lore=['"§7Whether the weather can change naturally"'],enchantment_glint_override=true]
execute if score weather_cycle deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.19 with heart_of_the_sea[custom_data={ui:1b},custom_name='{"text":"§cWeather Cycle: Disable","italic":false}',lore=['"§7Whether the weather can change naturally"']]

#hp_natural
execute if score hp_natural deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.2 with apple[custom_data={ui:1b},custom_name='{"text":"§aNatural regeneration: Enabled","italic":false}',lore=['"§7Whether the player can regenerate health naturally if their hunger is full enough"'],enchantment_glint_override=true]
execute if score hp_natural deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.2 with apple[custom_data={ui:1b},custom_name='{"text":"§cNatural regeneration: Disable","italic":false}',lore=['"§7Whether the player can regenerate health naturally if their hunger is full enough"']]

#HP adj
execute if score hp_adj deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.3 with redstone[custom_data={ui:1b},custom_name='{"text":"§aHP: 1 point","italic":false}',lore=['"§7Adjust the player hp, 1 heart is equal to 2 points"','"§720 points is the default value for Minecraft"'],enchantment_glint_override=true] 1
execute if score hp_adj deathswap.setting matches 10 run item replace entity @a[tag=admin,gamemode=!creative] inventory.3 with redstone[custom_data={ui:1b},custom_name='{"text":"§aHP: 10 points","italic":false}',lore=['"§7Adjust the player hp, 1 heart is equal to 2 points"','"§720 points is the default value for Minecraft"'],enchantment_glint_override=true] 10
execute if score hp_adj deathswap.setting matches 20 run item replace entity @a[tag=admin,gamemode=!creative] inventory.3 with redstone[custom_data={ui:1b},custom_name='{"text":"§cHP: 20 points","italic":false}',lore=['"§7Adjust the player hp, 1 heart is equal to 2 points"','"§720 points is the default value for Minecraft"']] 20
execute if score hp_adj deathswap.setting matches 30 run item replace entity @a[tag=admin,gamemode=!creative] inventory.3 with redstone[custom_data={ui:1b},custom_name='{"text":"§aHP: 30 points","italic":false}',lore=['"§7Adjust the player hp, 1 heart is equal to 2 points"','"§720 points is the default value for Minecraft"'],enchantment_glint_override=true] 30
execute if score hp_adj deathswap.setting matches 40 run item replace entity @a[tag=admin,gamemode=!creative] inventory.3 with redstone[custom_data={ui:1b},custom_name='{"text":"§aHP: 30 points","italic":false}',lore=['"§7Adjust the player hp, 1 heart is equal to 2 points"','"§720 points is the default value for Minecraft"'],enchantment_glint_override=true] 40

#tool
execute if score tool deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.11 with stick[custom_data={ui:1b},custom_name='{"text":"§cStart tool: Disable","italic":false}',lore=['"§7Whether to give the player starting tools and food after the game starts"']]
execute if score tool deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.11 with wooden_axe[custom_data={ui:1b},custom_name='{"text":"§aStart tool: Wooden tools + 4 breads","italic":false}',lore=['"§7Whether to give the player starting tools and food after the game starts"'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 2 run item replace entity @a[tag=admin,gamemode=!creative] inventory.11 with stone_axe[custom_data={ui:1b},custom_name='{"text":"§aStart tool: Stone tools + 8 breads","italic":false}',lore=['"§7Whether to give the player starting tools and food after the game starts"'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 3 run item replace entity @a[tag=admin,gamemode=!creative] inventory.11 with iron_axe[custom_data={ui:1b},custom_name='{"text":"§aStart tool: Iron tools + 16 breads","italic":false}',lore=['"§7Whether to give the player starting tools and food after the game starts"'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 4 run item replace entity @a[tag=admin,gamemode=!creative] inventory.11 with diamond_axe[custom_data={ui:1b},custom_name='{"text":"§aStart tool: Diamond tools + 32 breads","italic":false}',lore=['"§7Whether to give the player starting tools and food after the game starts"'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 5 run item replace entity @a[tag=admin,gamemode=!creative] inventory.11 with netherite_axe[custom_data={ui:1b},custom_name='{"text":"§aStart tool: Netherite tools + 64 breads","italic":false}',lore=['"§7Whether to give the player starting tools and food after the game starts"'],enchantment_glint_override=true]

#armor
execute if score armor deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.12 with blaze_rod[custom_data={ui:1b},custom_name='{"text":"§cStart tool: 關閉","italic":false}',lore=['"§7Whether to give the player starting armor after the game starts"']]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.12 with leather_chestplate[custom_data={ui:1b},custom_name='{"text":"§aStart tool: Leather armor","italic":false}',lore=['"§7Whether to give the player starting armor after the game starts"'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=admin,gamemode=!creative] inventory.12 with chainmail_chestplate[custom_data={ui:1b},custom_name='{"text":"§aStart tool: Chainmail armor","italic":false}',lore=['"§7Whether to give the player starting armor after the game starts"'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=admin,gamemode=!creative] inventory.12 with iron_chestplate[custom_data={ui:1b},custom_name='{"text":"§aStart tool: Iron armor","italic":false}',lore=['"§7Whether to give the player starting armor after the game starts"'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=admin,gamemode=!creative] inventory.12 with diamond_chestplate[custom_data={ui:1b},custom_name='{"text":"§aStart tool: Diamond armor","italic":false}',lore=['"§7Whether to give the player starting armor after the game starts"'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=admin,gamemode=!creative] inventory.12 with netherite_chestplate[custom_data={ui:1b},custom_name='{"text":"§aStart tool: Netherite armor","italic":false}',lore=['"§7Whether to give the player starting armor after the game starts"'],enchantment_glint_override=true]

#saturation
execute if score saturation deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.20 with honey_bottle[custom_data={ui:1b},custom_name='{"text":"§cSaturation effect: Disable","italic":false}',lore=['"§7Whether to give players saturation effect"']]
execute if score saturation deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.20 with honey_bottle[custom_data={ui:1b},custom_name='{"text":"§aSaturation effect: Enabled","italic":false}',lore=['"§7Whether to give players saturation effect"'],enchantment_glint_override=true]

#night_vision
execute if score night_vision deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.21 with potion[custom_data={ui:1b},custom_name='{"text":"§cNight vision effect: Disable","italic":false}',lore=['"§7Whether to give players night vision effect"'],potion_contents={potion:long_night_vision}]
execute if score night_vision deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.21 with potion[custom_data={ui:1b},custom_name='{"text":"§aNight vision effect: Enabled","italic":false}',lore=['"§7Whether to give players night vision effect"'],potion_contents={potion:long_night_vision},enchantment_glint_override=true]

#warn
execute if score warn deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.4 with note_block[custom_data={ui:1b},custom_name='{"text":"§cSwap warn: Disable","italic":false}',lore=['"§7Whether to warn before swap"']] 1
execute if score warn deathswap.setting matches 5 run item replace entity @a[tag=admin,gamemode=!creative] inventory.4 with note_block[custom_data={ui:1b},custom_name='{"text":"§aSwap warn: 5s","italic":false}',lore=['"§7Whether to warn before swap"'],enchantment_glint_override=true] 5
execute if score warn deathswap.setting matches 10 run item replace entity @a[tag=admin,gamemode=!creative] inventory.4 with note_block[custom_data={ui:1b},custom_name='{"text":"§aSwap warn: 10s","italic":false}',lore=['"§7Whether to warn before swap"'],enchantment_glint_override=true] 10

#invincible
execute if score invincible deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.5 with ender_pearl[custom_data={ui:1b},custom_name='{"text":"§cSwap warn: Disable","italic":false}',lore=['"§7Whether to give resistance when swap"']] 1
execute if score invincible deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.5 with ender_eye[custom_data={ui:1b},custom_name='{"text":"§aSwap warn: 1s","italic":false}',lore=['"§7Whether to give resistance when swap"'],enchantment_glint_override=true] 1
execute if score invincible deathswap.setting matches 3 run item replace entity @a[tag=admin,gamemode=!creative] inventory.5 with ender_eye[custom_data={ui:1b},custom_name='{"text":"§aSwap warn: 3s","italic":false}',lore=['"§7Whether to give resistance when swap"'],enchantment_glint_override=true] 3

#team collisionRule
execute if score team_collisionrule deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.13 with lead[custom_data={ui:1b},custom_name='{"text":"§aSame team collision: Enabled","italic":false}',lore=['"§7Whether the same team pushes each other"'],enchantment_glint_override=true]
execute if score team_collisionrule deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.13 with lead[custom_data={ui:1b},custom_name='{"text":"§cSame team collision: Disable","italic":false}',lore=['"§7Whether the same team pushes each other"']]

#team friendlyFire
execute if score team_friendlyfire deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.14 with pufferfish[custom_data={ui:1b},custom_name='{"text":"§aSame team friendly firefight: Enabled","italic":false}',lore=['"§7Whether the same team hurts each other"'],enchantment_glint_override=true]
execute if score team_friendlyfire deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.14 with pufferfish[custom_data={ui:1b},custom_name='{"text":"§cSame team friendly firefight: Disable","italic":false}',lore=['"§7Whether the same team hurts each other"']]

#furnace
execute if score furnace deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.22 with raw_iron[custom_data={ui:1b},custom_name='{"text":"§cItem cooked: Disable","italic":false}',lore=['"§7Whether minerals and food can be obtained cooked without burning them"']]
execute if score furnace deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.22 with iron_ingot[custom_data={ui:1b},custom_name='{"text":"§aItem cooked: Enabled","italic":false}',lore=['"§7Whether minerals and food can be obtained cooked without burning them"'],enchantment_glint_override=true]

#lobbymode
execute if score lobbymode deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.23 with lectern[custom_data={ui:1b},custom_name='{"text":"§cGame start point: Random","italic":false}',lore=['"§7The birthplace at the beginning of the game"','"§7According to the dimension of the lobby"']]
execute if score lobbymode deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.23 with lectern[custom_data={ui:1b},custom_name='{"text":"§aGame start point: Lobby","italic":false}',lore=['"§7The birthplace at the beginning of the game"','"§7According to the dimension of the lobby"'],enchantment_glint_override=true]

#random_team
item replace entity @a[tag=admin,gamemode=!creative] inventory.6 with magenta_glazed_terracotta[custom_data={ui:1b},custom_name='{"text":"§eRandomly divided into two teams","italic":false}',lore=['"§7Randomly divide non-spectator players into two teams"']] 2
item replace entity @a[tag=admin,gamemode=!creative] inventory.7 with magenta_glazed_terracotta[custom_data={ui:1b},custom_name='{"text":"§eRandomly divided into three teams","italic":false}',lore=['"§7Randomly divide non-spectator players into three teams"']] 3
item replace entity @a[tag=admin,gamemode=!creative] inventory.8 with magenta_glazed_terracotta[custom_data={ui:1b},custom_name='{"text":"§eRandomly divided into four teams","italic":false}',lore=['"§7Randomly divide non-spectator players into four teams"']] 4

# #gmchange
# execute if score gmchange deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§cGame mode scheduled chnages: Disabled","italic":false}',lore=['"§7Switch game modes regularly at set times"']]
# execute if score gmchange deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§aGame mode scheduled chnages: Enabled","italic":false}',lore=['"§7Switch game modes regularly at set times"']]
#swap_time
execute if score swap_time_setting deathswap.setting matches 300 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§bSwap Time: 300s","italic":false}',lore=['"§7Time interval for player position swaps"']]
execute if score swap_time_setting deathswap.setting matches 330 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§bSwap Time: 330s","italic":false}',lore=['"§7Time interval for player position swaps"']]
execute if score swap_time_setting deathswap.setting matches 360 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§bSwap Time: 360s","italic":false}',lore=['"§7Time interval for player position swaps"']]
execute if score swap_time_setting deathswap.setting matches 390 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§bSwap Time: 390s","italic":false}',lore=['"§7Time interval for player position swaps"']]
execute if score swap_time_setting deathswap.setting matches 420 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§bSwap Time: 420s","italic":false}',lore=['"§7Time interval for player position swaps"']]
execute if score swap_time_setting deathswap.setting matches 450 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§bSwap Time: 450s","italic":false}',lore=['"§7Time interval for player position swaps"']]
execute if score swap_time_setting deathswap.setting matches 480 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§bSwap Time: 480s","italic":false}',lore=['"§7Time interval for player position swaps"']]
execute if score swap_time_setting deathswap.setting matches 510 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§bSwap Time: 510s","italic":false}',lore=['"§7Time interval for player position swaps"']]
execute if score swap_time_setting deathswap.setting matches 540 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§bSwap Time: 540s","italic":false}',lore=['"§7Time interval for player position swaps"']]
execute if score swap_time_setting deathswap.setting matches 570 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§bSwap Time: 570s","italic":false}',lore=['"§7Time interval for player position swaps"']]
execute if score swap_time_setting deathswap.setting matches 600 run item replace entity @a[tag=admin,gamemode=!creative] inventory.15 with grass_block[custom_data={ui:1b},custom_name='{"text":"§bSwap Time: 600s","italic":false}',lore=['"§7Time interval for player position swaps"']]


#language
item replace entity @a[tag=admin,gamemode=!creative] inventory.16 with player_head[custom_data={ui:1b},custom_name='{"translate":"options.language","color": "yellow","italic":false}',lore=['{"translate":"narrator.button.language","color":"gray","italic":false}'],profile={name:"",id:[I;-1121419518,2067529689,-982738485,263170875], properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThkYWExZTNlZDk0ZmYzZTMzZTFkNGM2ZTQzZjAyNGM0N2Q3OGE1N2JhNGQzOGU3NWU3YzkyNjQxMDYifX19"}]}]

#choose_team
execute if score team_choose deathswap.setting matches 0 run item replace entity @a[tag=admin,gamemode=!creative] inventory.17 with snowball[custom_data={ui:1b},custom_name='{"text":"§cTeam selection permission: Disable","italic":false}',lore=['"§7Enabled this will allow players to choose their own teams"']]
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=admin,gamemode=!creative] inventory.17 with snowball[custom_data={ui:1b},custom_name='{"text":"§aTeam selection permission: Enabled","italic":false}',lore=['"§7Enabled this will allow players to choose their own teams"'],enchantment_glint_override=true]

#reset setting
item replace entity @a[tag=admin,gamemode=!creative] inventory.24 with nautilus_shell[custom_data={ui:1b},custom_name='{"text":"§eReset setting","italic":false}',lore=['"§7Click here to reset setting"']]

#reset win scores
item replace entity @a[tag=admin,gamemode=!creative] inventory.25 with nether_star[custom_data={ui:1b},custom_name='{"text":"§eReset wins score","italic":false}',lore=['"§7Clear wins score for all players"','"§7Press TAB to display wins"']]

#reset_team
item replace entity @a[tag=admin,gamemode=!creative] inventory.26 with redstone_torch[custom_data={ui:1b},custom_name='{"text":"§eReset the team","italic":false}',lore=['"§7Remove all players from the team"']]

#hotbar-lobby
item replace entity @a[tag=admin,gamemode=!creative] hotbar.7 with armor_stand[custom_data={ui:1b},custom_name='[{"text":"Set Game lobby (","italic":false,"color":"yellow"},{"keybind":"key.use"},{"text":")"}]',entity_data={id:"armor_stand",Tags:["setlobby"],"Invisible":true}]

#hotbar-tp
item replace entity @a[tag=admin,gamemode=!creative] hotbar.1 with slime_ball[custom_data={ui:1b},custom_name='[{"text":"Teleport all players to here (","italic":false,"color":"yellow"},{"keybind":"key.use"},{"text":")"}]']

#survival-creative
item replace entity @a[tag=admin,gamemode=!creative] hotbar.0 with feather[custom_data={ui:1b},custom_name='[{"text":"Switch to creative mode (","italic":false,"color":"yellow"},{"keybind":"key.use"},{"text":")"}]']
item replace entity @a[tag=admin,gamemode=creative] hotbar.0 with carrot_on_a_stick[custom_data={ui:1b},custom_name='[{"text":"Switch to setting menu (","italic":false,"color":"yellow"},{"keybind":"key.use"},{"text":")"}]']

#start
item replace entity @a[tag=admin,gamemode=!creative] hotbar.8 with emerald[custom_data={ui:1b},custom_name='[{"text":"Start game! (","italic":false,"color":"green"},{"keybind":"key.use"},{"text":")"}]']

#left head admin
item replace entity @a[tag=admin,gamemode=!creative] weapon.offhand with warped_fungus_on_a_stick[custom_data={ui:1b},custom_name='[{"text":"","italic":false}]']

#notadmin-------------------
item replace entity @a[tag=notadmin] inventory.13 with command_block[custom_data={ui:1b},custom_name='{"text":"Tip","italic":false}',lore=['"§eIf you are op player"','"§eplease enter /tag @s add admin"','"§eto gain admin rights"']]

#left head notadmin
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=notadmin] weapon.offhand with warped_fungus_on_a_stick[custom_data={ui:1b},custom_name='{"text":"","italic":false}']

#team-------------------
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!red] hotbar.2 with red_dye[custom_data={ui:1b},custom_name='[{"text":"Join the red team (","italic":false,"color":"red"},{"keybind":"key.use"},{"text":")"}]']
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=red] hotbar.2 with red_dye[custom_data={ui:1b},custom_name='[{"text":"Joined the red team (","italic":false,"color":"red"},{"keybind":"key.use"},{"text":")"}]',enchantment_glint_override=true]

execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!blue] hotbar.3 with blue_dye[custom_data={ui:1b},custom_name='[{"text":"Join the blue team (","italic":false,"color":"blue"},{"keybind":"key.use"},{"text":")"}]']
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=blue] hotbar.3 with blue_dye[custom_data={ui:1b},custom_name='[{"text":"Joined the blue team (","italic":false,"color":"blue"},{"keybind":"key.use"},{"text":")"}]',enchantment_glint_override=true]

execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!yellow] hotbar.5 with yellow_dye[custom_data={ui:1b},custom_name='[{"text":"Join the yellow team (","italic":false,"color":"yellow"},{"keybind":"key.use"},{"text":")"}]']
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=yellow] hotbar.5 with yellow_dye[custom_data={ui:1b},custom_name='[{"text":"Joined the yellow team (","italic":false,"color":"yellow"},{"keybind":"key.use"},{"text":")"}]',enchantment_glint_override=true]

execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!green] hotbar.6 with lime_dye[custom_data={ui:1b},custom_name='[{"text":"Join the green team (","italic":false,"color":"green"},{"keybind":"key.use"},{"text":")"}]']
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=green] hotbar.6 with lime_dye[custom_data={ui:1b},custom_name='[{"text":"Joined the green team (","italic":false,"color":"green"},{"keybind":"key.use"},{"text":")"}]',enchantment_glint_override=true]

execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!spectator] hotbar.4 with gray_dye[custom_data={ui:1b},custom_name='[{"text":"Join the spectator (","italic":false,"color":"gray"},{"keybind":"key.use"},{"text":")"}]']
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=spectator] hotbar.4 with gray_dye[custom_data={ui:1b},custom_name='[{"text":"Joined the spectator (","italic":false,"color":"gray"},{"keybind":"key.use"},{"text":")"}]',enchantment_glint_override=true]