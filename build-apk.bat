@echo off
setlocal
cd /d "%~dp0"
where gradle >nul 2>nul
if errorlevel 1 (
  echo Gradle was not found. Open this folder in Android Studio and use Build ^> Build APK(s).
  pause
  exit /b 1
)
gradle assembleDebug
if errorlevel 1 exit /b 1
echo APK: app\build\outputs\apk\debug\app-debug.apk
pause