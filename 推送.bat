@echo off
chcp 65001 >nul
echo ===== 推送到 GitHub =====
cd /d "D:\D\报告"

echo.
echo [1/3] 添加更改...
git add .

echo.
echo [2/3] 提交更改...
set /p msg="输入提交信息 (直接回车使用默认): "
if "%msg%"=="" set msg="update: %date% %time%"
git commit -m "%msg%"

echo.
echo [3/3] 推送到远程...
git push origin main

echo.
echo ===== 推送完成 =====
pause
