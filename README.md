# hp-41_SWORDS.ROM
A complete gladiator arena fighting game for the HP-41 calculator.

Fight your way up the ranks to become a legendary gladiator in a medieval arena.

You create your character with his special attributes, weapon and armor. You enter the arena to fight a contender that roughly matches your abilities. You gain experience by winning fights, and experience can give you better attributes or buy you better weapons or armor. Each arena level consists of four fights. By cunning tactics and the luck on your side, you may advance beyond the fifth level and become a legend.

## SWORDS

There is one main program in this module, "SWORDS". The rest are supporting programs and functions. Do ' XEQ "SWORDS" ' to start the program. You will be asked if you want to load a previously created PC (Player Character). If this is the first time you play the game, simply press "N" to create a new PC (pressing "Y" or "R/S" will try to load a previously created PC - but if there are none, it will take you to creating a new PC.

Upon creating a PC - after giving him or her a name - you will be presented with a number of points that you can use to create your PC. These can be distributed among three attributes (VIGOR, POWER and SKILL), a WEAPN (weapon) or ARMOR. A character will always start with a minimum of 3 in VIGOR and 6 points to distribute beyond that. Adding one to an attribute costs one point. Adding a better weapon costs one point. But adding a better armor costs two points.

The screen will look like this when you first create a PC: "6 V3:P0:S0:W0:A0). This indicates that you have 6 points left to distribute, you have 3 in VIGOR and nothing else but bottom basics.

When you have the menu on the screen, pressing each of the top row keys (A - E) increases the corresponding value by one (pressing A adds one to VIGOR, B adds one to POWER, etc) and the point all the way to the left on the screen is reduced by one (two if you add one to ARMOR). If you change your mind, you can press SHIFT+(A - E) (i.e. a - e), you reduce the corresponding value by 1 and you regain points to distribute. You cannot reduce VIGOR below 3 or any other value below 0. Also, you cannot gain a weapon score above 4 or armor above 3.

Later in the game, when you win fights and gain a point to distribute, you will be presented with the same menu for upgrading your PC. You can then not reduce VIGOR, POWER or SKILL, but you can reduce weapon or armor (effectively selling your equipment) and use the money to train your attributes or upgrade weapon or armor. You will have to skip one round of upgrade and save your point for later of you want to upgrade your armor.

There are 5 levels of weapons available:

| No. | Weapon         | Mnemonic | OFF | DEF | DAM |  
| :-: | -------------- | :------: | :-: | :-: | :-: |
|  0  | Unarmed        |  UNARM   | -2  | -2  | -2  |
|  1  | 2*Knives       |  2*KNF   |  0  |  0  |  0  |
|  2  | 2-handed Spear |  SPEAR   | +1  | +2  |  0  | 
|  3  | Sword & Shield |  SW&SH   | +1  | +2  | +1  |
|  4  | Great axe      |  GRAXE   |  0  | +2  | +3  |

You need POWER at the level of the weapon you use (e.g. you need 2 in POWER to wield a SPEAR).

The character's attacking offensive value is equal to SKILL plus the weapon's OFF modifier, while the defensive value is equal to SKILL plus the weapon's DEF value.

![Alt text](http://www.ffxivinfo.com/images/disciplines/gladiator.gif?raw=true "Gladiator")

Whenever you attack your opponent, a dice roll is added to your offensive value. Your opponent defend with his defensive value and adds a dice roll. If your attack total is higher than his defense total, you score a hit. In the same way, the NPC (Non-Playing Character, your opponent) attacks with his offensive value plus a dice roll to overcome your defensive value plus a dice roll.

When a hit is scored, a dice roll is added to the character's damage to get the total damage scored. The character's damage is his POWER plus the weapon's DAM modifier. The armor of the target is subtracted to get the damage inflicted to the target's VIGOR. When the VIGOR is reduced below zero, the character is defeated.

But remember that attacks are simultaneous, so it is entirely possible that both you and your opponent scores a hit and you defeat each other.

When your PC has been defeated three times, it dies. The number of defeats is indicated by the flag annunciator on the screen. It starts on 0, then 1, then 2 and then your PC dies.

There are four levels of armor:

| No. | Armor    | AP  |
| :-: | -------- | :-: |
|  0  | NO ARMOR |  0  |
|  1  | LEATHER  |  1  |
|  2  | RINGED   |  2  |
|  3  | CHAIN    |  3  |

The AP (Armor Points) is how much the armor reduce the damage scored.

When you have created your PC, the calculator will display "ENTER ARENA..". It will then create your opponent (the NPC) and tell you what weapon and armor he has as well as some indication of his VIGOR and POWER. You will then be presented with the "fighting menu": "NPC PC O D N".

"NPC" will simply show again the NPC's weapon, armor, general VIGOR and POWER.

"PC" will show your stats.

"O", "D" and "N" will initiate the next round of attacks. "N" means that you will fight normally without any tactical specialties, while "O" means you will fight extra offensively - adding 2 to your OFF value while subtracting 3 from your DEF value. "D" means you will fight extra defensively with 2 added to your DEF value while subtracting 3 from your OFF value.

After pressing "O", "D" or "N", you will be asked if you will attack high or low that round ("ATTACK H:L"). Press "H" if you want to strike high and "L" if you want to strike low. It will then ask if you want to focus on defending high or low ("DEFEND H:L").

Then the round plays out.

An attack can result in a critical hit (whenever a 6 is rolled on the dice) or fumble (when a 1 is rolled). Another dice is rolled to see what kind of critical or fumble it is.

The critical effects are:

| Dice | Result        		                    | Shows in display |
| :--: | -------------------------------------- | ---------------- |
|  1   | +1 to the attack roll                  | CRITICAL: +1     |
|  2   | +2 to the attack roll                  | CRITICAL: +2     |
|  3   | +3 to the attack roll                  | CRITICAL: +3     |
|  4   | +1 VIGOR for the duration of the fight | INVIGORATING     |
|  5   | +1 SKILL for the duration of the fight | MOTIVATED        |
|  6   | +1 POWER for the duration of the fight | RUSHED           |

The fumble effects are:

| Dice | Result        		                    | Shows in display |
| :--: | -------------------------------------- | ---------------- |
|  1   | -1 to the attack roll                  | FUMBLE: +1       |
|  2   | -2 to the attack roll                  | FUMBLE: +2       |
|  3   | -3 to the attack roll                  | FUMBLE: +3       |
|  4   | -1 VIGOR for the duration of the fight | FATIGUED         |
|  5   | -1 SKILL for the duration of the fight | PULL MUSCLE      |
|  6   | -1 ARMOR for the duration of the fight | LOSE ARMOR       |

If your attack score is more than 5 above your opponent's defense score, you score a "GREAT STRIKE", adding 2 to your damage scored.

The fight continue until one or both gladiators have their VIGOR reduced below zero. If you defeat your opponent, you get to upgrade your PC and advance in the ranks.

The PC's stats are saved after every fight (to an Extended Memory data file).

Happy fighting. Go get'em tiger!

PS: When you get a hang of it, drop me a line and tell me how far you've advanced with a PC (g@isene.com)

## Credits

This game is inspired by the combat system of the AMAR Role-Playing Game (http://d6gaming.org). A special thanks goes to all the people involved in developing that game to the high quality system that it has become after more than 30 years of development.

Another thanks goes to Håkan Thørngren for his amazing NutStudio system for creating HP-41 modules. And as usual, thanks to all the MCODE gurus out there whose code I use and inspiration I take.
