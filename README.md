# XD Fortress 2

A Team Fortress 2 mod on Source SDK Base 2013 Multiplayer: gladiator mode (xd_colosseum),
ragdoll mode, a playground map, deathrun, taunts and more.

BY: Ugotaphonenumber and Claude XDDDDDDDD

## Install

1. In Steam, install (both free): **Team Fortress 2** and **Source SDK Base 2013 Multiplayer**
   (the second one is under Library > Tools).
2. Install [Git for Windows](https://git-scm.com/download/win) (default options are fine).
3. Open a command prompt and run (change the path if Steam is somewhere else):

   ```
   git clone https://github.com/holmbuild/xd-fortress-2.git "C:\Program Files (x86)\Steam\steamapps\sourcemods\mod_tf"
   ```

   You should now have `...\sourcemods\mod_tf\gameinfo.txt`.
   Had the old zip? Rename or remove the old `mod_tf` folder first.
4. Restart Steam. **XD Fortress 2** shows up in your library.

## Update

Close the game and double-click **`Uppdatera.cmd`** in the `mod_tf` folder. Only what changed is downloaded.
Everyone on a server needs the same version, so update before you join.

## Without Git: the zip

Download **[XD_Fortress_2_mod_tf.zip](https://github.com/holmbuild/xd-fortress-2/releases/latest/download/XD_Fortress_2_mod_tf.zip)**
(always the newest version) and unzip it into Steam's `sourcemods` folder, so that you get
`...\sourcemods\mod_tf\gameinfo.txt`. For an update, download it again and unzip it over the old one.
Older versions are under [Releases](https://github.com/holmbuild/xd-fortress-2/releases).

## Join a server

The host types `status` in the console and sends you the address on the `udp/ip` line
(it starts with 169.254 and changes every time the server starts). Open the console (~) and type:

```
connect 169.254.x.x:port
```

It goes through Steam's relay network, so nobody has to open ports in their router.

No console? Turn on Options > Keyboard > Advanced > Enable developer console,
or add `-console` to the game's launch options in Steam.

## In game

- `/help` in chat lists the mod's commands.
- `/mic` puts out a microphone stand: voice commands (Z/X/C) near it also play from its speaker.
- O = ragdoll mode (the controls show on screen), P = third person.
- `/instrument` = play with the numpad as Engineer, Demoman, Soldier or Medic.
- Maps: `map xd_colosseum` (gladiators), `map xd_lekplats` (playground), `map xd_deathrun`.
