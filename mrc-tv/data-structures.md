---
title: Data Structures
parent: MRC TV
layout: page
nav_order: 2
---

## Data Structures

## `entityData`

| Key                 | Type       | Description                                                        |
|---------------------|------------|--------------------------------------------------------------------|
| `id`                | `string`   | Unique entity identifier (auto-generated if not provided).         |
| `entity`            | `number`   | Entity handle once spawned (client-side only).                    |
| `isServer`          | `boolean`  | True if created by server.                                        |
| `inRange`           | `boolean`  | True if within spawn distance (client-side only).                 |
| `model`             | `string`   | [Optional] Model name or hash. (Either `model` or `position` must be provided). |
| `position`          | `vector3`  | [Optional] World coordinates (x, y, z). (Either`model` or `position` must be provided). |
| `rotation`          | `vector3`  | [Optional] Entity rotation (x, y, z), defaults to `(0, 0, 0)`.    |
| `onSpawn`           | `function` | [Optional] Called after entity spawns (client-side only).         |
| `onDespawn`         | `function` | [Optional] Called before entity despawns (client-side only).      |
| `onSyncKeyChange`   | `function` | [Optional] Called when synced data changes.                       |


## `RenderTargetData`
Core data structure for managing render targets in FiveM.

# Properties Table

| Key             | Type       | Default        | Description                        |
|-----------------|------------|----------------|------------------------------------|
| `id`            | `string`   | -              | Unique identifier for the render target |
| `dui`           | `number`   | -              | DUI browser handle                 |
| `handle`        | `string`   | -              | DUI handle string                  |
| `renderId`      | `number`   | -              | FiveM render target handle         |
| `tx`            | `string`   | -              | Runtime texture name               |
| `txd`           | `string`   | -              | Runtime texture dictionary name    |
| `url`           | `string`   | -              | Current URL being displayed        |
| `volume`        | `number`   | 1.0            | Current audio volume (0.0-1.0)     |
| `width`         | `number`   | 2.1            | Render surface width               |
| `height`        | `number`   | 1.2            | Render surface height              |
| `offset`        | `vector3`  | (0,0,0)        | Position offset from entity/coords |
| `position`      | `vector3`  | (0,0,0)        | World position if not attached     |
| `rotation`      | `vector3`  | (0,0,0)        | World rotation if not attached     |
| `rotationOffset`| `vector3`  | (0,0,0)        | Rotation offset from entity/coords |
| `entity`        | `number`   | [Optional] nil | Entity handle if attached          |

---