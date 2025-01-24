---
title: SetTVPaused
grand_parent: Render Targets
parent: Server Exports
layout: page
---

## `SetTVPaused(id, isPaused)`
Toggle the TV pause state.

**Parameters:**
- `id` (`string`): TV identifier.
- `isPaused` (`boolean`): `true` to pause, `false` to play.

**Returns:**  
*(None)*  

**Example:**
```lua
exports['mrctv']:SetTVPaused("exampleTV", true)
print("TV paused")
```