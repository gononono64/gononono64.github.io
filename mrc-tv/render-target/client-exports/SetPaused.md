---
title: SetPaused
grand_parent: Render Targets
parent: Client Exports
layout: page
---

## `SetPaused`

--- DUI Data Structure
--- @class DUIData
--- @field id string Unique DUI identifier
--- @field renderId number Render target ID
--- @field dui number DUI handle
--- @field handle string DUI browser handle
--- @field txd string Runtime TXD name
--- @field tx string Runtime texture name
--- @field url string? Current media URL
--- @field volume number? Current volume level

-- Render Target Management
--- Create or get render target for DUI
--- @param id string DUI identifier
--- @param url string Initial URL to load
--- @return string id DUI identifier
--- @return DUIData dui DUI data
exports("SetRenderTarget", SetRenderTarget)

--- Cleanup DUI and render target resources
--- @param id string DUI identifier
exports("Cleanup", Cleanup)

-- Media Controls
--- Play video URL on DUI
--- @param id string DUI identifier  
--- @param url string Video URL to play
exports("PlayVideo", PlayVideo)

--- Set DUI pause state
--- @param id string DUI identifier
--- @param paused boolean True to pause, false to play
exports("SetPaused

### Parameters
- `id` (`string`): Description.
- `url` (`string`): Description.
- `id` (`string`): Description.
- `id` (`string`): Description.
- `url` (`string`): Description.
- `id` (`string`): Description.
- `paused` (`boolean`): Description.
- `id` (`string`): Description.
- `volume` (`number`): Description.

### Returns
- `string id DUI identifier`
- `DUIData dui DUI data`
