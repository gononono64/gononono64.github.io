---
title: SetPaused
grand_parent: Render Targets
parent: Client Exports
layout: page
---

## `SetPaused(id, paused)`
Set the DUI pause state. Must be a video url.

**Parameters:**
- `id` (`string`): DUI identifier.
- `paused` (`boolean`): `true` to pause, `false` to play.

**Returns:**  
*(None)*  

**Example:**
```lua
exports['mrctv']:SetPaused("example_DUI_id", true)
print("DUI paused")
```