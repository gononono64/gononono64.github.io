---
title: DeleteTv
grand_parent: Render Targets
parent: Server Exports
layout: page
---

## `DeleteTv(id)`
Delete the TV and clean up resources.

**Parameters:**
- `id` (`string`): TV identifier.

**Returns:**
- `success` (`boolean`): `True` if deleted.

**Example:**
```lua
local success = exports['mrctv']:DeleteTv("exampleTV")
if success then
    print("TV deleted successfully")
else
    print("Failed to delete TV")
end
```