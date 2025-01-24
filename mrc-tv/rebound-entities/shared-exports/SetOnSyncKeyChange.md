--- 
title: SetOnSyncKeyChange 
parent: Shared Exports 
grand_parent: Rebound Entities 
layout: page
nav_order: 2
--- 

## SetOnSyncKeyChange(entityData, callback)
Sets a handler for entity data changes.

**Parameters:**
- `entityData` (`table`): Entity to watch for changes.
- `callback` (`function(entityData, key, value)`): Called when data changes.
  - `entityData` (`table`): Entity being changed.
  - `key` (`string`): Property being changed.
  - `value` (`any`): New value.

**Example:**
```lua
exports['mrctv']:SetOnSyncKeyChange(entity, function(e, k, v) 
    print(k, v)
end)
```
