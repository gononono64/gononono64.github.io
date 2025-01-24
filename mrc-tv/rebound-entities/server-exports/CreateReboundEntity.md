--- 
title: CreateReboundEntity 
parent: Server Exports 
grand_parent: Rebound Entities 
layout: page
nav_order: 1 
--- 
## `CreateReboundEntity(data, target)`
Creates a new synced entity.

**Parameters:**
- `data` (`table`): Entity properties (see `entityData` structure).
- `target` (`number`, optional): Player ID to send to. Defaults to `-1` (all clients).

**Returns:**
- `table`: The created entity data.

**Example:**
```lua
local entity = exports['mrctv']:CreateReboundEntity({
    model = "prop_tv_flat_01",
    position = vector3(x, y, z),
    rotation = vector3(0, 0, 0)
})
```
