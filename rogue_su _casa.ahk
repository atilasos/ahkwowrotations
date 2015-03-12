#MaxThreadsPerHotkey 2
~Enter::Pause, Toggle, 0
$F12:: 
s := !s
Random, gd, 150, 250 
Random, gcd, 200, 500
hab1 := 1
hab2 := 2 
hab3 := 3 
hab4 := 4 
hab5 := 5 
hab6 := 6
hab7 := 7
constanty := 5 
castbarx := 10 
hemorrhage := 27 
backstab := 45
sliceanddice := 60 
rupture := 77
eviscerate := 95
buffs := 110
combatx := 128
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
				if iswhite != 0xFFFFFF
				{
					Sleep %gcd%
				}
				PixelGetColor, combatwhite, combatx, constanty, RGB
				}
			}
		Else
			PixelGetColor, iswhite, sliceanddice, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				While, iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
				{
				SendEvent,%hab4%
				Sleep, %gd%
				PixelGetColor, iswhite, sliceanddice, constanty, RGB
				if iswhite != 0xFFFFFF
				{
					Sleep %gcd%
				}
				PixelGetColor, combatwhite, combatx, constanty, RGB
				}
			}
		Else
			PixelGetColor, iswhite, rupture, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				While, iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
				{
				SendEvent,%hab5%
				Sleep, %gd%
				PixelGetColor, iswhite, rupture, constanty, RGB
				if iswhite != 0xFFFFFF
				{
					Sleep %gcd%
				}
				PixelGetColor, combatwhite, combatx, constanty, RGB
				}
			}
		Else
			PixelGetColor, iswhite, eviscerate, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				While, iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
				{
				SendEvent,%hab6%
				Sleep, %gd%
				PixelGetColor, iswhite, eviscerate, constanty, RGB
				if iswhite != 0xFFFFFF
				{
					Sleep %gcd%
				}
				PixelGetColor, combatwhite, combatx, constanty, RGB
				}
			}
		Else
			PixelGetColor, iswhite, hemorrhage, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				While, iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
				{
				SendEvent,%hab2%
				Sleep, %gd%
				PixelGetColor, iswhite, hemorrhage, constanty, RGB
				if iswhite != 0xFFFFFF
				{
					Sleep %gcd%
				}
				PixelGetColor, combatwhite, combatx, constanty, RGB
				}
			}
		Else
			PixelGetColor, iswhite, backstab, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				While, iswhite = 0xFFFFFF And combatwhite = 0xFFFFFF
				{
				SendEvent,%hab3%
				Sleep,%gd%
				SendEvent,%hab2%
				PixelGetColor, iswhite, backstab, constanty, RGB
				if iswhite != 0xFFFFFF
				{
					Sleep %gcd%
				}
				PixelGetColor, combatwhite, combatx, constanty, RGB
				}
			}
		Else
		Sleep, %gd%
		PixelGetColor, combatwhite, combatx, constanty, RGB
		}
	Sleep, %gcd%
	}
	Else
	Sleep, %gcd%
}