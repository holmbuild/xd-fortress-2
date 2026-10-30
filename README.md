# XD Fortress 2

A Team Fortress 2 mod with gladiators, ragdolls, deathrun, Mann vs. Machine for 10 players and more.

BY: Ugotaphonenumber and Claude XDDDDDDDD

---

# How to install

There are **5 steps**. You only do this **once**. Everything is free.

## 1. Get Team Fortress 2

1. Press the **Windows key** and **R** at the same time. A small box opens.
2. Paste this and press **Enter**:

   ```
   steam://install/440
   ```

3. Click **Install** and wait until it is done.

## 2. Get the game engine

The mod needs a free Steam tool called **Source SDK Base 2013 Multiplayer**. It does not show up in the store, so do it like this:

1. Press the **Windows key** and **R** at the same time.
2. Paste this and press **Enter**:

   ```
   steam://install/243750
   ```

3. Click **Install** and wait until it is done.

## 3. Get Git

1. Go to **https://git-scm.com/download/win**. The download starts.
2. Open the file you downloaded.
3. Click **Next** until it says **Install**. Click **Install**, then **Finish**.

## 4. Get the mod

1. Press the **Windows key**, type `cmd` and press **Enter**. A black window opens.
2. Copy this line, paste it into the black window (right-click) and press **Enter**:

   ```
   git clone https://github.com/holmbuild/xd-fortress-2.git "C:\Program Files (x86)\Steam\steamapps\sourcemods\mod_tf"
   ```

3. Wait. It downloads about 1 GB. It is done when the text stops and you can type again.
4. Close the black window.

## 5. Restart Steam

1. In Steam, click **Steam** at the top left, then **Exit**.
2. Start Steam again.
3. Find **XD Fortress 2** in your library and click **Play**.

**Done!**

---

# How to update

The game tells you when there is a new update. Then:

1. Close the game.
2. Open this folder: `C:\Program Files (x86)\Steam\steamapps\sourcemods\mod_tf`
3. Double-click **Uppdatera.cmd**.
4. When it says **Up to date**, you are done.

You and your friends need the **same version** to play together.

---

# How to play with friends

1. The friend who hosts types `status` in the console and sends you the address on the `udp/ip` line.
2. Press `~` to open the console and type `connect` and the address, like this:

   ```
   connect 169.254.12.34:27015
   ```

No console? Go to **Options > Keyboard > Advanced** and tick **Enable developer console**.

Hosting Mann vs. Machine? Add `+maxplayers 33` to the game's launch options in Steam, so all the robots fit.

---

# Something is wrong?

| Problem | Fix |
|---|---|
| XD Fortress 2 is not in my library | Do step 5 again. Steam must be fully closed with **Steam > Exit**. |
| The game does not start | Do step 2 again. |
| Purple and black squares in the game | Team Fortress 2 is not finished downloading. Wait for step 1. |
| `'git' is not recognized` | Do step 3, then open a **new** black window and do step 4 again. |
| `already exists` in step 4 | You already have the mod. Use **How to update** instead. |
| My Steam is not in `C:\Program Files (x86)\Steam` | Change the start of the path in step 4 and in **How to update** to where your Steam is. |
| `Uppdatera.cmd` says it failed | Close the game and double-click it again. |
| The game crashed | Send us the file `klient_1.log` from the `mod_tf\logs` folder. |

---

# In the game

- Type **/help** in chat to see all the mod's commands.
- Type **/modweapons** in chat to change your weapon: faster shooting, more damage, homing, explosions and much more.
- Press **O** to become a ragdoll and **P** for third person.
- Open the console with `~` and type one of these to play a map:
  - `map xdglad_colosseum` – gladiators
  - `map xd_lekplats` – playground
  - `map dr_xd_construction` – deathrun
  - `map xdrag_deathrun` – ragdoll deathrun
  - `map xdko_skyring` or `map xdko_bowling` – Ragdoll Knockout
  - `map mvm_coaltown` – Mann vs. Machine (type **/ready** in chat between waves)
- Want your own songs on the radio in `dr_xd_construction`? Put wav files in `mod_tf\sound\mina_radio`. Updates never remove them.
