del /q x64\release\winfile.exe 
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"
cd C:\Users\IEUser\source\repos\winfile
git checkout -- .
git clean -fd
git fetch
git checkout -B retropc origin/retropc
cd src
msbuild -p:Configuration=Release -t:Rebuild Winfile.vcxproj 

copy x64\release\winfile.exe e:\

pause
