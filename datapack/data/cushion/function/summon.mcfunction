$execute align xz run summon item_display ~0.5 ~ ~0.5 {"Tags": ["cushion.$(color)","cushion.cushion"],\
"item": {\
    "id": "recovery_compass",\
    "components": {\
        "minecraft:item_name": {\
            "translate": "item.minecraft.$(color)_cushion",\
        },\
        "item_model": "minecraft:block/$(color)_cushion",\
        "custom_data": {"color": "$(color)"}\
    }\
},\
Passengers:[{\
    id:"interaction",\
    height:0.25,width:1.0,Tags:["cushion.interact","cushion.init"],\
}]\
}