--- 
title: GetEntitiesByModel 
parent: Shared Exports 
grand_parent: Rebound Entities 
layout: page
nav_order: 7
--- 
## `GetEntitiesByModel(model)` 
Retrieves entities by their model.

**Parameters:**
- `model` (`string`): Model name or hash to filter by.

**Returns:**
- `table`: An array of matching `entityData` objects.

**Example:**
```lua
local tvs = exports['mrctv']:GetEntitiesByModel("prop_tv_flat_01")
```
