---
title: PlayPreviousInQueue
grand_parent: Render Targets
parent: Server Exports
layout: page
---

## `PlayPreviousInQueue(id)`
Play the previous video in the TV queue.

**Parameters:**
- `id` (`string`): TV identifier.

**Returns:**  
*(None)*  

**Example:**
```lua
exports['mrctv']:PlayPreviousInQueue("exampleTV")
print("Playing previous video in TV queue")
```