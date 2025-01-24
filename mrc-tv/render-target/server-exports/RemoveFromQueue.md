---
title: RemoveFromQueue
grand_parent: Render Targets
parent: Server Exports
layout: page
---

## `RemoveFromQueue(id, index)`
Remove a queue item at the specified index.

**Parameters:**
- `id` (`string`): TV identifier.
- `index` (`number`): Queue position.

**Returns:**
- `removedItem` (`table?`): Removed queue item or `nil` if not found.

**Example:**
```lua
local removedItem = exports['mrctv']:RemoveFromQueue("exampleTV", 2)
if removedItem then
    print("Removed item:", removedItem)
else
    print("No item found at the specified index")
end
```