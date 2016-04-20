@echo off
slmgr /rearm
timeout 5
slmgr –rearm
echo and so on...
timeout 5
slmgr.vbs –rearm
timeout 5
sysprep /generalize
timeout 5
rundll32 slc.dll,SLReArmWindows
timeout 5
start reg.reg