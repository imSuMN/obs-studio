${env:DEPS_VERSION_WIN} = '2022-03-16'
${env:VLC_VERSION_WIN} = '3.0.0-git'
${env:CEF_BUILD_VERSION_WIN} = '4638'
${env:CMAKE_GENERATOR} = 'Visual Studio 17 2022'
${env:VIRTUALCAM-GUID} = '1B4706D6-9902-454A-8345-32F305BCFD28'
./CI/build-windows.ps1 -BuildArch x86 -Package
./CI/build-windows.ps1 -BuildArch x64 -Package
Expand-Archive -Path (Get-ChildItem -Filter 'OBS-Studio-*-Win-x86.zip') -DestinationPath x86 -Force
Expand-Archive -Path (Get-ChildItem -Filter 'OBS-Studio-*-Win-x64.zip') -DestinationPath x64 -Force
Copy-Item -Path '.\x86\data\obs-plugins\win-dshow\obs-virtualcam-module32.dll' -Destination '.\x64\data\obs-plugins\win-dshow'
If (Test-Path '.\x86\data\obs-plugins\win-dshow\obs-virtualcam-module32.pdb') {
	Copy-Item -Path '.\x86\data\obs-plugins\win-dshow\obs-virtualcam-module32.pdb' -Destination '.\x64\data\obs-plugins\win-dshow'
}
Copy-Item -Path '.\x64\data\obs-plugins\win-dshow\obs-virtualcam-module64.dll' -Destination '.\x86\data\obs-plugins\win-dshow'
If (Test-Path '.\x64\data\obs-plugins\win-dshow\obs-virtualcam-module64.pdb') {
	Copy-Item -Path '.\x64\data\obs-plugins\win-dshow\obs-virtualcam-module64.pdb' -Destination '.\x86\data\obs-plugins\win-dshow'
}
Compress-Archive -Path 'x86\*' -DestinationPath 'win-x86-virtualcam.zip'
Compress-Archive -Path 'x64\*' -DestinationPath 'win-x64-virtualcam.zip'
Remove-Item -Path x86 -Recurse
Remove-Item -Path x64 -Recurse
Remove-Item -Path (Get-ChildItem -Filter 'OBS-Studio-*-Win-x86.zip')
Remove-Item -Path (Get-ChildItem -Filter 'OBS-Studio-*-Win-x64.zip')
