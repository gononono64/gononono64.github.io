---
title: SetDuiVolume
grand_parent: Render Targets
parent: Client Exports
layout: page
---

## `SetDuiVolume(id, volume)`
Set the DUI volume level.

**Parameters:**
- `id` (`string`): DUI identifier.
- `volume` (`number`): Volume level (range: `0.0` to `1.0`).

**Returns:**  
*(None)*  

**Example:**
```lua
exports['mrctv']:SetDuiVolume("example_DUI_id", 0.5)
print("Volume set to 50% for DUI:", id)
```