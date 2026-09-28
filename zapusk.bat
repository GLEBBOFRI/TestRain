@echo off
title TestRail Clone Server Starter

echo.
echo Щас будет происходить всякая хрень не пугайся
start "Java Server" cmd /k "java -jar TestRainServ-1.0-SNAPSHOT.jar

timeout /t 5 > nul

echo.
start "Web Server" cmd /k "python -m http.server 8000"

timeout /t 2 > nul

echo.
echo Почти все
start http://localhost:8000/index.html

echo.
echo =========================================================
echo.
echo ПРОЕКТ ЗАПУЩЕН!
echo Чтобы остановить серверы, закрой два черных окна с непонятными белыми буковками
echo.
pause
exit