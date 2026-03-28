@echo off
echo ========================================
echo   Portfolio - Starting...
echo ========================================
echo.

cd /d "%~dp0"

:: Dependencies install karo (pehli baar)
if not exist node_modules (
    echo Installing dependencies...
    npm install
)

:: Project start karo
start npm run dev

:: Wait karo
timeout /t 6 >nul
:: Browser kholo
start "" "http://localhost:5173"

echo.
echo.
echo Portfolio chal raha hai!
echo Dev server alag window mein chal raha hai.
echo Server band karne ke liye us window ko close karein.
pause