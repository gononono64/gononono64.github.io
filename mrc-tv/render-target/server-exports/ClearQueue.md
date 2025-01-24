---
title: ClearQueue
grand_parent: Render Targets
parent: Server Exports
layout: page
---

## `ClearQueue(id)`
Clear the entire TV queue.

**Parameters:**
- `id` (`string`): TV identifier.

**Returns:**  
*(None)*  

**Example:**
```lua
exports['rebound_entities']:ClearQueue("exampleTV")
print("TV queue cleared")
```