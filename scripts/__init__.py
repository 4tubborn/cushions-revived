from beet import Context

COLORS = (
    "white", "orange", "magenta", "light_blue",
    "yellow", "lime", "pink", "gray",
    "light_gray", "cyan", "purple", "blue",
    "brown", "green", "red", "black",
)

from .data import loot_table, recipe                                             
from .data.function import container

from .assets import models

def beet_default(ctx: Context):
    # data
    loot_table.beet_default(ctx)
    recipe.beet_default(ctx)
    container.beet_default(ctx)
    # assets
    models.beet_default(ctx)