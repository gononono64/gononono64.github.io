--- 
title: GetEntityData 
parent: Shared Exports 
grand_parent: MRC TV 
layout: page
nav_order: 3
--- 

*** `GetEntityData(id)` ***
Fetches data for a specific entity.

**Parameters:**
- `id` (`string`): Entity ID to lookup.

**Returns:**
- `table`: The entity's data or `nil` if not found.

**Example:**
```lua
local data = exports['rebound_entities']:GetEntityData("entity_1")
```
