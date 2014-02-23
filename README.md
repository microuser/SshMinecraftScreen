SshMinecraftScreen
==================

SSH Screen Minecraft Multiple Admin Shared Access

This is a launch script to be used for when a minecraft server needs to be able to be administered by multiple people through the use of the linux program 'Screen'. Screen allows detaching and reattaching screen session. This script uses a named session named 'minecraft' of which user may use SSH and administer minecraft. It also detects if it has been launched previously, and automatically detaches and reattaches to the current SSH user.
