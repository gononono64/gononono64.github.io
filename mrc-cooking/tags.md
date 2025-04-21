---
title: Factory Tags
parent: MRC COOKING
layout: page
nav_order: 3
---

# Easy Guide: What Does the `tags` Section Do?

## What is the `tags` Section?

In `mrc-cooking`, the `tags` section is only used on **factories** (your cooking stations) in `config.lua`. It lets you control how things look and act when someone uses a cooking station. You can use it to set up camera angles, play animations, show props (objects), and add cool effects like steam or fire.

You put the `tags` table inside a factory in your `config.lua`.

---

## What Can You Do With Tags?

Here are the main things you can set up:

### 1. Camera

Change where the player's camera looks when using or crafting at a station.

```lua
['camera'] = {
    onUse = {
        offset = vector3(X, Y, Z),         -- Move the camera to this spot
        rotationOffset = vector3(X, Y, Z), -- Rotate the camera
    },
    onCraft = {
        offset = vector3(X, Y, Z),
        rotationOffset = vector3(X, Y, Z),
    },
}
```

---

### 2. Player Animation

Make the player's character do an animation (like stirring, grilling, etc).

```lua
['player_animation'] = {
    onUse = {
        dict = 'animation_dictionary', -- Animation group name
        animation = 'animation_name',  -- Animation name
        flag = 1,                      -- Usually 1 (how the animation plays)
    },
    onCraft = {
        dict = 'animation_dictionary',
        animation = 'animation_name',
        flag = 1,
    },
}
```

---

### 3. Props

Show objects (like pots, pans, or tools) either on the table or in the player's hand.

```lua
['props'] = {
    onUse = {
        {
            model = 'prop_model_name',      -- What object to show
            offset = vector3(X, Y, Z),     -- Where to put it
            rotationOffset = vector3(X, Y, Z),
        },
    },
    onCraft = {
        {
            model = 'prop_model_name',
            bone = 'IK_R_Hand',            -- Attach to player's hand (optional)
            offset = vector3(X, Y, Z),
            rotationOffset = vector3(X, Y, Z),
        },
    }
}
```
- If you use `bone`, the prop sticks to the player. If not, it sits on the table.

---

### 4. Particles

Add effects like steam, fire, or smoke.

```lua
['particles'] = {
    onCraft = {
        {
            dict = "particle_dictionary",  -- Effect group name
            name = "effect_name",          -- Effect name
            scale = 1.0,                   -- Size of the effect
            color = vector3(R, G, B),      -- Color (optional)
            offset = vector3(X, Y, Z),     -- Where to show it
            rotationOffset = vector3(X, Y, Z),
            looped = true,                 -- Should it repeat?
        },
    },
}
```

---

## How Do I Use It?

- Copy the parts you want (camera, animation, props, particles) into the `tags` section of your factory.
- Change the values to fit your setup (try different numbers to see what looks good).
- You don’t have to use every section—just the ones you want.

---

## Example

```lua
tags = {
    camera = {
        onUse = {
            offset = vector3(-1, -1, 2),
            rotationOffset = vector3(-45, 0, -45),
        },
    },
    player_animation = {
        onCraft = {
            dict = 'amb@prop_human_bbq@male@idle_a',
            animation = 'idle_b',
            flag = 1,
        },
    },
    props = {
        onCraft = {
            {
                model = 'prop_kitch_pot_lrg',
                offset = vector3(0, 0.75, 0),
                rotationOffset = vector3(0, 0, -30),
            },
        },
    },
    particles = {
        onCraft = {
            {
                dict = "core",
                name = "ent_amb_torch_fire",
                scale = 0.5,
                offset = vector3(0, 0.75, -0.15),
                rotationOffset = vector3(0, 0, 0),
                looped = true,
            },
        },
    },
}
```

---

**Tip:** Play around with the numbers and see what happens in-game. You can make your cooking stations look and feel unique!