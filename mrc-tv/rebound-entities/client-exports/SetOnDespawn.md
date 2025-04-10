--- 
title: SetOnDespawn 
parent: Client Exports 
grand_parent: Rebound Entities 
layout: page
nav_order: 2
--- 
## `SetOnDespawn(id, callback)`
Sets a despawn handler for an entity.

**Parameters:**
- `id` (`string`): Entity ID.
- `callback` (`function(entityData, entity)`): Called before the entity despawns.
  - `entityData` (`table`): Entity data.
  - `entity` (`number`): GTA entity handle.

**Returns:**
- `boolean`: Success status.

**Example:**
```lua
exports['mrctv']:SetOnDespawn(id, function(data, ent) 
    print("Despawned", ent)
end)

