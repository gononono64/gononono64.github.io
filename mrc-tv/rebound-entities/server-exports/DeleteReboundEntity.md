--- 
title: DeleteReboundEntity 
parent: Server Exports 
grand_parent: Rebound Entities 
layout: page
nav_order: 2
--- 
## `DeleteReboundEntity(id)`

Removes a synced entity.

**Parameters:**
- `id` (`string`): Entity ID to remove.

**Returns:**
- `boolean`: Success status.

**Example:**
```lua
exports['mrctv']:DeleteReboundEntity("entity_1")
```
