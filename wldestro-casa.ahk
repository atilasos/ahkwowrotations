;~Single target Fury Warrior Rotation
#MaxThreadsPerHotkey 2
~Enter::Pause, Toggle, 0
$F12:: ;press F12 to activate or desactivate
s := !s
;~you need to set up the hot keys. I have my habilities from 1 to 9 numeric.
Random, gd, 300, 500 ;~ i had this as 200 before and crashed... i may need to make a random here
Random, gcd, 500, 800
hab1 := 1 ;~ Pummel
hab2 := 2 ;~ Heroic Strike
hab3 := 3 ;~ Shield Slam
hab4 := 4 ;~ Revenge
hab5 := 5 ;~ Execute
hab6 := 6 ;~ Devastate
hab7 := 7 ;~ Shield Block
constanty := 5 ;~ set the Y position for your bars
shadowburn := 10 ;~ set the X position for mob cast bar
immolate := 27 ;~ x of your enrage white square
conflagrate := 45 ;~ x of your >90 rage white square
chaosbolt := 60 ;~ x of your Raging Blow white square
incinerate := 77 ;~ x of your Bloodsurge white square
combatx := 128 ;~ x of your Bloodthirst out of CD white square
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
				Sleep, %gd%
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
				Sleep, %gcd%
				PixelGetColor, iswhite, immolate, constanty, RGB
				PixelGetColor, combatwhite, combatx, constanty, RGB
				}
			}
			Else
			PixelGetColor, iswhite, conflagrate, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				While, iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
				{
				SendEvent, %hab3%
				Sleep, %gcd%
				PixelGetColor, iswhite, conflagrate, constanty, RGB
				PixelGetColor, combatwhite, combatx, constanty, RGB
				}
			}
			Else
				PixelGetColor, iswhite, chaosbolt, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					if iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
					{
					SendEvent, %hab4%
					Sleep, 1000
					PixelGetColor, iswhite, chaosbolt, constanty, RGB
					PixelGetColor, combatwhite, combatx, constanty, RGB
					}
				}
				Else
				PixelGetColor, iswhite, conflagrate, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					while iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
					{
					SendEvent, %hab3%
					Sleep, %gcd%
					PixelGetColor, iswhite, conflagrate, constanty, RGB
					PixelGetColor, combatwhite, combatx, constanty, RGB
					}
				}
			Else
			SendEvent, %hab5%
			Sleep, %gd%
			PixelGetColor, combatwhite, combatx, constanty, RGB
		}
	}
	Else
	Sleep, %gcd%
}