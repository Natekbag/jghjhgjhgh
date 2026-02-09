@echo off
mkdir C:\xampp\mysql\data2
xcopy "C:\xampp\mysql\data\ibdata1" "C:\xampp\mysql\data2" /y
robocopy "C:\xampp\mysql\backup" "C:\xampp\mysql\data2" /e /s /xf "ibdata1"
cd C:\xampp\mysql
rmdir /s /q "C:\xampp\mysql\data"
ren "C:\xampp\mysql\data2" "data"
echo Proces zakonczony pomyslnie!
pause>nul
