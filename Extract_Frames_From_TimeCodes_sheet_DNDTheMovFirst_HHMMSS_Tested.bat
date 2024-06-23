@echo off

setlocal enabledelayedexpansion


set /p timecode_file="Please drag and drop the timecodes file .txt and press ENTER: 

mkdir %~n1 
set count=1
for /f "tokens=*" %%a in (%timecode_file%) do (


set timecode=%%a


"L:\Netflix\_TOOLS\DubCardGen\_BETA\DubbingCredit_1.9.37\ffmpeg.exe" -ss !timecode! -i %~1 -vframes 1 %~n1/%~n1_!count!.png
set /a count+=1

)


pause