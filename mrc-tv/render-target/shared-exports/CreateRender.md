---
title: CreateRender
grand_parent: Render Targets
parent: Shared Exports
layout: page
nav_order: 1
---

## `CreateRender(id, data, onUpdate)`
Create a 3D render surface for DUI content.

**Parameters:**
- `id` (`string`): Unique identifier.
- `data` (`RenderData`): Configuration data.
- `onUpdate` (`function?`): Optional update callback (`dui`).
  - `dui` (`DUIData`): The created DUI data.

**Returns:**
- `dui` (`DUIData`): Created DUI data.

**Example:**
```lua
local render = exports['mrctv']:CreateRender({
    url = "https://example.com",
    entity = entity,
    offset = vector3(0, 0, 1.0),
    width = 2.0,
    height = 1.2,
    volume = 0.8
})
print("DUI created with ID:", render.id)
```