---
title: Install Instructions
parent: MRC COOKING
layout: page
nav_order: 1
---

# MRC Cooking Installation Guide

## Overview
This guide provides instructions for installing the `mrc-cooking` resource on your FiveM server.

## Prerequisites
- A FiveM server
- [community_bridge](https://github.com/The-Order-Of-The-Sacred-Framework/community_bridge) installed and ensured **before** `mrc-cooking`.
- A compatible framework (e.g., QBCore, ESX).
- A compatible inventory system (e.g., qb-inventory, ox_inventory).
- A compatible target system (e.g., qb-target, ox_target).
- oxmysql installed and configured.

## Installation Steps

### Step 1: Install the Resource
1.  Download the `mrc-cooking` resource.
2.  Place the `mrc-cooking` folder into your server's `resources` directory.
3.  Add `ensure mrc-cooking` to your `server.cfg` file, ensuring it is placed **after** `ensure community_bridge`.

    ```cfg
    # Example server.cfg
    ensure community_bridge
    ensure mrc-cooking
    ```

### Step 2: Set Up Image Files
1.  Inside the `mrc-cooking` resource folder, locate the `images` directory. This folder contains all the `.png` default image files for the items in the cooking system.
2.  Copy all the `.png` image files from that directory into your inventory system's image folder. Common locations include:
    *   **QBCore (qb-inventory):** `resources/qb-inventory/html/images/`
    *   **OX Inventory:** `resources/ox_inventory/web/images/`
    *   **PS-Inventory:** Check its documentation for the correct image path.
    *   *Other Inventories:* Consult your specific inventory resource's documentation.

### Step 3: Add Item Definitions
1.  This file contains item definitions formatted for different inventory systems.
2.  **Identify your inventory system:**
    *   **For QBCore:** Copy the entire Lua table under the section labeled `QB-INVENTORY`.
    *   **For OX Inventory:** Copy the entire Lua table under the section labeled `OX INVENTORY`.
3.  **Paste the copied items into your inventory's item definition file:**
    *   **QBCore:** `qb-core/shared/items.lua` (Paste inside the main `QBCore.Shared.Items = { ... }` table).
    *   **OX Inventory:** `ox_inventory/data/items.lua` (Paste inside the main `Items = { ... }` table).
    *   **ESX (using ox_inventory):** Follow the OX Inventory instructions above.
    *   *Other Inventories:* Consult your specific inventory resource's documentation for adding items.

    ** QB-INVENTORY (Paste in QBCore `items.lua`):**
    ````lua
    ['flour']                           = {['name'] = 'flour',                             ['label'] = 'Flour',                     ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'flour.png',             ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['water']                           = {['name'] = 'water',                             ['label'] = 'Water',                     ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'water.png',             ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['milk']                            = {['name'] = 'milk',                              ['label'] = 'Milk',                      ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'milk.png',              ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['butter']                          = {['name'] = 'butter',                            ['label'] = 'Butter',                    ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'butter.png',            ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['olive_oil']                       = {['name'] = 'olive_oil',                         ['label'] = 'Olive Oil',                 ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'olive_oil.png',         ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['salt']                            = {['name'] = 'salt',                              ['label'] = 'Salt',                      ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'salt.png',              ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['sugar']                           = {['name'] = 'sugar',                             ['label'] = 'Sugar',                     ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'sugar.png',             ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['honey']                           = {['name'] = 'honey',                             ['label'] = 'Honey',                     ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'honey.png',             ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['beef']                            = {['name'] = 'beef',                              ['label'] = 'Beef',                      ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'beef.png',              ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['lettuce']                         = {['name'] = 'lettuce',                           ['label'] = 'Lettuce',                   ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'lettuce.png',           ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['tomato']                          = {['name'] = 'tomato',                            ['label'] = 'Tomato',                    ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'tomato.png',            ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['cheese']                          = {['name'] = 'cheese',                            ['label'] = 'Cheese',                    ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'cheese.png',            ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['mozzarella']                      = {['name'] = 'mozzarella',                        ['label'] = 'Mozzarella',                ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'mozzarella.png',        ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['bacon']                           = {['name'] = 'bacon',                             ['label'] = 'Bacon',                     ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'bacon.png',             ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['tomato_sauce']                    = {['name'] = 'tomato_sauce',                      ['label'] = 'Tomato Sauce',              ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'tomato_sauce.png',      ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['oil']                             = {['name'] = 'oil',                               ['label'] = 'Oil',                       ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'oil.png',               ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['chicken']                         = {['name'] = 'chicken',                           ['label'] = 'Chicken',                   ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'chicken.png',           ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['potato']                          = {['name'] = 'potato',                            ['label'] = 'Potato',                    ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'potato.png',            ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['chocolate']                       = {['name'] = 'chocolate',                         ['label'] = 'Chocolate',                 ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'chocolate.png',         ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['egg']                             = {['name'] = 'egg',                               ['label'] = 'Egg',                       ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'egg.png',               ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['strawberry']                      = {['name'] = 'strawberry',                        ['label'] = 'Strawberry',                ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'strawberry.png',        ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['blueberry']                       = {['name'] = 'blueberry',                         ['label'] = 'Blueberry',                 ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'blueberry.png',         ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['cream']                           = {['name'] = 'cream',                             ['label'] = 'Cream',                     ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'cream.png',             ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['ice']                             = {['name'] = 'ice',                               ['label'] = 'Ice',                       ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'ice.png',               ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['apple']                           = {['name'] = 'apple',                             ['label'] = 'Apple',                     ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'apple.png',             ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['cinnamon']                        = {['name'] = 'cinnamon',                          ['label'] = 'Cinnamon',                  ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'cinnamon.png',          ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['lemon']                           = {['name'] = 'lemon',                             ['label'] = 'Lemon',                     ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'lemon.png',             ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['lime']                            = {['name'] = 'lime',                              ['label'] = 'Lime',                      ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'lime.png',              ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['banana']                          = {['name'] = 'banana',                            ['label'] = 'Banana',                    ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'banana.png',            ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['coffee_bean']                     = {['name'] = 'coffee_bean',                       ['label'] = 'Coffee Bean',               ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'coffee_bean.png',       ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['garlic']                          = {['name'] = 'garlic',                            ['label'] = 'Garlic',                    ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'garlic.png',            ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['parmesan']                        = {['name'] = 'parmesan',                          ['label'] = 'Parmesan',                  ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'parmesan.png',          ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['pasta']                           = {['name'] = 'pasta',                             ['label'] = 'Pasta',                     ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'pasta.png',             ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},
    ['peanut_butter']                   = {['name'] = 'peanut_butter',                     ['label'] = 'Peanut Butter',             ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'peanut_butter.png',     ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'},

    -- Recipe Outputs (also includes items used as ingredients AND are recipe outputs)
    ['bread']                           = {['name'] = 'bread',                             ['label'] = 'Loaf of Bread',             ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'bread.png',              ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A freshly baked loaf of bread.'},
    ['sliced_bread']                    = {['name'] = 'sliced_bread',                      ['label'] = 'Sliced Bread',              ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'sliced_bread.png',      ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Sliced bread.'},
    ['tortilla']                        = {['name'] = 'tortilla',                          ['label'] = 'Tortilla',                  ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'tortilla.png',          ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A soft tortilla for tacos or wraps.'},
    ['bagel']                           = {['name'] = 'bagel',                             ['label'] = 'Bagel',                     ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'bagel.png',             ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A chewy bagel, perfect for breakfast.'},
    ['bun']                             = {['name'] = 'bun',                               ['label'] = 'Bun',                       ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'bun.png',               ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A soft bun for burgers or sandwiches.'},
    ['classic_burger']                  = {['name'] = 'classic_burger',                    ['label'] = 'Classic Burger',            ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'classic_burger.png',    ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A classic burger with lettuce and tomato.'},
    ['bacon_cheese_burger']             = {['name'] = 'bacon_cheese_burger',               ['label'] = 'Bacon Cheese Burger',       ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'bacon_cheese_burger.png',['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A juicy burger topped with crispy bacon and melted cheese.'},
    ['margherita_pizza']                = {['name'] = 'margherita_pizza',                  ['label'] = 'Margherita Pizza',          ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'margherita_pizza.png',  ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A classic Italian pizza.'},
    ['pizza']                           = {['name'] = 'pizza',                             ['label'] = 'Pizza',                     ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'pizza.png',             ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A delicious pizza.'},
    ['fried_chicken']                   = {['name'] = 'fried_chicken',                     ['label'] = 'Fried Chicken',             ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'fried_chicken.png',     ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Crispy and juicy fried chicken.'},
    ['clucky_clamp']                    = {['name'] = 'clucky_clamp',                      ['label'] = 'Clucky Clamp',              ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'clucky_clamp.png',      ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A crispy chicken sandwich.'},
    ['potato_mash']                     = {['name'] = 'potato_mash',                       ['label'] = 'Mashed Potatoes',           ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'potato_mash.png',       ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Creamy mashed potatoes.'},
    ['baked_potato']                    = {['name'] = 'baked_potato',                      ['label'] = 'Baked Potato',              ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'baked_potato.png',      ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A simple baked potato.'},
    ['hash_browns']                     = {['name'] = 'hash_browns',                       ['label'] = 'Hash Browns',               ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'hash_browns.png',       ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Crispy shredded potato hash browns.'},
    ['french_fries']                    = {['name'] = 'french_fries',                      ['label'] = 'French Fries',              ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'french_fries.png',      ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Golden and crispy French fries.'},
    ['chocolate_cake']                  = {['name'] = 'chocolate_cake',                    ['label'] = 'Chocolate Cake',            ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'chocolate_cake.png',    ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A rich chocolate cake.'},
    ['chocolate_chip_cookies']          = {['name'] = 'chocolate_chip_cookies',            ['label'] = 'Chocolate Chip Cookies',    ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'chocolate_chip_cookies.png', ['unique'] = false,    ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Warm cookies with chocolate chips.'},
    ['strawberry_smoothie']             = {['name'] = 'strawberry_smoothie',               ['label'] = 'Strawberry Smoothie',       ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'strawberry_smoothie.png', ['unique'] = false,    ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A refreshing strawberry smoothie.'},
    ['blueberry_muffin']                = {['name'] = 'blueberry_muffin',                  ['label'] = 'Blueberry Muffin',          ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'blueberry_muffin.png',  ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A fluffy blueberry muffin.'},
    ['apple_pie']                       = {['name'] = 'apple_pie',                         ['label'] = 'Apple Pie',                 ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'apple_pie.png',         ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A classic apple pie.'},
    ['lemonade']                        = {['name'] = 'lemonade',                          ['label'] = 'Lemonade',                  ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'lemonade.png',          ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A refreshing glass of lemonade.'},
    ['milkshake']                       = {['name'] = 'milkshake',                         ['label'] = 'Milkshake',                 ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'milkshake.png',         ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A thick and creamy milkshake.'},
    ['tea']                             = {['name'] = 'tea',                               ['label'] = 'Tea',                       ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'tea.png',               ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cooking ingredient'}, -- Note: Also a recipe output
    ['iced_tea']                        = {['name'] = 'iced_tea',                          ['label'] = 'Iced Tea',                  ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'iced_tea.png',          ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A cool and refreshing iced tea.'},
    ['ice_cream_sundae']                = {['name'] = 'ice_cream_sundae',                  ['label'] = 'Ice Cream Sundae',          ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'ice_cream_sundae.png',  ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A delightful ice cream sundae.'},
    ['smoothie']                        = {['name'] = 'smoothie',                          ['label'] = 'Smoothie',                  ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'smoothie.png',          ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A refreshing fruit smoothie.'},
    ['hot_chocolate']                   = {['name'] = 'hot_chocolate',                     ['label'] = 'Hot Chocolate',             ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'hot_chocolate.png',     ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A warm and rich hot chocolate drink.'},
    ['coffee']                          = {['name'] = 'coffee',                            ['label'] = 'Coffee',                    ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'coffee.png',            ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A strong cup of coffee.'},
    ['garlic_toast']                    = {['name'] = 'garlic_toast',                      ['label'] = 'Garlic Toast',              ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'garlic_toast.png',      ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Toasted bread with garlic butter.'},
    ['grilled_cheese']                  = {['name'] = 'grilled_cheese',                    ['label'] = 'Grilled Cheese',            ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'grilled_cheese.png',    ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'A gooey grilled cheese sandwich.'},
    ['spaghetti']                       = {['name'] = 'spaghetti',                         ['label'] = 'Spaghetti',                 ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'spaghetti.png',         ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Classic spaghetti with tomato sauce.'},
    ['peanut_butter_toast']             = {['name'] = 'peanut_butter_toast',               ['label'] = 'Peanut Butter Toast',       ['weight'] = 1000,         ['type'] = 'item',         ['image'] = 'peanut_butter_toast.png',['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Toast with peanut butter.'},    
    ````

    **OX INVENTORY (Paste in OX Inventory `items.lua`):**
    ````lua        
        ["peanut_butter_toast"] = {
            label = "Peanut Butter Toast",
            description = "Toast with peanut butter.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["classic_burger"] = {
            label = "Classic Burger",
            description = "A classic burger with lettuce and tomato.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["margherita_pizza"] = {
            label = "Margherita Pizza",
            description = "A classic Italian pizza.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["banana"] = {
            label = "Banana",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["coffee_bean"] = {
            label = "Coffee Bean",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["fried_chicken"] = {
            label = "Fried Chicken",
            description = "Crispy and juicy fried chicken.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["water_bottle"] = {
            label = "Water",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            client = {
                image = 'water.png'
            }
        }, 
        ["garlic"] = {
            label = "Garlic",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["hot_chocolate"] = {
            label = "Hot Chocolate",
            description = "A warm and rich hot chocolate drink.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["chocolate_cake"] = {
            label = "Chocolate Cake",
            description = "A rich chocolate cake.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["peanut_butter"] = {
            label = "Peanut Butter",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["olive_oil"] = {
            label = "Olive Oil",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["coffee"] = {
            label = "Coffee",
            description = "A strong cup of coffee.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["strawberry"] = {
            label = "Strawberry",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["blueberry_muffin"] = {
            label = "Blueberry Muffin",
            description = "A fluffy blueberry muffin.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["garlic_toast"] = {
            label = "Garlic Toast",
            description = "Toasted bread with garlic butter.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["smoothie"] = {
            label = "Smoothie",
            description = "A refreshing fruit smoothie.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["milk"] = {
            label = "Milk",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["spaghetti"] = {
            label = "Spaghetti",
            description = "Classic spaghetti with tomato sauce.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["cheese"] = {
            label = "Cheese",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["strawberry_smoothie"] = {
            label = "Strawberry Smoothie",
            description = "A refreshing strawberry smoothie.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["mozzarella"] = {
            label = "Mozzarella",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["bacon_cheese_burger"] = {
            label = "Bacon Cheese Burger",
            description = "A juicy burger topped with crispy bacon and melted cheese.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["apple_pie"] = {
            label = "Apple Pie",
            description = "A classic apple pie.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["potato_mash"] = {
            label = "Mashed Potatoes",
            description = "Creamy mashed potatoes.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["salt"] = {
            label = "Salt",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["flour"] = {
            label = "Flour",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["honey"] = {
            label = "Honey",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["cinnamon"] = {
            label = "Cinnamon",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["baked_potato"] = {
            label = "Baked Potato",
            description = "A simple baked potato.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["ice_cream_sundae"] = {
            label = "Ice Cream Sundae",
            description = "A delightful ice cream sundae.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["lettuce"] = {
            label = "Lettuce",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["tomato"] = {
            label = "Tomato",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["tea"] = {
            label = "Tea",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["beef"] = {
            label = "Beef",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["iced_tea"] = {
            label = "Iced Tea",
            description = "A cool and refreshing iced tea.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["egg"] = {
            label = "Egg",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["parmesan"] = {
            label = "Parmesan",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["sliced_bread"] = {
            label = "Sliced Bread",
            description = "Sliced bread.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["lime"] = {
            label = "Lime",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["ice"] = {
            label = "Ice",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["butter"] = {
            label = "Butter",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["bread"] = {
            label = "Loaf of Bread",
            description = "A freshly baked loaf of bread.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["pasta"] = {
            label = "Pasta",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["potato"] = {
            label = "Potato",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["grilled_cheese"] = {
            label = "Grilled Cheese",
            description = "A gooey grilled cheese sandwich.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["chicken"] = {
            label = "Chicken",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["milkshake"] = {
            label = "Milkshake",
            description = "A thick and creamy milkshake.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["cream"] = {
            label = "Cream",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["lemon"] = {
            label = "Lemon",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["lemonade"] = {
            label = "Lemonade",
            description = "A refreshing glass of lemonade.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["blueberry"] = {
            label = "Blueberry",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["chocolate"] = {
            label = "Chocolate",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["oil"] = {
            label = "Oil",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["bacon"] = {
            label = "Bacon",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["sugar"] = {
            label = "Sugar",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["clucky_clamp"] = {
            label = "Clucky Clamp",
            description = "A crispy chicken sandwich.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["chocolate_chip_cookies"] = {
            label = "Chocolate Chip Cookies",
            description = "Warm cookies with chocolate chips.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["tortilla"] = {
            label = "Tortilla",
            description = "A soft tortilla for tacos or wraps.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["apple"] = {
            label = "Apple",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["hash_browns"] = {
            label = "Hash Browns",
            description = "Crispy shredded potato hash browns.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["pizza"] = {
            label = "Pizza",
            description = "A delicious pizza.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["bagel"] = {
            label = "Bagel",
            description = "A chewy bagel, perfect for breakfast.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["french_fries"] = {
            label = "French Fries",
            description = "Golden and crispy French fries.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["tomato_sauce"] = {
            label = "Tomato Sauce",
            description = "A cooking ingredient",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
        ["bun"] = {
            label = "Bun",
            description = "A soft bun for burgers or sandwiches.",
            weight = 1000, 
            stack = true,
            close = true,
            
        }, 
    ````

### Step 4: Restart Your Server
1.  Restart your FiveM server completely to ensure all changes are loaded correctly.

Your `mrc-cooking` resource should now be installed and ready to use! Configure the `config.lua` within the `mrc-cooking` folder for further customization.