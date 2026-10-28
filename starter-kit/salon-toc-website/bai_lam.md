# BÀI LÀM – HACKATHON 01

- **Mã đề:** 20

- **Họ tên:** Mai Đình Long Bình

- **Lớp:** CNTT2

- **Link repository:**

- **Hệ điều hành (Windows/macOS):** Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell

# Ghi lần lượt các lệnh đã chạy, mỗi lệnh một dòng
B1 : pwd
B2 : ls -recurse -force 
B3 : mv .\logo_salon_toc.png media
     mv .\lich_lam_viec.txt docs
B4 : cp media/logo_salon_toc.png backup
B5 : rm *.tmp    
B6 : gc logs
     ls
     cd ..
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text

 Directory: C:\Users\ThinkPad\Downloads\starter-kit\salon-toc-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/28/2026   1:33 PM                backup
d-----        10/28/2026   1:44 PM                data
d-----        10/28/2026   1:33 PM                docs
d-----        10/28/2026   1:44 PM                logs
d-----        10/28/2026   1:33 PM                media
------        10/27/2026   1:32 AM             67 .env
-a----        10/27/2026   1:32 AM           2230 bai_lam.md
-a----        10/27/2026   1:32 AM             62 lich_lam_viec.txt
-a----        10/27/2026   1:32 AM           6113 logo_salon_toc.png
------        10/27/2026   1:32 AM             22 temp_289.tmp
-a-h--        10/28/2026   1:40 PM            162 ~$ai_lam.md


    Directory: C:\Users\ThinkPad\Downloads\starter-kit\salon-toc-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6103 hoa_don_salon_thang_11.xlsx


    Directory: C:\Users\ThinkPad\Downloads\starter-kit\salon-toc-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           1032 salon.log


```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell

Gc logs/salon.log | sls "error" | add-content logs/daily_report.txt


```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text

026-11-28 09:53:35 [ERROR] Khong tim thay trang /kieu-toc-moi (404)
2026-11-28 09:57:35 [ERROR] Khong tim thay trang /kieu-toc-moi (404)


```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án

- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*

- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu

- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án

- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành

- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell

./auto_report.ps1

```

### Kết quả hiển thị

```
=== BAO CAO LOI ===
2026-11-28 09:53:35 [ERROR] Khong tim thay trang /kieu-toc-moi (404)
2026-11-28 09:57:35 [ERROR] Khong tim thay trang /kieu-toc-moi (404)
2026-11-28 10:13:35 [ERROR] Dat lich that bai
2026-11-28 10:33:35 [ERROR] Dat lich that bai
2026-11-28 10:37:35 [ERROR] Thanh toan bi tu choi


```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
(Gc logs/salon.log | sls "error" | Measure-Object).Count


```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text

5

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell

em không chạy lệnh mà tạo một file script_tong_hop_report.ps1

# Script: tong_hop_report.ps1
# Tac gia: "long bình"
# Ngay tao: 28/10/2026


Write-Host "Dang loc log...."


"=== TONG HOP LOG ===" > logs/tong_hop.txt

Gc logs/salon.log | sls "WARNING" | add-content logs/tong_hop.txt
(Gc logs/salon.log | sls "error" | Measure-Object).Count | add-content logs/tong_hop.txt

Write-Host "Hoan thanh!"


```

### Nội dung file logs/tong_hop.txt

```text

=== TONG HOP LOG ===
2026-11-28 09:33:35 [WARNING] Anh kieu toc dung luong lon
2026-11-28 09:37:35 [WARNING] Lich toi thu sau sap kin
2026-11-28 10:01:35 [WARNING] Anh kieu toc dung luong lon
2026-11-28 10:09:35 [WARNING] Thoi gian phan hoi cham
5


```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/hoa_don_salon_thang_11.xlsx`, không cần ghi vào đây.
