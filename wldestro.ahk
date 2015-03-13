;~Single target Fury Warrior Rotation
#MaxThreadsPerHotkey 2
~Enter::Pause, Toggle, 0
$F12:: ;press F12 to activate or desactivate
s := !s
;~you need to set up the hot keys. I have my habilities from 1 to 9 numeric.
Random, gd, 300, 500 ;~ i had this as 200 before and crashed... i may need to make a random here
sbcast := 900
immocast := 1250
confcast := 800
chaoscast := 2850
incicast := 1850
hab1 := 1 ;~ Pummel
hab2 := 2 ;~ Heroic Strike
hab3 := 3 ;~ Shield Slam
hab4 := 4 ;~ Revenge
hab5 := 5 ;~ Execute
hab6 := 6 ;~ Devastate
hab7 := 7 ;~ Shield Block
constanty := 5 ;~ set the Y position for your bars
shadowburn := 10 ;~ set the X position for mob cast bar
immolate := 25 ;~ x of your enrage white square
conflagrate := 40 ;~ x of your >90 rage white square
chaosbolt := 55 ;~ x of your Raging Blow white square
incinerate := 70 ;~ x of your Bloodsurge white square
combatx := 115 ;~ x of your Bloodthirst out of CD white square
While s
{
	IfWinActive, World of Warcraft
	{
		PixelGetColor, combatwhite, combatx, constanty, RGB
		While, combatwhite = 0xFFFFFF
		{
			PixelGetColor, iswhite, shadowburn, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				While, iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
				{
				SendEvent,%hab1%
				Sleep, %sbcast%
				PixelGetColor, iswhite, shadowburn, constanty, RGB
				PixelGetColor, combatwhite, combatx, constanty, RGB
				}
			}
			Else
			PixelGetColor, iswhite, immolate, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				While, iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
				{
				SendEvent, %hab2%
				Sleep, %immocast%
				PixelGetColor, iswhite, immolate, constanty, RGB
				PixelGetColor, combatwhite, combatx, constanty, RGB
				}
			}
			Else
			PixelGetColor, iswhite, conflagrate, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				SendEvent, %hab3%
				Sleep, %confcast%
				PixelGetColor, iswhite, conflagrate, constanty, RGB
			}
			Else
				PixelGetColor, iswhite, chaosbolt, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					SendEvent, %hab4%
					Sleep, %chaoscast%
					PixelGetColor, iswhite, chaosbolt, constanty, RGB
				}
				Else
				PixelGetColor, iswhite, conflagrate, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					SendEvent, %hab3%
					Sleep, %confcast%
					PixelGetColor, iswhite, conflagrate, constanty, RGB
				}
			Else
			SendEvent, %hab5%
			Sleep, %incicast%
			PixelGetColor, combatwhite, combatx, constanty, RGB
		}
	}
	Else
	Sleep, %gd%
}