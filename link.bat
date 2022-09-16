@echo off
set /p "source_root=your source root: "

@REM look create link success, but we can't go in?
mklink "%source_root%\\.emacs.d" "%cd%"