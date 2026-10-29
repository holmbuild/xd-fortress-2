# XD Fortress 2

A Team Fortress 2 mod: gladiator mode, ragdoll mode, Ragdoll Knockout, deathrun, a playground map, Mann vs. Machine for 10 players, taunts and more.

BY: Ugotaphonenumber and Claude XDDDDDDDD

---

## What you need, and why

You need **three things**. All of them are free.

| What | Why |
|---|---|
| **Team Fortress 2** (Steam) | The mod uses TF2's maps, models and sounds. |
| **Source SDK Base 2013 Multiplayer** (Steam) | This is the game engine the mod runs on. Without it the mod will not start. It is a Steam *tool*, so it does not show up in your library or the store like a normal game. **This is the step most people miss.** |
| **Git** (recommended) | Downloads the mod and lets you update it with one double-click. Don't like the command line? Install from the zip instead (see *Install with the zip instead*). |

You also need about **2 GB** of free space on C: for the mod.

---

## Install step by step (once)

### Step 1: Team Fortress 2

Install Team Fortress 2 in Steam as usual and let it **finish downloading**.

Shortcut: press **Windows key + R**, paste `steam://install/440` and press Enter.

### Step 2: Source SDK Base 2013 Multiplayer

1. Press **Windows key + R**.
2. Paste the text below and press **Enter**:

   ```
   steam://install/243750
   ```

3. Steam opens an install window for **Source SDK Base 2013 Multiplayer**. Click **Install** and wait until it is done.

Doing it by hand instead: in Steam, go to **Library**. Click the drop-down at the top left that says *Games*, tick **Tools**, then search for `Source SDK Base 2013 Multiplayer`.

Watch out for the wrong ones: you need **Multiplayer**. *Singleplayer* and the old *Source SDK* will not work.

**Check:** the tool is in your library and shows a *Launch* button, not *Install*. You never have to start it yourself.

### Step 3: Git

