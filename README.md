ahkwowrotations
===============
Only did Fury warrior... for now.

What it does?
For now, only single target rotation. It checks if you have a target, if the target is in range and if you are in combat, if all true, then it start to enter in the priority defined.

How it does?
Im using weakauras to put squares in the top left area of my wow so i can "comunicate" to ahk what i want it to do it.
Im also using leatrix plus as a view port to be sure no white is in the way of the ahk scan.

What it dosent?
It dosent activate CD's or move your char in anyway. You have to do that.

Rotation priority:
1. Pummel - cast if is avaible and target is casting a iterruptable spell
2. Berserker Rage - cast if is avaible and not enraged.
3. Execute - cast if Sudden Death aura is present.
4. Wild Strike - cast if rage > 89
5. Raging Blow - cast if Raging Blow! aura is present.
6. Wild Strike - cast if Bloodsurge aura is present.
7. Bloodthirst - cast when none of above is true and bloodthirst is out of CD.
8 - Dragonroar - cast when none of above is true and Dragon Roar is out of CD.
9 - dont cast anything and try again after 200ms.

INSTALATION

Get autohotkey (google)

Download stfwar.ahk to anywhere.

Get weakauras 2 addon (google)

Copy the string from weakaurasstring into weakauras2 ingame.

Run stfwar.ahk (double click)

press F12 while ingame to activate/desactivate.
