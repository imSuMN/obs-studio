If (Get-ChildItem -Filter 'OBS-Studio-*-Win-x86.zip') {
	Remove-Item -Path (Get-ChildItem -Filter 'OBS-Studio-*-Win-x86.zip')
}
If (Get-ChildItem -Filter 'OBS-Studio-*-Win-x64.zip') {
	Remove-Item -Path (Get-ChildItem -Filter 'OBS-Studio-*-Win-x64.zip')
}
If (Test-Path '.\x86') {
	Remove-Item -Path '.\x86' -Recurse
}
If (Test-Path '.\x64') {
	Remove-Item -Path '.\x64' -Recurse
}
If (Test-Path '.\win-x86-virtualcam.zip') {
	Remove-Item -Path '.\win-x86-virtualcam.zip'
}
If (Test-path '.\win-x64-virtualcam.zip') {
	Remove-Item -Path '.\win-x64-virtualcam.zip'
}