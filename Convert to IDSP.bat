@echo off
cd /d "%~dp0"
vgmstream -l 1 -f 0 -L -o "%~n1.wav" "%~1"
move "%~n1.wav" "."
vgaudio "%~n1.wav" "%~n1.idsp"
del "%~n1.wav"