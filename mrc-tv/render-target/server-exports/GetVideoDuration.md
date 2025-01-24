---
title: GetVideoDuration
grand_parent: Render Targets
parent: Server Exports
layout: page
---

## `GetVideoDuration(platform, videoId)`
Get the video duration from the platform and video ID.

**Parameters:**
- `platform` (`string`): Video platform (e.g., `youtube`, `vimeo`, etc.).
- `videoId` (`string`): Video identifier.

**Returns:**
- `duration` (`number?`): Video duration in milliseconds, or `nil` if failed.

**Example:**
```lua
local duration = exports['mrctv']:GetVideoDuration("youtube", "dQw4w9WgXcQ")
if duration then
    print("Video duration is:", duration, "ms")
else
    print("Failed to retrieve video duration")
end
```