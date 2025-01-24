---
title: SetupTv
grand_parent: Render Targets
parent: Server Exports
layout: page
---

## `SetupTv(entityData)`
Register a new TV entity.

**Parameters:**
- `entityData` (`table`): Base entity data.
- `model` (`string`): Required - Model name/hash.
- `position` (`vector3`): Required - World coordinates.
- `rotation` (`vector3`): Optional - Entity rotation.

**Returns:**
- `tv` (`TVData`): Registered TV data.

**Example:**
```lua
local entityData = {
    model = "tv_model",
    position = vector3(0, 0, 0),
    rotation = vector3(0, 0, 0)
}
local tvData = exports['mrctv']:SetupTv(entityData)
print("TV registered with data:", tvData)
```