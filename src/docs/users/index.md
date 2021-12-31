# Getting Started

[RebornBuddy][2] is a customizable bot for Final Fantasy XIV. It automates tedious gameplay like grinding or mass crafting, allowing you to relax or even AFK while it does your bidding.

Add-ons are the lifeblood of RebornBuddy -- the bot is almost useless without them. Luckily, there are plenty of free and paid [community add-ons][2] to do almost anything. If not, you can always create or commission your own [custom add-ons][3]!

This page will cover installing RebornBuddy itself, then the most useful add-ons to get off to a good start.

[1]: https://www.rebornbuddy.com/ "RebornBuddy"
[2]: /downloads "Downloads"
[3]: /devs/ "Developer's Guide"

## Installing RebornBuddy

1. Download [RebornBuddy][101].
2. **Before** extracting, [unblock the `.zip` file][102] to avoid issues later.
3. Extract RebornBuddy to a known location.
4. In Windows Defender, [exclude the entire RebornBuddy folder][103].

    !!! warning
        Please be safe and use critical thinking when excluding things from anti-virus. RebornBuddy is probably okay and doesn't trigger [VirusTotal][104], but this is your own informed choice to make. In this case, Windows Defender dislikes that RebornBuddy (necessarily) interferes with FF14's memory, so excluding it will save you the pain of `RebornBuddy.exe` being quarantined/deleted every update.

5. Launch `RebornBuddy.exe`.
6. Insert your product key and click ++"Login"++:

    ![Login Screen](img/login.png)

7. Wait for the bot to fully load and logs to stop scrolling.

If you've made it this far without incident, congratulations! The next step is installing key add-ons so the bot is actually useful.

[101]: https://updates.buddyauth.com/getnewest?filter=RebornBuddy64 "RebornBuddy64"
[102]: https://stackoverflow.com/a/15238782 "Unblocking a .zip"
[103]: https://support.microsoft.com/en-us/windows/add-an-exclusion-to-windows-security-811816c0-4dfd-af4a-47e4-c301afe13b26 "Exclude a Folder"
[104]: https://www.virustotal.com/gui/home/upload "VirusTotal"

## Installing RepoBuddy and Other Add-Ons

[RepoBuddy][201] is recommended to easily install and automatically update all types of add-ons. It includes the most popular stuff by default, so RepoBuddy is probably the only plugin most users need to install manually.

1. Close RebornBuddy if it's already running.
2. Install [Microsoft Visual C++ 2010 SP1][202]. Choose the `vcredist_x64.exe` version.
3. Download [`repoBuddy-master.zip`][203].
4. **Before** extracting, [unblock the `.zip` file][102] to avoid issues later.
5. Extract RepoBuddy to `RebornBuddy\Plugins\`, **removing `-master`** so it looks like:
    ```
    RebornBuddy
    └── Plugins
        └── repoBuddy
            ├── repoBuddy.cs
            └── ...
    ```
6. Start RebornBuddy.
7. In the ++"Plugins"++ tab, check the box for "repoBuddy" to enable it.
8. Click the "repoBuddy" line, then the ++"Settings"++ button to the right.
9. Under ++"One-Time Downloads"++, install "Magitek" and "Lisbeth".
10. At the top, click "Restart RebornBuddy".
11. Wait for installation to finish and the logs to show:
    ```
    [repoBuddy] RB fully loaded!
    ```

You now have most everything needed to use RebornBuddy like a pro, including automatic updates!

For a full list of add-ons that may not be included with RepoBuddy, see the [Downloads][204] page and subsequent READMEs.

[201]: https://github.com/Zimgineering/repoBuddy "RepoBuddy"
[202]: https://www.microsoft.com/en-us/download/details.aspx?id=26999 "VC++ 2010 SP1"
[203]: https://github.com/Zimgineering/repoBuddy/archive/master.zip "repoBuddy-master.zip"
[204]: /downloads "Downloads"
