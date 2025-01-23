---
title: Entity Data
parent: MRC TV
has_children: true
nav_order: 1
---

## Data Structures

### `entityData`

| Key                 | Type       | Description                                                        |
|---------------------|------------|--------------------------------------------------------------------|
| `id`                | `string`   | Unique entity identifier (auto-generated if not provided).         |
| `model`             | `string`   | [Optional] Model name or hash. At least one of `model` or `position` must be provided. |
| `position`          | `vector3`  | [Optional] World coordinates (x, y, z). At least one of `model` or `position` must be provided. |
| `rotation`          | `vector3`  | [Optional] Entity rotation (x, y, z), defaults to `(0, 0, 0)`.    |
| `entity`            | `number`   | Entity handle once spawned (client-side only).                    |
| `isServer`          | `boolean`  | True if created by server.                                        |
| `inRange`           | `boolean`  | True if within spawn distance (client-side only).                 |
| `onSpawn`           | `function` | [Optional] Called after entity spawns (client-side only).         |
| `onDespawn`         | `function` | [Optional] Called before entity despawns (client-side only).      |
| `onSyncKeyChange`   | `function` | [Optional] Called when synced data changes.                       |

---