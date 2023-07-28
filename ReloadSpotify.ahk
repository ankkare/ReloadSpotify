#Requires AutoHotkey v2.0


!t:: 
{
	spotify_id := WinExist("ahk_exe Spotify.exe")
	WinClose "ahk_id " spotify_id
	Run "Spotify.exe", "C:\Users\IRO008\AppData\Roaming\Spotify"
	WinWait "ahk_exe Spotify.exe"
	spotify_id := WinExist("ahk_exe Spotify.exe")
	Sleep 3000
	;ControlFocus Chrome_RenderWidgetHostHWND1, "ahk_id " spotify_id
	Send "{Media_play_pause}"
}