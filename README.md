# Windows Pocket Edition
Windows PE based DOS-like interface
Made with Batch

Note: Still in Alpha stages

JOIN THE KERNEL BROTHERS DISCORD: https://discord.gg/ZPhV9kT3gq


Windows Pocket Edition - Version Alpha 0.0.3 (Build: A9) - Made by The Kernel Brothers

Windows Pocket Edition Standalone - Version Alpha 0.0.3 (Build: AA) - Made by The Kernel Brothers

Credits: Tjari

# How to build your own WPE ISO

1) Download startnet.cmd from the code
2) Get your Windows Preinstallation Environment ISO
3) Download and install AnyBurn: https://www.anyburn.com/download.php
4) Extract boot.wim from the ISO (In the sources folder)
5) Use 7z or any other archive viewer to open boot.wim
6) Navigate to Windows/System32
7) Drag and drop startnet.cmd to System32
8) Select Yes to All if it asks to replace files
9) Close the boot.wim
10) Launch AnyBurn and select 'Edit Image File' from the main menu
11) Insert the ISO
12) On the left panel, navigate to Sources
13) Drag and drop the edited boot.wim to the right panel
14) Select Yes to All if it asks to replace files
15) Click Next and follow the steps to complete the ISO

NOTE: Some features (Like custom apps) may not be available at the moment as we are in Alpha.
