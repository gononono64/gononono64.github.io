--- 
title: SetOnSpawn 
parent: Client Exports 
grand_parent: MRC TV 
layout: page
nav_order: 1 
--- 
* `SetOnSpawn(id, callback)` *
Sets a spawn handler for an entity.

**Parameters:**
- `id` (`string`): Entity ID.
- `callback` (`function(entityData, entity)`): Called after the entity spawns.
  - `entityData` (`table`): Entity data.
  - `entity` (`number`): GTA entity handle.

**Returns:**
- `boolean`: Success status.

**Example:**
```lua
exports['rebound_entities']:SetOnSpawn(id, function(data, ent) 
    SetEntityCollision(ent, false)
end)
```