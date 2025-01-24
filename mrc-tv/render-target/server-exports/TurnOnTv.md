---
title: TurnOnTv
grand_parent: Render Targets
parent: Server Exports
layout: page
---

## `TurnOnTv(src, id)`
Power on the TV and give the remote to the player.

**Parameters:**
- `src` (`number`): Player server ID.
- `id` (`string`): TV identifier.

**Returns:**  
*(None)*  

**Example:**
```lua
exports['mrctv']:TurnOnTv(playerServerId, "exampleTV")
print("TV powered on and remote given to player:", src)
```