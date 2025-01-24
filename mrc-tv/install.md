---
title: Install Instructions
parent: MRC TV
layout: page
nav_order: 1
---
# Installation Instructions for `MRC TV`

## Available Free Here: [MRC TV](https://mrcscripts.tebex.io/)

## Prerequisites
1. **Download and Install Community Bridge**  
   You need to install [Community Bridge](https://github.com/The-Order-Of-The-Sacred-Framework/community_bridge/tree/dev).  
   - Clone or download the repository from the link above.  
   - Follow their installation instructions to properly set it up in your server.

---

## Step 1: Add Items to Your Framework

### For QB-Core and similar inventory systems
Open the `items.lua` file in your `qb-core/shared` directory and add the following items:

```lua
['tv'] = {
    ['name'] = 'tv',
    ['label'] = 'TV',
    ['weight'] = 10000,
    ['type'] = 'item',
    ['image'] = 'tv.png',
    ['unique'] = true,
    ['useable'] = true,
    ['shouldClose'] = true,
    ['combinable'] = false,
    ['description'] = 'A TV',
},

['tv_remote'] = {
    ['name'] = 'tv_remote',
    ['label'] = 'TV Remote',
    ['weight'] = 10000,
    ['type'] = 'item',
    ['image'] = 'tvremote.png',
    ['unique'] = true,
    ['useable'] = true,
    ['shouldClose'] = true,
    ['combinable'] = false,
    ['description'] = 'A TV remote',
},
```

### For ESX and frameworks using ox inventory
```lua
['tv'] = {
   label = 'TV',
   weight = 10000,
   stack = false
   close = true,
   combinable = false,
   description = 'A TV',
   consume = 0,
   client = {
        image = 'tv.png',
    },
},

['tv_remote'] = {
   label = 'TV Remote',
   weight = 10000,
   stack = false,
   close = true,
   combinable = false,
   description = 'A TV remote',
   consume = 0,
   client = {
        image = 'tvremote.png',
    },
},
```


## Step 2: Ensure Resources in the Correct Order
In your server's `server.cfg` file:  
1. Add the following lines:

   ```plaintext
   ensure community_bridge
   ensure mrctv
   ```

2. Make sure `mrctv` is started **after** `community_bridge`.



## Step 3: Configure `mrctv`
Open the `config.lua` file inside the `mrctv` folder and adjust it as needed for your server. Refer to the provided comments or documentation in the file for guidance.



## Step 4: Restart Your Server
To apply the changes:  
1. Either restart the entire server.  
2. Or, use this command in f8/server console:
   - `refresh; Wait(500); ensure community_bridge; Wait(500); ensure mrctv`


## Step 5: Profit!
The script should now be fully functional on your server! Players can use TVs and remotes as intended.
