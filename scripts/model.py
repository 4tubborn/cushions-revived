
from beet import Context, ItemModel, Model

COLORS = (
    "white", "orange", "magenta", "light_blue",
    "yellow", "lime", "pink", "gray",
    "light_gray", "cyan", "purple", "blue",
    "brown", "green", "red", "black",
)

def beet_default(ctx: Context):

    for color in COLORS:
        name = f"{color}_cushion"

        ctx.assets.models[f"minecraft:item/{name}"] = Model({
            "parent": "minecraft:item/generated",
            "textures": {
                "layer0": f"minecraft:item/{name}"
            }
        })

        ctx.assets.item_models[f"minecraft:{name}"] = ItemModel({
            "model": {
                "type": "minecraft:model",
                "model": f"minecraft:item/{name}"
            }
        })

        ctx.assets.models[f"minecraft:block/{name}"] = Model({
            "parent": "minecraft:block/cushion_base",
            "textures": {
                "0": f"minecraft:entity/cushion/{name}"
            }
        })

        ctx.assets.item_models[f"minecraft:block/{name}"] = ItemModel({
            "model": {
                "type": "minecraft:model",
                "model": f"minecraft:block/{name}"
            }
        })
