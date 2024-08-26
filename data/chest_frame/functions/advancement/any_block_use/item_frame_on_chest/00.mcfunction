tp @s ^ ^ ^ ~ ~
execute if entity @e[type=glow_item_frame,tag=cf.frame_check,limit=1] run tag @s add cf.glowing
execute if entity @e[type=#chest_frame:item_frames,tag=cf.frame_check,nbt={ItemRotation:1b},limit=1] positioned ^ ^ ^-0.5 if block ~ ~ ~ #chest_frame:chests unless block ~ ~ ~ #chest_frame:chests[type=single] run function chest_frame:advancement/any_block_use/item_frame_on_chest/000
execute if entity @e[type=#chest_frame:item_frames,tag=cf.frame_check,nbt={ItemRotation:3b},limit=1] positioned ^ ^ ^-0.5 if block ~ ~ ~ #chest_frame:chests unless block ~ ~ ~ #chest_frame:chests[type=single] run function chest_frame:advancement/any_block_use/item_frame_on_chest/000
execute if entity @e[type=#chest_frame:item_frames,tag=cf.frame_check,nbt={ItemRotation:5b},limit=1] positioned ^ ^ ^-0.5 if block ~ ~ ~ #chest_frame:chests unless block ~ ~ ~ #chest_frame:chests[type=single] run function chest_frame:advancement/any_block_use/item_frame_on_chest/000
execute if entity @e[type=#chest_frame:item_frames,tag=cf.frame_check,nbt={ItemRotation:7b},limit=1] positioned ^ ^ ^-0.5 if block ~ ~ ~ #chest_frame:chests unless block ~ ~ ~ #chest_frame:chests[type=single] run function chest_frame:advancement/any_block_use/item_frame_on_chest/000
execute at @s positioned ^ ^ ^-0.5 positioned ~ ~0.5 ~ if entity @s[distance=..0.1] at @s positioned ^ ^ ^-0.5 run function chest_frame:advancement/any_block_use/item_frame_on_chest/001
execute if entity @e[type=#chest_frame:item_frames,tag=cf.frame_check,nbt={ItemRotation:4b},limit=1] at @s run tp ^ ^ ^-0.1
execute if entity @e[type=#chest_frame:item_frames,tag=cf.frame_check,nbt={ItemRotation:5b},limit=1] at @s run tp ^ ^ ^-0.1
execute if entity @e[type=#chest_frame:item_frames,tag=cf.frame_check,nbt={ItemRotation:6b},limit=1] at @s run tp ^ ^ ^-0.1
execute if entity @e[type=#chest_frame:item_frames,tag=cf.frame_check,nbt={ItemRotation:7b},limit=1] at @s run tp ^ ^ ^-0.1
execute if entity @e[type=#chest_frame:item_frames,tag=cf.frame_check,nbt={ItemRotation:2b},limit=1] at @s if block ~ ~-1 ~ #chest_frame:storage run function chest_frame:advancement/any_block_use/item_frame_on_chest/002
execute if entity @e[type=#chest_frame:item_frames,tag=cf.frame_check,nbt={ItemRotation:3b},limit=1] at @s if block ~ ~-1 ~ #chest_frame:storage run function chest_frame:advancement/any_block_use/item_frame_on_chest/002
execute if entity @e[type=#chest_frame:item_frames,tag=cf.frame_check,nbt={ItemRotation:6b},limit=1] at @s if block ~ ~-1 ~ #chest_frame:storage run function chest_frame:advancement/any_block_use/item_frame_on_chest/002
execute if entity @e[type=#chest_frame:item_frames,tag=cf.frame_check,nbt={ItemRotation:7b},limit=1] at @s if block ~ ~-1 ~ #chest_frame:storage run function chest_frame:advancement/any_block_use/item_frame_on_chest/002
data modify entity @s item set from entity @e[type=#chest_frame:item_frames,tag=cf.frame_check,limit=1] Item
data modify entity @s transformation.scale set value [0.55f,0.55f,0.55f]
data modify entity @s item_display set value "fixed"
execute if entity @s[tag=cf.glowing] run data modify entity @s brightness set value {block:15,sky:0}
tag @s add cf.chest_display