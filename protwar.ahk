;~Single target Fury Warrior Rotation
#MaxThreadsPerHotkey 2
$F11:: ;press F12 to activate or desactivate
s := !s
;~you need to set up the hot keys. I have my habilities from 1 to 9 numeric.
Random, gd, 400, 800 ;~ i had this as 200 before and crashed... i may need to make a random here
hab1 := 1 ;~ Pummel
hab2 := 2 ;~ Heroic Strike
hab3 := 3 ;~ Shield Slam
hab4 := 4 ;~ Revenge
hab5 := 5 ;~ Execute
hab6 := 6 ;~ Devastate
hab7 := 7 ;~ Shield Block
constanty := 5 ;~ set the Y position for your bars
castbarx := 10 ;~ set the X position for mob cast bar
hsx := 25 ;~ x of your enrage white square
ssx := 40 ;~ x of your Sudden Death white square
revx := 55 ;~ x of your >90 rage white square
exex := 70 ;~ x of your Raging Blow white square
devx := 85 ;~ x of your Bloodsurge white square
sbx := 100
combatx := 115 ;~ x of your Bloodthirst out of CD white square
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
				While, iswhite = 0xFFFFFF
				{
				SendEvent,%hab1%
				Sleep, %gd%
				PixelGetColor, iswhite, castbarx, constanty, RGB
				}
			}
			Else
			PixelGetColor, iswhite, sbx, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				While, iswhite = 0xFFFFFF
				{
				SendEvent, %hab7%
				Sleep, %gd%
				PixelGetColor, iswhite, sbx, constanty, RGB
				}
			}
			Else
				PixelGetColor, iswhite, hsx, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					While, iswhite = 0xFFFFFF
					{
					SendEvent, %hab2%
					Sleep, %gd%
					PixelGetColor, iswhite, hsx, constanty, RGB
					}
				}
			Else
				PixelGetColor, iswhite, ssx, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					while iswhite = 0xFFFFFF
					{
					SendEvent, %hab3%
					Sleep, %gd%
					PixelGetColor, iswhite, ssx, constanty, RGB
					}
				}
			Else
				PixelGetColor, iswhite, revx, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					while iswhite = 0xFFFFFF
					{
					SendEvent, %hab4%
					Sleep, %gd%
					PixelGetColor, iswhite, revx, constanty, RGB
					}
				}
			Else
				PixelGetColor, iswhite, exex, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					While, iswhite = 0xFFFFFF
					{
					SendEvent, %hab5%
					Sleep, %gd%
					PixelGetColor, iswhite, exex, constanty, RGB
					}
				}
			Else
			SendEvent, %hab6%
			Sleep, %gd%
			PixelGetColor, combatwhite, combatx, constanty, RGB
		}
	}
	Else
	Sleep, 500
}