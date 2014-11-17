;~Single target Fury Warrior Rotation
#MaxThreadsPerHotkey 2
$F12:: ;press F12 to activate or desactivate
s := !s
;~you need to set up the hot keys. I have my habilities from 1 to 9 numeric.
Random, gd, 200, 500 ;~ i had this as 200 before and crashed... i may need to make a random here
hab1 := 1 ;~ Pummel
hab2 := 2 ;~ Berserker Rage
hab3 := 3 ;~ Execute
hab4 := 4 ;~ Wild Strike
hab5 := 5 ;~ Raging Blow
hab6 := 6 ;~ Bloodthirst
hab7 := 7 ;~ Dragon Roar
constanty := 5 ;~ set the Y position for your bars
castbarx := 10 ;~ set the X position for mob cast bar
enragex := 25 ;~ x of your enrage white square
suddendeathx := 40 ;~ x of your Sudden Death white square
alotofragex := 55 ;~ x of your >90 rage white square
ragingblowx := 70 ;~ x of your Raging Blow white square
bloodsurgex := 85 ;~ x of your Bloodsurge white square
bloodthirstx := 100 ;~ x of your Bloodthirst out of CD white square
dragonroarx := 115 ;~ x of your Dragon Roar out of CD white square
combatx := 130 ;~ x of your combat /range / target white square
executex := 145
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
			PixelGetColor, iswhite, enragex, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				While, iswhite = 0xFFFFFF
				{
				SendEvent, %hab2%
				Sleep, %gd%
				PixelGetColor, iswhite, enragex, constanty, RGB
				}
			}
			Else
				PixelGetColor, iswhite, suddendeathx, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					While, iswhite = 0xFFFFFF
					{
					SendEvent, %hab3%
					Sleep, %gd%
					PixelGetColor, iswhite, suddendeathx, constanty, RGB
					}
				}
				Else
				PixelGetColor, iswhite, executex, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					While, iswhite = 0xFFFFFF
					{
					SendEvent, %hab3%
					Sleep, %gd%
					PixelGetColor, iswhite, executex, constanty, RGB
					}
				}
				Else
					PixelGetColor, iswhite, alotofragex, constanty, RGB
					if iswhite = 0xFFFFFF
					{
						While, iswhite = 0xFFFFFF
						{
						SendEvent, %hab4%
						Sleep, %gd%
						PixelGetColor, iswhite, alotofragex, constanty, RGB
						}
					}
					Else
						PixelGetColor, iswhite, ragingblowx, constanty, RGB
						if iswhite = 0xFFFFFF
						{
							While, iswhite = 0xFFFFFF
							{
							SendEvent, %hab5%
							Sleep, %gd%
							PixelGetColor, iswhite, ragingblowx, constanty, RGB
							}
						}
						Else
							PixelGetColor, iswhite, bloodsurgex, constanty, RGB
							if iswhite = 0xFFFFFF
							{
								While, iswhite = 0xFFFFFF
								{
								SendEvent, %hab4%
								Sleep, %gd%
								PixelGetColor, iswhite, bloodsurgex, constanty, RGB
								}
							}
							Else
								PixelGetColor, iswhite, bloodthirstx, constanty, RGB
								if iswhite = 0xFFFFFF
								{
									While, iswhite = 0xFFFFFF
									{
									SendEvent, %hab6%
									Sleep, %gd%
									PixelGetColor, iswhite, bloodthirstx, constanty, RGB
									}
								}
								Else
								PixelGetColor, iswhite, dragonroarx, constanty, RGB
								if iswhite = 0xFFFFFF
								{
									While, iswhite = 0xFFFFFF
									{
									SendEvent, %hab7%
									Sleep, %gd%
									PixelGetColor, iswhite, dragonroarx, constanty, RGB
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
