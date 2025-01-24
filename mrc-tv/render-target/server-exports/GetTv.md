---
title: GetTv
grand_parent: Render Targets
parent: Server Exports
layout: page
---

## `GetTv(id)`
Get TV data by ID.

**Parameters:**
- `id` (`string`): TV identifier.

**Returns:**
- `tv` (`TVData|nil`): TV data or `nil` if not found.

**Example:**
```lua
local tvData = exports['rebound_entities']:GetTv("exampleTV")
if tvData then
    print("Found TV data:", tvData)
else
    print("TV not found")
end
```