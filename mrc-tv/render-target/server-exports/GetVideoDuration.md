---
title: GetVideoDuration
grand_parent: Render Targets
parent: Server Exports
layout: page
---

## `GetVideoDuration`

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
exports("SetupTv", SetupTv)

--- Delete TV and cleanup resources
--- @param id string TV identifier
--- @return boolean success True if deleted
exports("DeleteTv", DeleteTv)

--- Power on TV and give remote to player
--- @param src number Player server ID
--- @param id string TV identifier
exports("TurnOnTv", TurnOnTv)

--- Power off TV and cleanup remote
--- @param id string TV identifier
exports("TurnOffTv", TurnOffTv)

-- Media Controls
--- Set TV volume level
--- @param id string TV identifier
--- @param volume number Volume level (0.0-1.0)
exports("SetTvVolume", SetTvVolume)

--- Add video to queue
--- @param id string TV identifier
--- @param platform string Video platform (youtube, twitch etc)
--- @param videoId string Platform video ID
--- @param urlOverride string? Optional direct URL
--- @param durationOverride number? Optional duration in ms
exports("AddToTvQueue", AddToTvQueue)

--- Remove queue item at index
--- @param id string TV identifier
--- @param index number Queue position
--- @return table? removedItem Removed queue item or nil
exports("RemoveFromQueue", RemoveFromQueue)

--- Clear entire queue
--- @param id string TV identifier
exports("ClearQueue", ClearQueue)

--- Play next video in queue
--- @param id string TV identifier
exports("PlayNextInQueue", PlayNextInQueue)

--- Play previous video in queue
--- @param id string TV identifier
exports("PlayPreviousInQueue", PlayPreviousInQueue)

--- Toggle TV pause state
--- @param id string TV identifier
--- @param isPaused boolean True to pause, false to play
exports("SetTVPaused", SetTVPaused)

-- Utilities
--- Get video duration from platform/ID
--- @param platform string Video platform
--- @param videoId string Video identifier
--- @return number? duration Video duration in ms or nil if failed
exports("GetVideoDuration

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
