;~Single target Fury Warrior Rotation
#MaxThreadsPerHotkey 2
$F12:: ;press F12 to activate or desactivate
s := !s
;~you need to set up the hot keys. I have my habilities from 1 to 9 numeric.
Random, gd, 150, 400 ;~ i had this as 200 before and crashed... i may need to make a random here
hab1 := 1 ;~ Pummel
hab2 := 2 ;~ Berserker Rage
hab3 := 3 ;~ Execute
hab4 := 4 ;~ Wild Strike
hab5 := 5 ;~ Raging Blow
hab6 := 6 ;~ Bloodthirst
hab7 := 7 ;~ Dragon Roar
hab8 := 8
constanty := 5 ;~ set the Y position for your bars
hab1x := 10 ;~ set the X position for mob cast bar
hab2x := 25 ;~ x of your enrage white square
hab3x := 40 ;~ x of your Sudden Death white square
hab4x := 55 ;~ x of your >90 rage white square
hab5x := 70 ;~ x of your Raging Blow white square
hab6x := 85 ;~ x of your Bloodsurge white square
hab7x := 100 ;~ x of your Bloodthirst out of CD white square
hab8x := 115 ;~ x of your Dragon Roar out of CD white square
combatx := 130 ;~ x of your combat /range / target white square
While s
{
	IfWinActive, World of Warcraft
	{
	PixelGetColor, iswhite, combatx, constanty, RGB
	if iswhite = 0xFFFFFF
	{
		iswhite := 1
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
			PixelGetColor, iswhite, hab2x, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				While, iswhite = 0xFFFFFF
				{
				SendEvent, %hab2%
				Sleep, %gd%
				PixelGetColor, iswhite, hab2x, constanty, RGB
				}
			}
			Else
				PixelGetColor, iswhite, hab3x, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					While, iswhite = 0xFFFFFF
					{
					SendEvent, %hab3%
					Sleep, %gd%
					PixelGetColor, iswhite, hab3x, constanty, RGB
					}
				}
				Else
				PixelGetColor, iswhite, hab4x, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					While, iswhite = 0xFFFFFF
					{
					SendEvent, %hab4%
					Sleep, %gd%
					PixelGetColor, iswhite, hab4x, constanty, RGB
					}
				}
				Else
					PixelGetColor, iswhite, hab5x, constanty, RGB
					if iswhite = 0xFFFFFF
					{
						While, iswhite = 0xFFFFFF
						{
						SendEvent, %hab5%
						Sleep, %gd%
						PixelGetColor, iswhite, hab5x, constanty, RGB
						}
					}
					Else
						PixelGetColor, iswhite, hab6x, constanty, RGB
						if iswhite = 0xFFFFFF
						{
							While, iswhite = 0xFFFFFF
							{
							SendEvent, %hab6%
							Sleep, %gd%
							PixelGetColor, iswhite, hab6x, constanty, RGB
							}
						}
						Else
							PixelGetColor, iswhite, hab7x, constanty, RGB
							if iswhite = 0xFFFFFF
							{
								While, iswhite = 0xFFFFFF
								{
								SendEvent, %hab7%
								Sleep, %gd%
								PixelGetColor, iswhite, hab7x, constanty, RGB
								}
							}
							Else
								PixelGetColor, iswhite, hab8x, constanty, RGB
								if iswhite = 0xFFFFFF
								{
									While, iswhite = 0xFFFFFF
									{
									SendEvent, %hab8%
									Sleep, %gd%
									PixelGetColor, iswhite, hab8x, constanty, RGB
									}
								}
								Else
								Sleep, 500
								iswhite := 1
	}
	}
	Else
	Sleep, 500
}
