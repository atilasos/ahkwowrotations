;~Single target WindWalker Monk Rotation
#MaxThreadsPerHotkey 2
$F12:: ;press F12 to activate or desactivate
s := !s
;~you need to set up the hot keys. I have my habilities from 1 to 9 numeric.
Random, gd, 200, 500 ;~ i had this as 200 before and crashed... i may need to make a random here
hab1 := 1 ;~ Expel Harm
hab2 := 2 ;~ jab
hab3 := 3 ;~ tiger palm
hab4 := 4 ;~ Rising Sun Kick
hab5 := 5 ;~ Fists of Fury
hab6 := 6 ;~ Chi Wave
hab7 := 7 ;~ Blackout Kick
hab8 := 8 ;~ Touch of Death
hab9 := 9 ;~ Tigereye Brew
hab10 := "t" ;~ Energizing Brew
hab11 := "g" ;~ Spear Hand Strike
constanty := 5 ;~ set the Y position for your bars
castbarx := 10 ;~ set the X position for mob cast bar
expelharmx := 25 ;~ x of your enrage white square
jabx := 40 ;~ x of your Sudden Death white square
tigerpowerx := 55 ;~ x of your >90 rage white square
risingsunx := 70 ;~ x of your Raging Blow white square
fistsoffuryx := 85 ;~ x of your Bloodsurge white square
combo1x := 100 ;~ x of your Bloodthirst out of CD white square
combo2x := 115 ;~ x of your Dragon Roar out of CD white square
combatx := 130 ;~ x of your combat /range / target white square
chiwavex := 145
blackoutx := 160
touchofdeathx := 175
energx := 190
While s
{
	PixelGetColor, iswhite, combatx, constanty, RGB
	if iswhite = 0xFFFFFF
	{
		iswhite := 1
		PixelGetColor, iswhite, castbarx, constanty, RGB
		if iswhite = 0xFFFFFF
		{
			SendEvent,%hab11%
			Sleep, %gd%
			iswhite := 1
		}
		Else
		PixelGetColor, iswhite, combo2x, constanty, RGB
		if iswhite = 0xFFFFFF
		{
			SendEvent, %hab9%
			Sleep, %gd%
			iswhite := 1
		}
		Else
		PixelGetColor, iswhite, touchofdeathx, constanty, RGB
		if iswhite = 0xFFFFFF
		{
			SendEvent, %hab8%
			Sleep, %gd%
			iswhite := 1
		}
		Else
		PixelGetColor, iswhite, energx, constanty, RGB
		if iswhite = 0xFFFFFF
		{
			SendEvent, %hab10%
			Sleep, %gd%
			iswhite := 1
		}
		Else
			PixelGetColor, iswhite, expelharmx, constanty, RGB
			if iswhite = 0xFFFFFF
			{
				SendEvent, %hab1%
				Sleep, %gd%
				iswhite := 1
			}
			Else
				PixelGetColor, iswhite, jabx, constanty, RGB
				if iswhite = 0xFFFFFF
				{
					SendEvent, %hab2%
					Sleep, %gd%
					iswhite := 1
				}
				Else
					PixelGetColor, iswhite, tigerpowerx, constanty, RGB
					if iswhite = 0xFFFFFF
					{
						SendEvent, %hab3%
						Sleep, %gd%
						iswhite := 1
					}
					Else
						PixelGetColor, iswhite, risingsunx, constanty, RGB
						if iswhite = 0xFFFFFF
						{
							SendEvent, %hab4%
							Sleep, %gd%
							iswhite := 1
						}
						Else
							PixelGetColor, iswhite, fistsoffuryx, constanty, RGB
							if iswhite = 0xFFFFFF
							{
								while iswhite = 0xFFFFFF
								{
								SendEvent, %hab5%
								Sleep, %gd%
								iswhite := 1
								PixelGetColor, iswhite, fistsoffuryx, constanty, RGB
								}
								iswhite := 1
								Sleep, 3640
							}
							Else
								PixelGetColor, iswhite, combo1x, constanty, RGB
								if iswhite = 0xFFFFFF
								{
									SendEvent, %hab3%
									Sleep, %gd%
									SendEvent, %hab7%
									Sleep, %gd%
									iswhite := 1
								}
								Else
								PixelGetColor, iswhite, chiwavex, constanty, RGB
								if iswhite = 0xFFFFFF
								{
									SendEvent, %hab6%
									Sleep, %gd%
									iswhite := 1
								}
								Else
								PixelGetColor, iswhite, blackoutx, constanty, RGB
								if iswhite = 0xFFFFFF
								{
									SendEvent, %hab7%
									Sleep, %gd%
									iswhite := 1
								}
								Else
									Sleep, %gd%
									iswhite := 1
	}
	Else
		Sleep, %gd%
		iswhite := 1
}
