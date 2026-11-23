
from beet import Context, LootTable

from scripts import COLORS

def beet_default(ctx: Context):
    for color in COLORS:
        name = f"{color}_cushion"
        display_name = name.replace("_", " ").title()

        item_name = {
            "translate": f"item.minecraft.{name}",
            "fallback": display_name,
        }

        ctx.data.loot_tables[f"cushion:{name}"] = LootTable({
            "pools": [{
                "rolls": 1,
                "entries": [{
                    "type": "item",
                    "name": "bat_spawn_egg",
                    "functions": [{
                        "function": "set_components",
                        "components": {
                            "minecraft:entity_data": {
                                "id": "item_display",
                                "Tags": [
                                    f"cushion.{color}",
                                    "cushion.cushion",
                                    "cushion.init",
                                ],
                                "item": {
                                    "id": "recovery_compass",
                                    "components": {
                                        "minecraft:item_name": item_name,
                                        "item_model": f"minecraft:block/{name}",
                                        "custom_data": {
                                            "color": color,
                                        },
                                    },
                                },
                                "Rotation": [0, 0],
                            },
                            "minecraft:item_name": item_name,
                            "minecraft:item_model": f"minecraft:{name}",
                            "minecraft:max_stack_size": 16,
                            "minecraft:custom_data": {
                                "id": "cushion",
                                "color": color,
                            },
                        },
                    }],
                }],
            }],
        })

    ctx.data.loot_tables["cushion:_dispatch"] = LootTable({
        "pools": [{
            "rolls": 1,
            "entries": [{
                "type": "alternatives",
                "children": [
                    {
                        "type": "loot_table",
                        "value": f"cushion:{color}_cushion",
                        "conditions": [{
                            "condition": "entity_properties",
                            "entity": "this",
                            "predicate": {
                                "slots": {
                                    "contents": {
                                        "predicates": {
                                            "custom_data": {
                                                "color": color,
                                            },
                                        },
                                    },
                                },
                            },
                        }],
                    }
                    for color in COLORS
                ],
            }],
        }],
    })

    ctx.data.loot_tables["cushion:random_cushions"] = LootTable({
        "pools": [{
            "rolls": 1,
            "entries": [
                {
                    "type": "loot_table",
                    "value": f"cushion:{color}_cushion",
                }
                for color in COLORS
            ],
        }],
    })
