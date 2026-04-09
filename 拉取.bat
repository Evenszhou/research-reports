@echo off
chcp 65001 >nul
echo ===== 从 GitHub 拉取 =====
cd /d "D:\D\报告"

echo.
echo 拉取远程更新...
git pull origin main

echo.
echo ===== 拉取完成 =====
pause
