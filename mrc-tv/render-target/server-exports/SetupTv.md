---
title: SetupTv
grand_parent: Render Targets
parent: Server Exports
layout: page
---

## `SetupTv`

--- TV Data Structure
--- @class TVData
--- @field id string Unique TV identifier
--- @field model string Model name/hash
--- @field position vector3 World coordinates
--- @field rotation vector3 Entity rotation
--- @field isTv boolean Always true for TVs
--- @field isOn boolean Power state
--- @field hasRemote number Source ID of player with remote
--- @field volume number Current volume (0.0-1.0)
--- @field queue table[] Video queue
--- @field queueIndex number Current queue position
--- @field isPaused boolean Pause state
--- @field startTime number Timestamp when current video started

-- TV Management
--- Get TV data by ID
--- @param id string TV identifier
--- @return TVData|nil tv TV data or nil if not found
exports("GetTv", GetTv)

--- Register new TV entity
--- @param entityData table Base entity data
--- @field model string Required - Model name/hash
--- @field position vector3 Required - World coordinates
--- @field rotation vector3 Optional - Entity rotation
--- @return TVData tv Registered TV data
exports("SetupTv

### Parameters
- `id` (`string`): Description.
- `entityData` (`table`): Description.
- `id` (`string`): Description.
- `src` (`number`): Description.
- `id` (`string`): Description.
- `id` (`string`): Description.
- `id` (`string`): Description.
- `volume` (`number`): Description.
- `id` (`string`): Description.
- `platform` (`string`): Description.
- `videoId` (`string`): Description.
- `urlOverride` (`string`): Description.
- `durationOverride` (`number`): Description.
- `id` (`string`): Description.
- `index` (`number`): Description.
- `id` (`string`): Description.
- `id` (`string`): Description.
- `id` (`string`): Description.
- `id` (`string`): Description.
- `isPaused` (`boolean`): Description.
- `platform` (`string`): Description.
- `videoId` (`string`): Description.

### Returns
- `TVData|nil tv TV data or nil if not found`
- `TVData tv Registered TV data`
- `boolean success True if deleted`
- `table? removedItem Removed queue item or nil`
- `number? duration Video duration in ms or nil if failed`
