@ECHO OFF 
TITLE Sua loi khong hien thi shortcut
if not exist "%LOCALAPPDATA%" (
goto XP
)
if not exist "%LOCALAPPDATA%"\iconcache.db (
goto next1
)
DEL /Q /F /A "%LOCALAPPDATA%"\iconcache.db >NUL 2>NUL
:next1
> "%LOCALAPPDATA%"\iconcache.db ECHO.
attrib +r +h +s "%LOCALAPPDATA%"\iconcache.db
goto ketthuc
:XP
if not exist "%APPDATA%"\iconcache.db (
goto next2
)
DEL /Q /F /A "%APPDATA%"\iconcache.db >NUL 2>NUL
:next2
> "%APPDATA%"\iconcache.db ECHO.
attrib +r +h +s "%APPDATA%"\iconcache.db
goto ketthuc
:ketthuc
cls
echo   Da sua xong.
echo   Ban hay khoi dong lai may tinh de thiet lap duoc ap dung.
echo   Nhan phim bat ki de thoat...
pause>NUL