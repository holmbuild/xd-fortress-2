# XD Fortress 2

A Team Fortress 2 mod with gladiators, ragdolls, deathrun, Mann vs. Machine for 10 players and more.

BY: Ugotaphonenumber and Claude XDDDDDDDD

---

# How to install

There are **4 steps**. You only do this **once**. Everything is free.

## 1. Get Team Fortress 2

1. Open **Steam** and click **STORE** at the top.
2. Search for **Team Fortress 2** and open it.
3. Click **Play Game**, then **Install**. Wait until it is done.

## 2. Get Source SDK Base 2013 Multiplayer

The mod runs on this free Steam tool. It is **not in the store**. It is hidden in your library:

1. In Steam, click **LIBRARY** at the top.
2. At the top of the list on the left, click the word **GAMES**. A small menu opens.
3. Put a tick next to **Tools**.
4. In the search box under it, type: **Source SDK Base 2013 Multiplayer**
5. Click it, then click the blue **INSTALL** button. Wait until it is done.

Pick the one that says **Multiplayer**. *Singleplayer* will not work.

## 3. Get the mod

1. Click this link to download the installer: **[Install_XD_Fortress_2.zip](https://github.com/holmbuild/xd-fortress-2/raw/main/Install_XD_Fortress_2.zip)**
2. Open the file you downloaded.
3. Double-click **Install XD Fortress 2**.
4. If a blue box says *Windows protected your PC*, click **More info**, then **Run anyway**.
5. If it asks to install Git or to allow changes, click **Yes**.
6. Wait. It downloads about 1 GB. It is done when it says **DONE!** Then press any key.

## 4. Restart Steam

1. In Steam, click **Steam** at the top left, then **Exit**.
2. Start Steam again.
3. Find **XD Fortress 2** in your library and click **Play**.

**Done!**

---

# How to update

The game tells you when there is a new update. Then:

1. Close the game.
2. Double-click **Update XD Fortress 2** on your desktop.
3. When it says **Up to date**, you are done.

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
| I can't find Source SDK Base 2013 Multiplayer | In the library, the **Tools** tick in step 2 must be on. Check the spelling in the search box. |
| XD Fortress 2 is not in my library | Do step 4 again. Steam must be fully closed with **Steam > Exit**. |
| The game does not start | Do step 2 again. |
| Purple and black squares in the game | Team Fortress 2 is not finished downloading. Wait for step 1. |
| The installer says Git could not be installed | Install Git from [git-scm.com](https://git-scm.com/download/win) (click **Next** on every screen), then do step 3 again. |
| No **Update XD Fortress 2** on my desktop | Do step 3 again. It updates the mod and puts the button back. |
| The update says it failed | Close the game and try again. |
| The game crashed | Send us the file `klient_1.log` from the folder `Steam\steamapps\sourcemods\mod_tf\logs`. |

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
