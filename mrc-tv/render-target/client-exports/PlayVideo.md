---
title: PlayVideo
grand_parent: Render Targets
parent: Client Exports
layout: page
---
## `PlayVideo(id, url)`
Play a video URL on a DUI.

**Parameters:**
- `id` (`string`): DUI identifier.
- `url` (`string`): Video URL to play.

**Returns:**  
*(None)*  

**Example:**
```lua
exports['mrctv']:PlayVideo("example_DUI_id", "https://example.com/video.mp4")
```