# Script: tong_hop_report.ps1
# Tac gia: "long bình"
# Ngay tao: 28/10/2026


Write-Host "Dang loc log...."


"=== TONG HOP LOG ===" > logs/tong_hop.txt

Gc logs/salon.log | sls "WARNING" | add-content logs/tong_hop.txt
(Gc logs/salon.log | sls "error" | Measure-Object).Count | add-content logs/tong_hop.txt

Write-Host "Hoan thanh!"
