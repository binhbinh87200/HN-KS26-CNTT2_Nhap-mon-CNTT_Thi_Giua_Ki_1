# Script: auto_report.ps1
# Tac gia: "long bình"
# Ngay tao: 28/10/2026


Write-Host "Dang loc log...."


"=== BAO CAO LOI ===" > logs/daily_report.txt

Gc logs/salon.log | sls "error" | add-content logs/daily_report.txt


Write-Host "Hoan thanh!"

