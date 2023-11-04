# Windows Pocket Edition
Windows PE based DOS-like interface
Made with Batch

Note: Still in Alpha stages

JOIN THE KERNEL BROTHERS DISCORD: https://discord.gg/ZPhV9kT3gq


Windows Pocket Edition - Version Alpha 0.0.3 (Build: A8) - Made by The Kernel Brothers

Windows Pocket Edition Standalone - Version Alpha 0.0.3 (Build: A9) - Made by The Kernel Brothers

# How to build your own WPE ISO

1) Download os_wpe.bat from the code
2) Get your Windows Preinstallation Environment ISO
3) Download and install AnyBurn: https://www.anyburn.com/download.php
4) Extract boot.wim from the ISO (In the sources folder)
5) Use 7z or any other archive viewer to open boot.wim
6) Navigate to Windows/System32
7) Drag and drop os_wpe.bat to System32
8) Close the boot.wim
9) Launch AnyBurn and select 'Edit Image File' from the main menu
10) Insert the ISO
11) On the left panel, navigate to Sources
12) Drag and drop the edited boot.wim to the right panel
13) Select Yes to All if it asks to replace files
14) Click Next and follow the steps to complete the ISO

NOTE: Some features (Like custom apps) may not be available.
