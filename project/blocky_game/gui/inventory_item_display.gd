extends TextureRect

const InventoryItem = preload("res://blocky_game/player/inventory_item.gd")
const Blocks = preload("../blocks/blocks.gd")
const ItemDB = preload("../items/item_db.gd")

var _block_types = get_node("/root/Main/Blocks")
var _item_db = get_node("/root/Main/Items")


func set_item(data):
	if data == null:
		texture = null
		
	elif data.type == InventoryItem.TYPE_BLOCK:
		var block : Variant = _block_types.get_block(data.id)
		texture = block.base_info.sprite_texture

	elif data.type == InventoryItem.TYPE_ITEM:
		var item : Variant = _item_db.get_item(data.id)
		texture = item.base_info.sprite
	
	else:
		assert(false)
