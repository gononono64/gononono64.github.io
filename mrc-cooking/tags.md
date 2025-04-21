---
title: Recipe/Factory Tags (Advanced)
parent: MRC COOKING
layout: page
nav_order: 3 # Adjust nav_order as needed
---

# Using Advanced Tags in `config.lua` (Recipes/Factories)

## Overview

Within `mrc-cooking`, particularly in the `Config.Recipes` section (and potentially in customized `Config.Factories`), a `tags` field can be used for much more than simple categorization. This advanced `tags` structure allows you to define detailed visual and interactive elements like camera angles, player animations, spawned props, and particle effects associated with specific recipes or crafting stations.

**Note:** This differs significantly from using tags purely as simple string labels for basic categorization.

## Structure of the Advanced `tags` Table

When used for detailed configuration, the `tags` field is a Lua table containing specific keys, each holding further configuration tables:

```lua
-- Example structure within a Recipe or Factory definition
tags = {
    ['camera'] = { ... camera settings ... },
    ['player_animation'] = { ... animation settings ... },
    ['props'] = { ... prop settings ... },
    ['particles'] = { ... particle settings ... },
}
```

## Breakdown of Tag Sections

### 1. `camera`

Controls the player's camera during interaction.

```lua
['camera'] = {
    onUse = { -- Camera when initially interacting/using the station/item
        offset = vector3(X, Y, Z), -- Positional offset from a base point
        rotationOffset = vector3(Pitch, Roll, Yaw), -- Rotational offset
    },
    onCraft = { -- Camera during the crafting process (if applicable)
        offset = vector3(X, Y, Z),
        rotationOffset = vector3(Pitch, Roll, Yaw),
    },
    -- You might see other states depending on the script's features
}
```

### 2. `player_animation`

Defines animations played by the player character.

```lua
['player_animation'] = {
    onUse = { -- Animation when initially interacting
        dict = 'animation_dictionary_name', -- e.g., 'amb@prop_human_bbq@male@idle_a'
        animation = 'animation_name', -- e.g., 'idle_b'
        flag = animation_flag, -- Controls animation behavior (e.g., 1 for looping base, 49 for looping upper body)
    },
    onCraft = { -- Animation during the crafting process
        dict = 'animation_dictionary_name',
        animation = 'animation_name',
        flag = animation_flag,
    },
    -- Other states like onComplete, onCancel might exist
}
```

### 3. `props`

Specifies props (objects) to be spawned in the world or attached to the player.

```lua
['props'] = {
    onUse = { -- Props spawned when interaction starts
        { -- List of props for this state
            model = 'prop_model_name', -- e.g., 'prop_kitch_pot_lrg'
            offset = vector3(X, Y, Z), -- Offset relative to station/player
            rotationOffset = vector3(Pitch, Roll, Yaw),
        },
        -- ... more props for onUse ...
    },
    onCraft = { -- Props spawned during crafting
        {
            model = 'prop_model_name', -- e.g., 'prop_fish_slice_01'
            bone = 'IK_R_Hand', -- Optional: Attach to player bone (e.g., 'IK_L_Hand', 'IK_R_Hand')
            offset = vector3(X, Y, Z), -- Offset relative to bone if specified, otherwise world/station
            rotationOffset = vector3(Pitch, Roll, Yaw),
        },
        -- ... more props for onCraft ...
    }
}
```
*   Props without a `bone` are typically placed relative to the factory/station coordinates.
*   Props *with* a `bone` are attached to the player and move with them. They are usually removed automatically when the interaction ends.

### 4. `particles`

Defines particle effects to be played.

```lua
['particles'] = {
    onCraft = { -- Particles played during crafting
        { -- List of particles for this state
            dict = "particle_dictionary", -- e.g., "core", "cut_solomon1"
            name = "particle_effect_name", -- e.g., "ent_amb_torch_fire", "cs_sol2_coffee_steam"
            scale = 1.0, -- Size of the effect
            color = vector3(R, G, B), -- Optional: Tint color (0-255)
            offset = vector3(X, Y, Z), -- Position relative to station/player
            rotationOffset = vector3(Pitch, Roll, Yaw),
            looped = true, -- or false: Whether the effect repeats
        },
        -- ... more particles for onCraft ...
    },
    -- onUse, onComplete etc. might also be used here
}
```

## Usage

By carefully configuring these sub-tables within the `tags` field of a recipe or factory, you can create immersive and visually distinct crafting experiences. You need to find the correct model names, animation dictionaries/names, particle dictionaries/names, and experiment with offset/rotation values to achieve the desired effect.