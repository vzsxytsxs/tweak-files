@echo off

cd /d %localappdata%\thorium\application\1* 
del "chrome_wer.dll" >nul 2>&1
del "notification_helper.exe" >nul 2>&1
del "chrome_pwa_launcher.exe" >nul 2>&1
del "d3d*.*" >nul 2>&1
del "vk*.*" >nul 2>&1
del "vulkan*.*" >nul 2>&1
rmdir /s /q "Installer" >nul 2>&1
copy "locales\en-US.pak" "." >nul 2>&1
rmdir /s /q "locales" >nul 2>&1
mkdir "locales" >nul 2>&1
move "en-US.pak" "locales" >nul 2>&1
cls

set removef=GrShaderCache ShaderCache SSLerrorAssistant GraphiteDawnCache
for %%f in (%removef%) do (
    if exist "%localappdata%\Thorium\User Data\%%f" (
        rmdir /s /q "%localappdata%\Thorium\User Data\%%f"
    )
)
set removed=blob_storage BudgetDatabase Cache chrome_cart_db "Code Cache" commerce_subscription_db DawnGraphiteCache DawnWebGPUCache discounts_db GPUCache JumpListIconsMostVisited JumpListIconsRecentClosed parcel_tracking_db PersistentOriginTrials "Session Storage" shared_proto_db VideoDecodeStats
for %%d in (%removed%) do (
    set fullp=%localappdata%\Thorium\User Data\Default\%%d
    if exist "!fullp!" (
        rmdir /s /q "!fullp!"
    )
)
cls

echo done
timeout /t 3 >nul 
exit