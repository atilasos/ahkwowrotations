;~Single target Fury Warrior Rotation
#MaxThreadsPerHotkey 2
~Enter::Pause, Toggle, 0
$F12:: ;press F12 to activate or desactivate
s := !s
;~you need to set up the hot keys. I have my habilities from 1 to 9 numeric.
Random, gd, 150, 250 ;~ i had this as 200 before and crashed... i may need to make a random here
Random, gcd, 300, 500
hab1 := 1 ;~ Pummel
hab2 := 2 ;~ Heroic Strike
hab3 := 3 ;~ Shield Slam
hab4 := 4 ;~ Revenge
hab5 := 5 ;~ Execute
hab6 := 6 ;~ Devastate
hab7 := 7 ;~ Shield Block
constanty := 5 ;~ set the Y position for your bars
castbarx := 10 ;~ set the X position for mob cast bar
rake := 25 ;~ x of your enrage white square
rip := 40 ;~ x of your >90 rage white square
fbfim := 55 ;~ x of your Raging Blow white square
fbsmp := 70 ;~ x of your Bloodsurge white square
builder := 85
buff := 100
combatx := 115 ;~ x of your Bloodthirst out of CD white square
moonfire := 130

While s
{
	IfWinActive, World of Warcraft
	{
		PixelGetColor, combatwhite, combatx, constanty, RGB
		While, combatwhite = 0xFFFFFF
		{
			PixelGetColor, iswhite, castbarx, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				While, iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
				{
				SendEvent,%hab1%
				Sleep, %gd%
				PixelGetColor, iswhite, castbarx, constanty, RGB
				PixelGetColor, combatwhite, combatx, constanty, RGB
				}
			}
			Else
			PixelGetColor, iswhite, buff, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				While, iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
				{
				SendEvent, %hab5%
				Sleep, %gd%
				PixelGetColor, iswhite, buff, constanty, RGB
				PixelGetColor, combatwhite, combatx, constanty, RGB
				}
			}
			Else
			PixelGetColor, iswhite, rake, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				While, iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
				{
				SendEvent, %hab2%
				Sleep, %gd%
				PixelGetColor, iswhite, rake, constanty, RGB
				PixelGetColor, combatwhite, combatx, constanty, RGB
				}
			}
			Else
				PixelGetColor, iswhite, rip, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					while iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
					{
					SendEvent, %hab4%
					Sleep, %gd%
					PixelGetColor, iswhite, rip, constanty, RGB
					PixelGetColor, combatwhite, combatx, constanty, RGB
					}
				}
				Else
				PixelGetColor, iswhite, moonfire, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					while iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
					{
					SendEvent, %hab7%
					Sleep, %gd%
					PixelGetColor, iswhite, moonfire, constanty, RGB
					PixelGetColor, combatwhite, combatx, constanty, RGB
					}
				}
			Else
				PixelGetColor, iswhite, fbfim, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					while iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
					{
					SendEvent, %hab5%
					Sleep, %gd%
					PixelGetColor, iswhite, fbfim, constanty, RGB
					PixelGetColor, combatwhite, combatx, constanty, RGB
					}
				}
			Else
			PixelGetColor, iswhite, fbsmp, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					While, iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
					{
					SendEvent, %hab5%
					Sleep, %gd%
					PixelGetColor, iswhite, fbsmp, constanty, RGB
					PixelGetColor, combatwhite, combatx, constanty, RGB
					}
				}
			Else
				PixelGetColor, iswhite, builder, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					While, iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
					{
					SendEvent, %hab3%
					Sleep, %gd%
					PixelGetColor, iswhite, builder, constanty, RGB
					PixelGetColor, combatwhite, combatx, constanty, RGB
					}
				}
			Else
			Sleep, %gcd%
			PixelGetColor, combatwhite, combatx, constanty, RGB
		}
	}
	Else
	Sleep, %gcd%
}