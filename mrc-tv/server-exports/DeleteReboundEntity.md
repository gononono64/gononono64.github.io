--- 
title: DeleteReboundEntity 
parent: Server Exports 
grand_parent: MRC TV 
layout: home
nav_order: 2
--- 
#### `DeleteReboundEntity(id)`
Removes a synced entity.

**Parameters:**
- `id` (`string`): Entity ID to remove.

**Returns:**
- `boolean`: Success status.

**Example:**
```lua
exports['rebound_entities']:DeleteReboundEntity("entity_1")
```
