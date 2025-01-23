--- 
title: GetClosestEntity 
parent: Shared Exports 
layout: page
grand_parent: Rebound Entities 
nav_order: 5
--- 
## `GetClosestEntity(position)`
Finds the nearest entity to a given position.

**Parameters:**
- `position` (`vector3`): World coordinates to check from.

**Returns:**
- `table`: The nearest `entityData` or `nil` if none found.

**Example:**
```lua
local nearest = exports['rebound_entities']:GetClosestEntity(GetEntityCoords(PlayerPedId()))
```

