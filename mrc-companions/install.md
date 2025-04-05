---
title: Install Instructions
parent: MRC COMPANIONS
layout: page
nav_order: 1
---
# MRC Companions Installation Guide

## Overview
MRC Companions is a resource that adds interactive pets (companions) to your FiveM server, complete with customizable hats and accessories. This guide will walk you through the complete installation process.

## Prerequisites
- A FiveM server running QBCore, QBox, or ESX with the community_bridge resource
  [community_bridge version >= 0.5.0](https://github.com/The-Order-Of-The-Sacred-Framework/community_bridge/tree/dev)
- oxmysql installed and configured
  [oxmysql](https://github.com/overextended/oxmysql/releases/)

## Installation Steps

### Step 1: Install the Resource
1. Download the `mrc-companions` resource
2. Place it in your resources directory
3. Add `ensure mrc-companions` to your server.cfg (after dependencies)

### Step 2: Set Up Image Files
1. Locate the `PUT-INTO-IMAGE-FOLDER` directory inside the `mrc-companions` resource
2. Copy all image files from this folder to your inventory's image folder:
   - **QBCore**: `qb-inventory/html/images/`
   - **OX Inventory**: `ox_inventory/web/images/`

### Step 3: Add Item Definitions

#### For QBCore:
Add the following to your `qb-core/shared/items.lua` file:
```lua
-- Pack items
['companion_pack']       = {['name'] = 'companion_pack',       ['label'] = 'Starter Pack',              ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'companions.png',      ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A starter pack for new players!'},
['hat_pack']             = {['name'] = 'hat_pack',             ['label'] = 'Cosmetic Pack',             ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'cosmeticpack.png',    ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A cosmetic pack for new players!'},
-- Pet companions
['pet_rock']             = {['name'] = 'pet_rock',             ['label'] = 'Pet Rock',                  ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'rock.png',            ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'You love your pet rock!'},
['pet_crowley']          = {['name'] = 'pet_crowley',          ['label'] = 'Pet Crowley',               ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'crowley.png',         ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A mysterious crowley companion!'},
['pet_newb']             = {['name'] = 'pet_newb',             ['label'] = 'Pet Newb',                  ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'newb.png',            ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A newb that follows you around!'},
['pet_rumaier']          = {['name'] = 'pet_rumaier',          ['label'] = 'Pet Rumaier',               ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'rumaier.png',         ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A rumaier that follows you around!'},
['pet_pengu']            = {['name'] = 'pet_pengu',            ['label'] = 'Pet Pengu',                 ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'pengu.png',           ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'Your very own penguin friend!'},
['pet_dirk']             = {['name'] = 'pet_dirk',             ['label'] = 'Pet Dirk',                  ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'dirk.png',            ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A friendly dirk companion!'},
['pet_pickle']           = {['name'] = 'pet_pickle',           ['label'] = 'Pet Pickle',                ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'pickle.png',          ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A pickle that follows you around!'},
['pet_ox']               = {['name'] = 'pet_ox',               ['label'] = 'Pet Ox',                    ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'ox.png',              ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'Why is he so sad?'},
    
-- Common hats
['common_cowboyhat']     = {['name'] = 'common_cowboyhat',     ['label'] = 'Cowboys Hat',               ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'cowboyhat.png',       ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A standard issue cowboys hat'},
['common_captainhat']    = {['name'] = 'common_captainhat',    ['label'] = 'Captains Hat',              ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'captainhat.png',      ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A standard issue captains hat'},     
['common_childhat']      = {['name'] = 'common_childhat',      ['label'] = 'Child Hat',                 ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'childshat.png',       ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A cute hat for your companion!'},
['common_crown']         = {['name'] = 'common_crown',         ['label'] = 'Crown',                     ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'crown.png',           ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A royal crown for your companion!'},
['common_gentlemanhat']  = {['name'] = 'common_gentlemanhat',  ['label'] = 'Gentleman Hat',             ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'gentlemanhat.png',    ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A distinguished hat for your companion!'},
['common_helmet']        = {['name'] = 'common_helmet',        ['label'] = 'Helmet',                    ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'helmet.png',          ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A protective helmet for your companion!'},
['common_irishhat']      = {['name'] = 'common_irishhat',      ['label'] = 'Irish Hat',                 ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'irishhat.png',        ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A lucky Irish hat for your companion!'},
['common_monkhat']       = {['name'] = 'common_monkhat',       ['label'] = 'Monk Hat',                  ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'monkhat.png',         ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A spiritual monk hat for your companion!'},
['common_piratehat']     = {['name'] = 'common_piratehat',     ['label'] = 'Pirate Hat',                ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'piratehat.png',       ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'Arrr! A pirate hat for your companion!'},
['common_popehat']       = {['name'] = 'common_popehat',       ['label'] = 'Pope Hat',                  ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'popehat.png',         ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A holy pope hat for your companion!'},
['common_vikinghelmet']  = {['name'] = 'common_vikinghelmet',  ['label'] = 'Viking Helmet',             ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'vikinghelmet.png',    ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A fierce viking helmet for your companion!'},
['common_winterhat']     = {['name'] = 'common_winterhat',     ['label'] = 'Winter Hat',                ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'winterhat.png',       ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A warm winter hat for your companion!'},
['common_wizzardhat']    = {['name'] = 'common_wizzardhat',    ['label'] = 'Wizard Hat',                ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'wizzardhat.png',      ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A magical wizard hat for your companion!'},
-- Rare hats
['rare_captainhat']      = {['name'] = 'rare_captainhat',      ['label'] = '(Unusual) Captains Hat',    ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'captainhat.png',      ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A rare captains hat!'},
['rare_cowboyhat']       = {['name'] = 'rare_cowboyhat',       ['label'] = '(Unusual) Cowboys Hat',     ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'cowboyhat.png',       ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A rare cowboys hat!'},
['rare_childhat']        = {['name'] = 'rare_childhat',        ['label'] = '(Unusual) Child Hat',       ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'childshat.png',       ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A rare child hat with special effects for your companion!'},
['rare_crown']           = {['name'] = 'rare_crown',           ['label'] = '(Unusual) Crown',           ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'crown.png',           ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A rare crown with special effects for your companion!'},
['rare_gentlemanhat']    = {['name'] = 'rare_gentlemanhat',    ['label'] = '(Unusual) Gentleman Hat',   ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'gentlemanhat.png',    ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A rare gentleman hat with special effects for your companion!'},
['rare_helmet']          = {['name'] = 'rare_helmet',          ['label'] = '(Unusual) Helmet',          ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'helmet.png',          ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A rare helmet with special effects for your companion!'},
['rare_irishhat']        = {['name'] = 'rare_irishhat',        ['label'] = '(Unusual) Irish Hat',       ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'irishhat.png',        ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A rare Irish hat with special effects for your companion!'},
['rare_monkhat']         = {['name'] = 'rare_monkhat',         ['label'] = '(Unusual) Monk Hat',        ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'monkhat.png',         ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A rare monk hat with special effects for your companion!'},
['rare_piratehat']       = {['name'] = 'rare_piratehat',       ['label'] = '(Unusual) Pirate Hat',      ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'piratehat.png',       ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A rare pirate hat with special effects for your companion!'},
['rare_popehat']         = {['name'] = 'rare_popehat',         ['label'] = '(Unusual) Pope Hat',        ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'popehat.png',         ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A rare pope hat with special effects for your companion!'},
['rare_vikinghelmet']    = {['name'] = 'rare_vikinghelmet',    ['label'] = '(Unusual) Viking Helmet',   ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'vikinghelmet.png',    ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A rare viking helmet with special effects for your companion!'},
['rare_winterhat']       = {['name'] = 'rare_winterhat',       ['label'] = '(Unusual) Winter Hat',      ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'winterhat.png',       ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A rare winter hat with special effects for your companion!'},
['rare_wizzardhat']      = {['name'] = 'rare_wizzardhat',      ['label'] = '(Unusual) Wizard Hat',      ['weight'] = 10000,    ['type'] = 'item',    ['image'] = 'wizzardhat.png',      ['unique'] = true,    ['useable'] = true,    ['shouldClose'] = true,    ['combinable'] = false,    ['description'] = 'A rare wizard hat with special effects for your companion!'},
```

#### For OX Inventory:
Add the following to your `ox_inventory/data/items.lua` file:
```lua
    -- Pack items
    ["companion_pack"] = {
        label = "Starter Pack",
        weight = 10000,
        stack = false,
        close = true,
        description = "A starter pack for new players!",
        client = {
            image = "companions.png",
        },
    },
    ["hat_pack"] = {
        label = "Cosmetic Pack",
        weight = 10000,
        stack = false,
        close = true,
        description = "A cosmetic pack for new players!",
        client = {
            image = "cosmeticpack.png",
        },
    },
    -- Pet companions
    ["pet_rock"] = {
        label = "Pet Rock",
        weight = 10000,
        stack = false,
        close = true,
        description = "You love your pet rock!",
        client = {
            image = "rock.png",
        },
    },
    ["pet_crowley"] = {
        label = "Pet Crowley",
        weight = 10000,
        stack = false,
        close = true,
        description = "A mysterious crowley companion!",
        client = {
            image = "crowley.png",
        },
    },
    ["pet_newb"] = {
        label = "Pet Newb",
        weight = 10000,
        stack = false,
        close = true,
        description = "A newb that follows you around!",
        client = {
            image = "newb.png",
        },
    },
    ["pet_rumaier"] = {
        label = "Pet Rumaier",
        weight = 10000,
        stack = false,
        close = true,
        description = "A rumaier that follows you around!",
        client = {
            image = "rumaier.png",
        },
    },
    ["pet_pengu"] = {
        label = "Pet Pengu",
        weight = 10000,
        stack = false,
        close = true,
        description = "Your very own penguin friend!",
        client = {
            image = "pengu.png",
        },
    },
    ["pet_dirk"] = {
        label = "Pet Dirk",
        weight = 10000,
        stack = false,
        close = true,
        description = "A friendly dirk companion!",
        client = {
            image = "dirk.png",
        },
    },
    ["pet_pickle"] = {
        label = "Pet Pickle",
        weight = 10000,
        stack = false,
        close = true,
        description = "A pickle that follows you around!",
        client = {
            image = "pickle.png",
        },
    },
    ["pet_ox"] = {
        label = "Pet Ox",
        weight = 10000,
        stack = false,
        close = true,
        description = "Why is he so sad?",
        client = {
            image = "ox.png",
        },
    },
    -- Common hats
    ["common_cowboyhat"] = {
        label = "Cowboys Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A standard issue cowboys hat",
        client = {
            image = "cowboyhat.png",
        },
    },
    ["common_captainhat"] = {
        label = "Captains Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A standard issue captains hat",
        client = {
            image = "captainhat.png",
        },
    },
    ["common_childhat"] = {
        label = "Child Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A cute hat for your companion!",
        client = {
            image = "childshat.png",
        },
    },
    ["common_crown"] = {
        label = "Crown",
        weight = 10000,
        stack = false,
        close = true,
        description = "A royal crown for your companion!",
        client = {
            image = "crown.png",
        },
    },
    ["common_gentlemanhat"] = {
        label = "Gentleman Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A distinguished hat for your companion!",
        client = {
            image = "gentlemanhat.png",
        },
    },
    ["common_helmet"] = {
        label = "Helmet",
        weight = 10000,
        stack = false,
        close = true,
        description = "A protective helmet for your companion!",
        client = {
            image = "helmet.png",
        },
    },
    ["common_irishhat"] = {
        label = "Irish Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A lucky Irish hat for your companion!",
        client = {
            image = "irishhat.png",
        },
    },
    ["common_monkhat"] = {
        label = "Monk Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A spiritual monk hat for your companion!",
        client = {
            image = "monkhat.png",
        },
    },
    ["common_piratehat"] = {
        label = "Pirate Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "Arrr! A pirate hat for your companion!",
        client = {
            image = "piratehat.png",
        },
    },
    ["common_popehat"] = {
        label = "Pope Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A holy pope hat for your companion!",
        client = {
            image = "popehat.png",
        },
    },
    ["common_vikinghelmet"] = {
        label = "Viking Helmet",
        weight = 10000,
        stack = false,
        close = true,
        description = "A fierce viking helmet for your companion!",
        client = {
            image = "vikinghelmet.png",
        },
    },
    ["common_winterhat"] = {
        label = "Winter Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A warm winter hat for your companion!",
        client = {
            image = "winterhat.png",
        },
    },
    ["common_wizzardhat"] = {
        label = "Wizard Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A magical wizard hat for your companion!",
        client = {
            image = "wizzardhat.png",
        },
    },
    -- Rare hats
    ["rare_captainhat"] = {
        label = "(Unusual) Captains Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A rare captains hat!",
        client = {
            image = "captainhat.png",
        },
    },
    ["rare_cowboyhat"] = {
        label = "(Unusual) Cowboys Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A rare cowboys hat!",
        client = {
            image = "cowboyhat.png",
        },
    },
    ["rare_childhat"] = {
        label = "(Unusual) Child Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A rare child hat with special effects for your companion!",
        client = {
            image = "childshat.png",
        },
    },
    ["rare_crown"] = {
        label = "(Unusual) Crown",
        weight = 10000,
        stack = false,
        close = true,
        description = "A rare crown with special effects for your companion!",
        client = {
            image = "crown.png",
        },
    },
    ["rare_gentlemanhat"] = {
        label = "(Unusual) Gentleman Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A rare gentleman hat with special effects for your companion!",
        client = {
            image = "gentlemanhat.png",
        },
    },
    ["rare_helmet"] = {
        label = "(Unusual) Helmet",
        weight = 10000,
        stack = false,
        close = true,
        description = "A rare helmet with special effects for your companion!",
        client = {
            image = "helmet.png",
        },
    },
    ["rare_irishhat"] = {
        label = "(Unusual) Irish Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A rare Irish hat with special effects for your companion!",
        client = {
            image = "irishhat.png",
        },
    },
    ["rare_monkhat"] = {
        label = "(Unusual) Monk Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A rare monk hat with special effects for your companion!",
        client = {
            image = "monkhat.png",
        },
    },
    ["rare_piratehat"] = {
        label = "(Unusual) Pirate Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A rare pirate hat with special effects for your companion!",
        client = {
            image = "piratehat.png",
        },
    },
    ["rare_popehat"] = {
        label = "(Unusual) Pope Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A rare pope hat with special effects for your companion!",
        client = {
            image = "popehat.png",
        },
    },
    ["rare_vikinghelmet"] = {
        label = "(Unusual) Viking Helmet",
        weight = 10000,
        stack = false,
        close = true,
        description = "A rare viking helmet with special effects for your companion!",
        client = {
            image = "vikinghelmet.png",
        },
    },
    ["rare_winterhat"] = {
        label = "(Unusual) Winter Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A rare winter hat with special effects for your companion!",
        client = {
            image = "winterhat.png",
        },
    },
    ["rare_wizzardhat"] = {
        label = "(Unusual) Wizard Hat",
        weight = 10000,
        stack = false,
        close = true,
        description = "A rare wizard hat with special effects for your companion!",
        client = {
            image = "wizzardhat.png",
        },
    },
```

### Step 4: Set Up Shop Items

#### For QBCore:
Add the companion packs to your shop config. For example, in `qb-shops/config.lua`:
```lua
-- Find an appropriate shop (like a pet store) or create a new one
Config.Products = {
    ["petshop"] = {
        [1] = {
            name = "companion_pack",
            price = 1000, -- Set appropriate price
            amount = 50, -- Stock amount
        },
        [2] = {
            name = "hat_pack",
            price = 500, -- Set appropriate price
            amount = 50, -- Stock amount
        },
    },
}
```

## Usage Instructions
1. **Getting Companions**:
   - Purchase a Companion Pack from the shop
   - Use the pack item to receive a random companion
2. **Equipping Your Companion**:
   - Use the companion item from your inventory to spawn it
   - Your companion will follow you around
3. **Customizing Your Companion**:
   - Purchase or find hat packs
   - Use the hat items on your active companion
   - You can pick up hats from your companion by interacting with them
4. **Storing Your Companion**:
   - Interact with your companion and select "Pick Up" to store it back in your inventory
5. **Using Hats**:
   - Equip hats by using them from your inventory while your companion is active
   - Use another hat to swap or take off hats by interacting with your companion
   - Some hats have special effects (e.g., the rare hats)

## Dependencies
- oxmysql
- community_bridge

## Enabling VIP Access for Companions

If you've enabled `Config.UseVIP = true` in the config, **only VIP players will be able to use the companion system**. To grant players access, you’ll need to use FiveM’s built-in ACE permission system.

First add this to your server.cfg (or a config file that runs on server startup):

```cfg
add_ace group.vip companion.use allow
```

### Option 1: Manually Add Players (server.cfg)

To manually give a player VIP access, add the following lines to your `server.cfg` (or a config file that's executed on server startup):

```cfg
add_principal identifier.fivem:YOUR_FIVEM_ID_HERE group.vip
```

> Replace `YOUR_FIVEM_ID_HERE` with the player's actual FiveM ID (you can use `steam:` or `license:` if preferred).

---

### Option 2: Automatically Add Players Through Tebex

If you're selling VIP access through Tebex, you can automatically add players to the VIP group using Tebex's command system:

1. **Go to your Tebex package > Commands tab**
2. Add the following command:

```plaintext
add_principal identifier.fivem:{{player.id}} group.vip
```

If it's a timed perk or subscription, add this to the **Expiry Commands** to remove access when it ends:

```plaintext
remove_principal identifier.fivem:{{player.id}} group.vip
```

> ✅ Make sure to set `Config.UseVIP = true` in the config file to enforce VIP access!

---

### Need Help? Watch This Video:

If you're new to ACE permissions or want a visual walkthrough, check out this great explainer:  
📺 [FiveM Permissions Tutorial](https://www.youtube.com/watch?v=WsvBbt62-qs)

---
Let me know if you'd like a separate section for testing VIP access in-game or troubleshooting tips!
## Additional Resources
For support or more information, please contact the Mr Crowley.