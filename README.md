# XD Fortress 2

A Team Fortress 2 mod: gladiator mode (xd_colosseum), ragdoll mode, a playground map, deathrun, taunts and more.

BY: Ugotaphonenumber and Claude XDDDDDDDD

## Install (once)

1. **Steam:** install **Team Fortress 2** and **Source SDK Base 2013 Multiplayer** (both free).
   The second one is under *Library > Tools*.
2. **Git:** install [Git for Windows](https://git-scm.com/download/win). Just click *Next* all the way.
3. **The mod:** press the Windows key, type `cmd` and press Enter. Paste the line below and press Enter:

   ```
   git clone https://github.com/holmbuild/xd-fortress-2.git "C:\Program Files (x86)\Steam\steamapps\sourcemods\mod_tf"
   ```

   Steam somewhere else? Change the start of the path (see *Steam > Settings > Storage*).
4. **Restart Steam.** **XD Fortress 2** is now in your library. Done!

## Update (whenever something new is out)

1. Close the game.
2. Open the folder `C:\Program Files (x86)\Steam\steamapps\sourcemods\mod_tf`
3. Double-click **`Uppdatera.cmd`**. When it says *Up to date* you are done.

Everyone on a server needs the same version, so update before you join.

## Without Git (the zip)

- **Install:** download **[XD_Fortress_2_mod_tf.zip](https://github.com/holmbuild/xd-fortress-2/releases/latest/download/XD_Fortress_2_mod_tf.zip)**
  and unzip it into `...\Steam\steamapps\sourcemods`.
  It is right when the file `...\sourcemods\mod_tf\gameinfo.txt` exists. Restart Steam.
- **Update:** download the zip again (the link always gives the newest) and unzip it in the same place.
  Choose *Replace all files*.

## Join a server

The host types `status` in the console and sends you the address on the `udp/ip` line
(it starts with 169.254 and changes every time the server starts). Open the console with `~` and type:

```
connect 169.254.x.x:port
```

Nobody has to open ports in their router. No console? Turn on *Options > Keyboard > Advanced >
Enable developer console*, or add `-console` to the game's launch options in Steam.

## In game

- `/help` in chat lists the mod's commands.
- Maps: `map xd_colosseum` (gladiators), `map xd_lekplats` (playground), `map xd_deathrun`.
- Gladiator mode: before each round everybody trains in the **ludus** (the training yard). Stand in the circle by the gate when you are ready.
- O = ragdoll, P = third person, `/mic` = microphone stand, `/instrument` = play with the numpad.

## Trouble?

| Problem | Do this |
|---|---|
| XD Fortress 2 is not in Steam | Check that `...\sourcemods\mod_tf\gameinfo.txt` exists (not `mod_tf\mod_tf\...`). Restart Steam. |
| The game does not start | Check that **Source SDK Base 2013 Multiplayer** is installed. |
| `Uppdatera.cmd` says it failed | Close the game and run it again. |
| Cannot join the server | Update: everyone needs the same version. |
| `git` is not found | Install Git (step 2) and open a **new** cmd window. |
