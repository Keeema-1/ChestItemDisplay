
execute at @a as @e[type=armor_stand,tag=cf.chest_display,tag=!cf.on_chest.rotated,distance=..8] at @s unless block ^ ^ ^-0.5 #chest_frame:storage run function chest_frame:chest_display/break/0
execute at @a as @e[type=armor_stand,tag=cf.chest_display,tag=cf.on_chest.rotated,distance=..8] at @s unless block ~ ~-0.5 ~ #chest_frame:storage run function chest_frame:chest_display/break/0