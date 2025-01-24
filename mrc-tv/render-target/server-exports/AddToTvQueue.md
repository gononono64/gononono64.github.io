---
title: AddToTvQueue
grand_parent: Render Targets
parent: Server Exports
layout: page
---

## `AddToTvQueue(id, platform, videoId, urlOverride, durationOverride)`
Add a video to the TV queue.

**Parameters:**
- `id` (`string`): TV identifier.
- `platform` (`string`): Video platform (e.g., `youtube`, `twitch`, etc.).
- `videoId` (`string`): Platform video ID.
- `urlOverride` (`string?`): Optional direct URL.
- `durationOverride` (`number?`): Optional duration in milliseconds.

**Returns:**  
*(None)*  

**Example:**
```lua
exports['mrctv']:AddToTvQueue("exampleTV", "youtube", "dQw4w9WgXcQ", nil, 300000)
print("Video added to TV queue")
```