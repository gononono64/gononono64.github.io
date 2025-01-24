---
title: PlayNextInQueue
grand_parent: Render Targets
parent: Server Exports
layout: page
---

## `PlayNextInQueue(id)`
Play the next video in the TV queue.

**Parameters:**
- `id` (`string`): TV identifier.

**Returns:**  
*(None)*  

**Example:**
```lua
exports['mrctv']:PlayNextInQueue("exampleTV")
print("Playing next video in TV queue")
```