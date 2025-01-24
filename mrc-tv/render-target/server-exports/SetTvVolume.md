---
title: SetTvVolume
grand_parent: Render Targets
parent: Server Exports
layout: page
---

## `SetTvVolume(id, volume)`
Set the TV volume level.

**Parameters:**
- `id` (`string`): TV identifier.
- `volume` (`number`): Volume level (range: `0.0` to `1.0`).

**Returns:**  
*(None)*  

**Example:**
```lua
exports['mrctv']:SetTvVolume("exampleTV", 0.7)
print("Volume set to 70% for TV:", id)
```