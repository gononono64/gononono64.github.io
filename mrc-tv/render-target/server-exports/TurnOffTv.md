---
title: TurnOffTv
grand_parent: Render Targets
parent: Server Exports
layout: page
---

## `TurnOffTv(id)`
Power off the TV and clean up the remote.

**Parameters:**
- `id` (`string`): TV identifier.

**Returns:**  
*(None)*  

**Example:**
```lua
exports['mrctv']:TurnOffTv("exampleTV")
print("TV powered off and remote cleaned up")
```