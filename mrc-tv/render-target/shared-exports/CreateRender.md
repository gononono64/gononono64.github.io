---
title: CreateRender
grand_parent: Render Targets
parent: Shared Exports
layout: page
---

## `CreateRender`

--- Render Configuration Data Structure
--- @class RenderData
--- @field url string URL to render
--- @field offset vector3? Offset from position/entity (default: 0,0,0)
--- @field rotationOffset vector3? Additional rotation offset (default: 0,0,0)
--- @field entity number? Entity handle to attach to
--- @field position vector3? Static world position if no entity
--- @field rotation vector3? Static rotation if no entity (default: 0,0,0)
--- @field width number? Width of render surface (default: 16:9 ratio)
--- @field height number? Height of render surface (default: 16:9 ratio)
--- @field volume number? Audio volume (0.0-1.0, default: 1.0)

--- Create a 3D render surface for DUI content
--- @param id string Unique identifier
--- @param data RenderData Configuration data
--- @param onUpdate function? Optional update callback(dui)
--- @return DUIData dui Created DUI data
--- @example
--- local render = exports['mrctv']:CreateRender
---     url = "https://example.com",
---     entity = entity,
---     offset = vector3(0, 0, 1.0),
---     width = 2.0,
---     height = 1.2,
---     volume = 0.8
--- })
exports("CreateRender

### Parameters
- `id` (`string`): Description.
- `data` (`RenderData`): Description.
- `onUpdate` (`function`): Description.

### Returns
- `DUIData dui Created DUI data`
