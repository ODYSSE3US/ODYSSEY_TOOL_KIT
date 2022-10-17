@echo on
timeout /t 10
netsh interface set interface "ADAPTER_NAME_HERE" DISABLED
timeout /t 10
netsh interface set interface "ADAPTER_NAME_HERE" ENABLED