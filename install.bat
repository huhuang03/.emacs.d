@REM TODO: add admin request
powershell -Command "New-Item -Path '%USERPROFILE%\AppData\Roaming\.emacs.d' -ItemType SymbolicLink -Target %cd%"