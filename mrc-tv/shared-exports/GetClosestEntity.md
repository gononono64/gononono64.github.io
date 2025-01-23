--- 
title: GetClosestEntity 
parent: Shared Exports 
grand_parent: MRC TV 
nav_order: 1 
--- 
#### `GetClosestEntity(position)`
Finds the nearest entity to a given position.

**Parameters:**
- `position` (`vector3`): World coordinates to check from.

**Returns:**
- `table`: The nearest `entityData` or `nil` if none found.

**Example:**
```lua
local nearest = exports['rebound_entities']:GetClosestEntity(GetEntityCoords(PlayerPedId()))
```

