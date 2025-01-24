---
title = Config
parent = MRC TV
layout = page
nav_order = 1
---



# Configuration Settings

This page describes the configuration settings for the various components in the project.

## General Configuration (`Config`)

### `Config.NoSignal`
- **Type** = String
- **Description** = URL of the image to display when no signal is received.
- **Example**:
    ```plaintext
    "https://media.tenor.com/IemnuHk4r_4AAAAM/no-signal-stand-by.gif"
    ```
## Billboards (`Config.Billboards`)

### Properties:
    position = Position of the billboard in the game world.
    rotation = Rotation of the billboard in 3D space.
    width = Width of the billboard.
    height = Height of the billboard.
    playlist = A list of URLs to media that should be played on the billboard.
### Example Configuration:
Example Configuration:
```lua
Config.Billboards = {
    {
        position = vector3(-1299.16, -411.53, 35.7),
        rotation = vector3(0.0, 0.0, 0.0),
        width = 10.0,
        height = 5.0,
        playlist= {
            {
                url = "https://i.pinimg.com/originals/9a/3c/3f/9a3c3fb5f73822af8514df07f6676392.gif",
                duration = 10000
            },
            {
                url = "https://user-images.githubusercontent.com/14011726/94132137-7d4fc100-fe7c-11ea-8512-69f90cb65e48.gif",
                duration = 10000
            }
        }
    }
};
```
## TV Settings (`Config.Tvs`)

### General Properties:
General Properties:
    pickupDistance = Distance at which the TV can be interacted with.

### Example Configuration for TV Models:
Example Configuration for TV Models:
```lua
Config.Tvs = {
    pickupDistance = 2.0,
    globalModel = {
        [1205338731] = {
            width = 2.1,
            height = 1.2,
            offset = vector3(-7.65, 6.2, 0.125),
            rotationOffset = vector3(0.0, 0.0, -90.0),
        }
    },
    spawn = {
        {
            model = "des_tvsmash_start",
            position = vector3(-1371.81, -529.16, 30.34),
            rotation = vector3(0.0, 0.0, 0.0),
        },
        {
            model = "prop_tv_flat_01",
            position = vector3(-1374.1, -531.43, 30.29),
            rotation = vector3(0.0, 0.0, 0.0),
        }
    }
};
```
## TV Remote Settings (`Config.Remote`)

### Properties:
TV Remote Settings (Config.Remote)
Properties:
    itemName = The name of the item in the inventory.
    model = The model associated with the item.
    volumeStep = The volume change per step.
    menu = A configuration for the options in the TV remote's interaction menu.

Example Configuration:

```lua
Config.Remote = {
    itemName = "tv_remote",
    model = "prop_cs_remote_01",
    volumeStep = 0.1,
    menu = {
        title = "TV Remote",
        options = {
            "Queue" = {
                title = "Queue",
                description = "Queue a video to play on the TV",
                icon = "fas fa-plus"
            },
            "TurnOff" = {
                title = "Turn Off",
                description = "Turn off the TV",
                icon = "fas fa-power-off"
            },
            "PassRemote" = {
                title = "Pass Remote",
                description = "Pass the remote to another player",
                icon = "fas fa-hand-point-right"
            }
        }
    }
};
```

## TV Item Settings (`Config.Tvs.items`)

### Example Configuration:

TV Item Settings (Config.Tvs.items)
Example Configuration:

```lua
Config.Tvs.items = {
    "tv" = {
        label = "TV",
        type = "item_standard",
        width = 2.1,
        height = 1.2,
        offset = vector3(0.0, -0.06, 0.45),
        rotationOffset = vector3(0.0, 0.0, 180.0),
        model = "prop_tv_flat_01"
    }
};
```

# Creating Custom URL Patterns

This page explains how you can create your own custom `URL_PATTERN` to support additional media platforms.

## Structure of a URL Pattern

Each URL pattern in the `URL_PATTERNS` table is structured as a Lua table containing the following fields:

### 1. **`pattern`** (string or function)
- This is the string or function that defines the unique part of the URL that the platform uses to identify a specific media item (e.g., video, image, etc.).
- If you are using a string, it should represent a portion of the URL that can be matched (e.g., `youtube.com/watch?v=`).
- If you are using a function, it should accept a URL string as an argument and return the extracted media ID.

### 2. **`template`** (string or function)
- This is the URL template used to embed or display the media content.
- The media ID (extracted from the `pattern`) will be inserted into the template, typically where the `%s` placeholder is located.
- This can be a static string (e.g., `https://www.youtube.com/embed/%s?autoplay=1`) or a function that dynamically generates the URL.

### 3. **`durationTag`** (string or nil)
- This is the regex pattern used to extract the media duration from the platform's page or API response (if available).
- If the platform does not provide duration information, set this field to `nil`.

### 4. **`durationMultiplier`** (number or nil)
- This is the multiplier used to convert the duration (in seconds) to milliseconds, if necessary. For example, `1000` is used to convert seconds to milliseconds.
- If the platform does not have a duration, set this field to `nil`.

### 5. **`priority`** (number or nil)
- This is an optional field that defines the priority of the platform when matching URLs. Higher numbers have higher priority.
- This is useful when you want to specify which platform to match if a URL could potentially match multiple patterns.

## Example = Adding a New URL Pattern for a Custom Platform

Here's an example of how you can create your own custom URL pattern for a platform, say `myvideo.com`:

### Step 1 = Define the URL Pattern
```lua
URL_PATTERNS.myvideo = {
    pattern = "myvideo.com/watch?v=",
    template = "https://www.myvideo.com/embed/%s?autoplay=1",
    durationTag = '"videoDuration":"(%d+)"',
    durationMultiplier = 1000,  -- Convert to milliseconds
    priority = 3
}
```