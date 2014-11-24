~Enter::Pause, Toggle, 1
$F9::Pause, On
$F10::Pause, Off
#MaxThreadsPerHotkey 2
$F12:: ;press F12 to activate or desactivate
s := !s
Random, gd, 400, 800 ;~ i had this as 200 before and crashed... i may need to make a random here
Random, gcd, 600, 1200
hab1 := 1 ;~ Pummel
hab2 := 2 ;~ Heroic Strike
hab3 := 3 ;~ Shield Slam51111111
hab4 := 4 ;~ Revenge
hab5 := 5 ;~ Execute
constanty := 5 ;~ set the Y position for your bars
castbarx := 10 ;~ set the X position for mob cast bar
msf := 25 ;~ x of your enrage white square
ssx := 40 ;~ x of your Sudden Death white square
revx := 55 ;~ x of your >90 rage white square
exex := 70 ;~ x of your Raging Blow white square
combatx := 85 ;~ x of your Bloodthirst out of CD white square
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
				Sleep, %gcd%
			}
			Else
			PixelGetColor, iswhite, msf, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				While, iswhite = 0xFFFFFF
				{
				SendEvent, %hab2%
				Sleep, %gd%
				PixelGetColor, iswhite, msf, constanty, RGB
				}
				Sleep, %gcd%
			}
			Else
				PixelGetColor, iswhite, ssx, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					While, iswhite = 0xFFFFFF
					{
					SendEvent, %hab3%
					Sleep, %gd%
					PixelGetColor, iswhite, ssx, constanty, RGB
					}
					Sleep, %gcd%
				}
			Else
				PixelGetColor, iswhite, revx, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					SendEvent, %hab4%
					Sleep, %gcd%
				}
			Else
				PixelGetColor, iswhite, exex, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					SendEvent, %hab5%
					Sleep, %gcd%
				}
		}
	}
	Else
	Sleep, %gcd%
}
Return