# XD Fortress 2

A Team Fortress 2 mod with gladiators, ragdolls, deathrun, Mann vs. Machine for 10 players and more.

BY: Ugotaphonenumber and Claude XDDDDDDDD

---

# How to install

There are **6 steps**. You only do this **once**. Everything is free.

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

## 3. Get Git

Git downloads the newest version of the mod for you.

1. Go to **https://git-scm.com/download/win**. The download starts.
2. Open the file you downloaded.
3. Click **Next** until it says **Install**. Click **Install**, then **Finish**.

## 4. Put the mod in the right folder

1. Download the mod: **[XD_Fortress_2_mod_tf.zip](https://github.com/holmbuild/xd-fortress-2/releases/latest/download/XD_Fortress_2_mod_tf.zip)** (about 450 MB).
2. Open **File Explorer** (the yellow folder on the taskbar).
3. Click the address bar at the top, paste this and press **Enter**:

   ```
   C:\Program Files (x86)\Steam\steamapps
   ```

4. Is there a folder called **sourcemods**? If not, right-click an empty spot, choose **New > Folder** and name it `sourcemods`.
5. Go to your **Downloads** folder. Right-click **XD_Fortress_2_mod_tf.zip** and choose **Extract All...**
6. In the box that opens, delete the path and paste this instead:

   ```
   C:\Program Files (x86)\Steam\steamapps\sourcemods
   ```

7. Click **Extract** and wait.

**Check:** open `sourcemods`. There must be a folder called **mod_tf**, and inside it a file called **gameinfo.txt**. If you see `mod_tf` inside another `mod_tf`, move the inner one up so it sits right in `sourcemods`.

Steam is somewhere else? Use the `steamapps` folder in the folder where **Steam itself** is installed, not your other game drives. To find it, right-click your Steam shortcut and choose **Open file location**.

## 5. Get the newest version

1. Open the folder `sourcemods\mod_tf`.
2. Double-click **Uppdatera.cmd**.
3. If a blue box says *Windows protected your PC*, click **More info**, then **Run anyway**.
4. The first time it downloads the whole mod (about 1 GB). It is done when it says **Up to date**. Then press any key.

## 6. Restart Steam

1. In Steam, click **Steam** at the top left, then **Exit**.
2. Start Steam again.
3. Find **XD Fortress 2** in your library and click **Play**.

**Done!**

---

# How to update

The game tells you when there is a new update. Then:

1. Close the game.
2. Open the folder `C:\Program Files (x86)\Steam\steamapps\sourcemods\mod_tf`
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
| I can't find Source SDK Base 2013 Multiplayer | In the library, the **Tools** tick in step 2 must be on. Check the spelling in the search box. |
| XD Fortress 2 is not in my library | Check step 4: the file must be `sourcemods\mod_tf\gameinfo.txt`. Then do step 6 again. Steam must be fully closed with **Steam > Exit**. |
| The game does not start | Do step 2 again. |
| Purple and black squares in the game | Team Fortress 2 is not finished downloading. Wait for step 1. |
| `Uppdatera.cmd` says Git is not installed | Do step 3, then double-click `Uppdatera.cmd` again. |
| `Uppdatera.cmd` says it failed | Close the game and double-click it again. |
| The game crashed | Send us the file `klient_1.log` from the folder `sourcemods\mod_tf\logs`. |

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