Install **[Git for Windows](https://git-scm.com/download/win)**. Click *Next* on every screen; the default settings are fine.

### Step 4: Download the mod

1. Press the **Windows key**, type `cmd` and press **Enter**. A black window opens.
2. Copy the line below, paste it with right-click (or Ctrl+V) and press **Enter**:

   ```
   git clone https://github.com/holmbuild/xd-fortress-2.git "C:\Program Files (x86)\Steam\steamapps\sourcemods\mod_tf"
   ```

3. Wait until it is done. It downloads about 1 GB, so it can take a few minutes. It is finished when you can type in the window again.

**Is Steam installed somewhere else?** The mod must go into the `steamapps\sourcemods` folder **in the folder where Steam itself is installed**. Your other game library drives do not count. To find that folder, right-click your Steam shortcut and choose *Open file location*. Then change the start of the path in the line above to match it.

### Step 5: Restart Steam completely

1. In Steam, choose **Steam > Exit**. Closing the window is not enough: Steam keeps running in the background.
2. Start Steam again.
3. **XD Fortress 2** is now in your library. Click **Play**. Done!

---

## Update (whenever something new is out)

1. Close the game.
2. Open the folder `C:\Program Files (x86)\Steam\steamapps\sourcemods\mod_tf`.
3. Double-click **`Uppdatera.cmd`**. When it says *Up to date*, you are done.

**Everyone on a server needs the same version**, so update before you join.

---

## Install with the zip instead (no command line)

1. Do step 1, step 2 and step 5 above as usual.
2. Download **[XD_Fortress_2_mod_tf.zip](https://github.com/holmbuild/xd-fortress-2/releases/latest/download/XD_Fortress_2_mod_tf.zip)** (about 340 MB).
3. Unzip it into `C:\Program Files (x86)\Steam\steamapps\sourcemods`. If there is no `sourcemods` folder, create it.
4. Check that the file `...\sourcemods\mod_tf\gameinfo.txt` exists. If you get `mod_tf\mod_tf\gameinfo.txt` instead, there is one folder too many: move the inner `mod_tf` up one level.

**Update:** install Git (step 3), then double-click **`Uppdatera.cmd`** in the `mod_tf` folder.

- The first time, it downloads the whole mod once. This takes a few minutes.
- After that, it only downloads what changed.
- Your settings are kept.

No Git? Download the zip again and unzip it in the same place, choosing *Replace all files*.

---

## Join a server

1. The host types `status` in the console. Then they send you the address on the `udp/ip` line. It starts with 169.254 and changes every time the server starts.
2. Open the console with `~` and type:

   ```
   connect 169.254.x.x:port
   ```

Nobody has to open ports in their router.

**No console?** Turn on *Options > Keyboard > Advanced > Enable developer console*. Or add `-console` to the game's launch options in Steam.

---

## In game

- **Chat commands:**
  - `/help` lists the mod's commands.
  - `/modweapons` opens the weapon mod menu: fire rate, projectile speed, multishot, infinite ammo, explosive shots, homing, knockback, vampire, elements, teleport, giant and god mode. It works on every weapon, Jarate included.
- **Maps** (type in the console):
  - `map xdglad_colosseum`: gladiators
  - `map xd_lekplats`: playground
  - `map dr_xd_construction`: deathrun on a construction site
  - `map xdrag_deathrun`: ragdoll deathrun
  - `map xdko_skyring` and `map xdko_bowling`: Ragdoll Knockout
- **The map prefix tells you the game mode:**
  - `xd_` playground
  - `xdglad_` gladiators
  - `dr_` deathrun
  - `xdrag_` ragdoll mode
  - `xdko_` Ragdoll Knockout
- **Deathrun:**
  - One player is Death (BLU) and presses buttons that start the traps.
  - Everyone else runs (RED) and has one life.
  - The first runner to reach the finish picks a duel.
  - `/dr` shows the queue to become Death.
- **Mann vs. Machine** (`map mvm_coaltown`, `mvm_decoy`, ...):
  - Up to 10 defenders.
  - Type `/ready` in chat, or press F4, between waves.
  - The host should start the server with `+maxplayers 33` so all 22 robots fit.
- **Gladiator mode:** before each round everybody trains in the **ludus** (the training yard). Stand in the circle by the gate when you are ready.
- **Your own radio songs on dr_xd_construction:**
  - Put wav files in `...\sourcemods\mod_tf\sound\mina_radio\`. Any names and any number of files work.
  - Use mono, 16 bit, 44.1 or 22.05 kHz.
  - Your songs play instead of the built-in ones.
  - Updates never overwrite them.
  - Players who join your server download them from you.
- **Keys and extras:**
  - O = ragdoll
  - P = third person
  - `/mic` = microphone stand
  - `/instrument` = play music with the numpad

---

## Trouble?

| Problem | Do this |
|---|---|
| XD Fortress 2 is not in the Steam library | Exit Steam completely (*Steam > Exit*) and start it again. Then check that `...\Steam\steamapps\sourcemods\mod_tf\gameinfo.txt` exists. It must not be `mod_tf\mod_tf\...`, and it must be in the folder where Steam itself is installed. |
| The game does not start, closes at once, or complains about the engine | **Source SDK Base 2013 Multiplayer** is missing or not finished. Do step 2. Already installed? In the library, right-click it and choose *Properties > Installed Files > Verify integrity*. |
| Purple and black checkered textures, missing models or sounds | Team Fortress 2 is not fully installed. Let it finish (step 1). |
| `'git' is not recognized` | Install Git (step 3), then open a **new** cmd window. |
| `destination path ... already exists` | You already have a `mod_tf` folder, for example from the zip. Rename it to `mod_tf_old`, then run the line in step 4 again. |
| `Permission denied` when downloading | Open cmd as administrator: press the Windows key, type `cmd`, right-click it and choose *Run as administrator*. |
| `Uppdatera.cmd` says it failed | Close the game and run it again. |
| Cannot join the server | Everyone needs the same version. Update, and ask the host to update too. |
| Anything else (crash, lag, something broken) | Send us the log: `...\sourcemods\mod_tf\logs\klient.log`. After a crash, send `klient_1.log` too, since the game starts a new log every time. The five latest sessions are kept. |
