@echo off
echo ===== SYSTEM INFO ===== > laptop_full_info.txt
systeminfo >> "C:\Users\admin\Desktop\laptop_full_info.txt"

echo ===== CPU ===== >> laptop_full_info.txt
powershell -command "Get-CimInstance Win32_Processor | Select-Object Name, NumberOfCores, NumberOfLogicalProcessors | Format-List" >> laptop_full_info.txt

echo ===== RAM ===== >> laptop_full_info.txt
powershell -command "Get-CimInstance Win32_PhysicalMemory | Select-Object Manufacturer, Capacity, Speed | Format-List" >> laptop_full_info.txt

echo ===== STORAGE ===== >> laptop_full_info.txt
powershell -command "Get-CimInstance Win32_DiskDrive | Select-Object Model, Size, MediaType | Format-List" >> laptop_full_info.txt

echo ===== MOTHERBOARD ===== >> laptop_full_info.txt
powershell -command "Get-CimInstance Win32_BaseBoard | Select-Object Manufacturer, Product | Format-List" >> laptop_full_info.txt

echo ===== GPU ===== >> laptop_full_info.txt
powershell -command "Get-CimInstance Win32_VideoController | Select-Object Name | Format-List" >> laptop_full_info.txt

echo DONE! File saved.
pause
