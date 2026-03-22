# 💻 System Full Info Script — Guide

## What It Does
Collects complete hardware info from your Windows PC and saves it to `System_full_info.txt`.

## Output File
- **Filename:** `System_full_info.txt`
- **Location:** Same folder where you run the `.bat` file

## Sections in the Output File
| Header | Info Collected |
|---|---|
| `===== SYSTEM INFO =====` | OS, hostname, RAM, BIOS, Windows version |
| `===== CPU =====` | Processor name, cores, threads |
| `===== RAM =====` | Capacity, speed, manufacturer |
| `===== STORAGE =====` | Drive model, size, media type |
| `===== MOTHERBOARD =====` | Board manufacturer, product name |
| `===== GPU =====` | Graphics card name |

## Notes
- **MediaType: Fixed** = just means internal drive, NOT that it's permanently soldered
- **RAM Manufacturer as numbers** = JEDEC code, Google it to find your brand name
- **Size in bytes** = divide by `1,073,741,824` to get GB

## Requirements
- Run the `.bat` as **Administrator**
- Windows 10/11 with **PowerShell** (wmic is deprecated in newer Windows)

[📖 View Script ](./info.bat)
