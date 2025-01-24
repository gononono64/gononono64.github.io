---
title: URL Patterns
parent: MRC TV
layout: page
nav_order: 2
---

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

```lua
URL_PATTERNS.myvideo = {
    pattern = "myvideo.com/watch?v=",
    template = "https://www.myvideo.com/embed/%s?autoplay=1",
    durationTag = '"videoDuration":"(%d+)"',
    durationMultiplier = 1000,  -- Convert to milliseconds
    priority = 3
}
```