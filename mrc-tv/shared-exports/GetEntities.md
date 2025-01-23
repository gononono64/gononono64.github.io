--- 
title: GetEntities 
parent: Shared Exports 
grand_parent: MRC TV 
layout: page
nav_order: 4
--- 

* `GetEntities()`*
Returns all registered entities.

**Returns:**
- `table`: A table containing all entities, indexed by their ID.

**Example:**
```lua
local entities = exports['rebound_entities']:GetEntities()
```
