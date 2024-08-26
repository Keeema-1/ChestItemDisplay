execute positioned ^ ^ ^3 as @e[type=#chest_frame:item_frames,distance=..4] at @s if block ^ ^ ^-0.5 #chest_frame:storage if data entity @s Item run function chest_frame:advancement/any_block_use/item_frame_on_chest/0
advancement revoke @s only chest_frame:any_block_use/any
