--- 
title: GetEntitiesByModel 
parent: Shared Exports 
grand_parent: MRC TV 
nav_order: 1 
--- 
#### `GetEntitiesByModel(model)`
Retrieves entities by their model.

**Parameters:**
- `model` (`string`): Model name or hash to filter by.

**Returns:**
- `table`: An array of matching `entityData` objects.

**Example:**
```lua
local tvs = exports['rebound_entities']:GetEntitiesByModel("prop_tv_flat_01")
```
