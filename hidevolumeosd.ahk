#Requires AutoHotkey v2.0

nircmdPath := "C:\Program Files\nircmd-x64\nircmd.exe"

Volume_Up:: {
	muted := SoundGetMute()
	if muted
		Run(nircmdPath . ' mutesysvolume 0')		; Unmute
	Run(nircmdPath . ' changesysvolume 2500')		; Increase volume by 2500 units (~2.5%)
	return
}

Volume_Down:: {
	muted := SoundGetMute()
	if muted
		Run(nircmdPath . ' mutesysvolume 0')		; Unmute
	Run(nircmdPath . ' changesysvolume -2500')		; Decrease volume by 2500 units (~2.5%)
	return
}

Volume_Mute:: {
	Run(nircmdPath . " mutesysvolume 2")			; Toggle mute
	return
}