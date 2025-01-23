--- 
title: GetClosestEntities 
parent: Shared Exports 
layout: default
grand_parent: MRC TV 
nav_order: 6
--- 
#### `GetClosestEntities(position, radius)`
Finds entities within a radius of a given position.

**Parameters:**
- `position` (`vector3`): Center point to search from.
- `radius` (`number`): Search radius in units.

**Returns:**
- `table`: An array of `entityData` objects within range.

**Example:**
```lua
local nearby = exports['rebound_entities']:GetClosestEntities(pos, 50.0)
```