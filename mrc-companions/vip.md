---
title: Enable VIP
parent: MRC COMPANIONS
layout: page
nav_order: 2
---

## Enabling VIP Access for Companions

If you've enabled `Config.UseVIP = true` in the config, **only VIP players will be able to use the companion system**. To grant players access, you’ll need to use FiveM’s built-in ACE permission system.

First add this to your server.cfg (or a config file that runs on server startup):

```cfg
add_ace group.vip companion.use allow
```

### Option 1: Manually Add Players (server.cfg)

To manually give a player VIP access, add the following lines to your `server.cfg` (or a config file that's executed on server startup):

```cfg
add_principal identifier.fivem:YOUR_FIVEM_ID_HERE group.vip
```

> Replace `YOUR_FIVEM_ID_HERE` with the player's actual FiveM ID (you can use `steam:` or `license:` if preferred).

---

### Option 2: Automatically Add Players Through Tebex

If you're selling VIP access through Tebex, you can automatically add players to the VIP group using Tebex's command system:

1. **Go to your Tebex package > Commands tab**
2. Add the following command:

```plaintext
add_principal identifier.fivem:{{player.id}} group.vip
```

If it's a timed perk or subscription, add this to the **Expiry Commands** to remove access when it ends:

```plaintext
remove_principal identifier.fivem:{{player.id}} group.vip
```

> ✅ Make sure to set `Config.UseVIP = true` in the config file to enforce VIP access!

---

### Need Help? Watch This Video:

If you're new to ACE permissions or want a visual walkthrough, check out this great explainer:  
📺 [FiveM Permissions Tutorial](https://www.youtube.com/watch?v=WsvBbt62-qs)

---
Let me know if you'd like a separate section for testing VIP access in-game or troubleshooting tips!
## Additional Resources
For support or more information, please contact the Mr Crowley.