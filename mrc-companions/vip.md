---
title: VIP Access System
parent: MRC COMPANIONS
layout: page
nav_order: 2
---

# Enabling VIP Access for Companions

## Overview

The companion system can be restricted to VIP players only. This feature allows you to create an exclusive experience or monetize your server through Tebex by selling VIP access.

> **Configuration Required**: Set `Config.UseVIP = true` in the config file to enforce VIP permissions.

## Setting Up VIP Permissions

FiveM uses the ACE permission system to manage access rights. Add this permission to your server:

```cfg
# Add this to your server.cfg
add_ace group.vip companion.use allow
```

## Granting VIP Access

### Option 1: Manual Setup ⚙️

To manually add individual players to the VIP group:

```cfg
# Add to your server.cfg
add_principal identifier.fivem:PLAYER_FIVEM_ID group.vip
```

**Replace `PLAYER_FIVEM_ID` with the player's identifier.**

You can use any of these identifier formats:
- `fivem:1234567890` (FiveM ID)
- `steam:1100001XXXXXXX` (Steam Hex ID)
- `license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx` (License)

---

### Option 2: Tebex Integration 🛒

If you sell VIP access through your Tebex store:

1. **Navigate to**: Your Tebex Dashboard → Packages → [Select Package] → Commands
2. **Add Command**:

```cfg
    add_principal identifier.fivem:\{\{player.id\}\} group.vip
```

3. **For Subscription/Timed Packages**:
   Add to the **Expiry Commands** section:

```cfg
    remove_principal identifier.fivem:\{\{player.id\}\} group.vip
```

## Video Tutorial

For a visual guide on setting up ACE permissions:

[![FiveM Permissions Tutorial](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/watch?v=WsvBbt62-qs)

---