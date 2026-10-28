# Dự án phát triển website salon tóc
**mục đích** : *báo cáo* ngắn gọn về các lỗi `error` , `warning`, và lọc giá tiền, dịch vụ của quán salon
Tên dịch vụ | Số lượt | Giá dịch vụ
|--| --|--|
Hap dau phuc hoi | 5 | 200000
Uon toc | 4 | 600000
Cat toc nu | 4 | 150000


``` 
Để chạy scripts lọc log : 
`./auto_report.ps1` 
Nếu bị chặn quyền hãy nhập :
`Set-ExcutionPolicy -Scope Process -ExecutionPolicy Bypass`
rồi chạy lại ./auto_report.ps1

```

- [x] : Lọc cái lỗi  `error` và `warning` trong file `salon.log`
- [x] : Lọc dịch vụ tóc trong file excel hoa_don_salon_thang_11.xlsx

> **Lưu ý** : Không up load file .env lên link github khi nộp bài 




