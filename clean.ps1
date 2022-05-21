If (Test-Path '.\build32') {
	Remove-Item -Path '.\build32' -Recurse -Force
}
If (Test-Path '.\build64') {
	Remove-Item -Path '.\build64' -Recurse -Force
}
If (Get-ChildItem -Filter 'OBS-Studio-*-Win-x86.zip') {
	Remove-Item -Path (Get-ChildItem -Filter 'OBS-Studio-*-Win-x86.zip') -Force
}
If (Get-ChildItem -Filter 'OBS-Studio-*-Win-x64.zip') {
	Remove-Item -Path (Get-ChildItem -Filter 'OBS-Studio-*-Win-x64.zip') -Force
}
If (Test-Path '.\x86') {
	Remove-Item -Path '.\x86' -Recurse -Force
}
If (Test-Path '.\x64') {
	Remove-Item -Path '.\x64' -Recurse -Force
}
If (Test-Path '.\win-x86-virtualcam.zip') {
	Remove-Item -Path '.\win-x86-virtualcam.zip' -Force
}
If (Test-path '.\win-x64-virtualcam.zip') {
	Remove-Item -Path '.\win-x64-virtualcam.zip' -Force
}