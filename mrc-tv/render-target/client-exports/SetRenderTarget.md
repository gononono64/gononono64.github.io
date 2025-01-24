---
title: SetRenderTarget
grand_parent: Render Targets
parent: Client Exports
layout: page
---

## `SetRenderTarget(id, url)`
Create or get a render target for a DUI.

**Parameters:**
- `id` (`string`): DUI identifier.
- `url` (`string`): Initial URL to load.

**Returns:**
- `id` (`string`): DUI identifier.
- `duiData` (`DUIData`): DUI data.

**Example:**
```lua
local id, duiData = exports['mrctv']:SetRenderTarget("example_DUI_id", "https://example.com")
print("DUI created with ID:", id)
```