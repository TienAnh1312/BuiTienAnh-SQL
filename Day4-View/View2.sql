CREATE DATABASE QLSINHVIEN1
go
USE [QLSINHVIEN1]
GO
/****** Object:  Table [dbo].[Ketqua]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ketqua](
	[MaSV] [nvarchar](3) NOT NULL,
	[MaMH] [nvarchar](2) NOT NULL,
	[Diem] [real] NULL,
 CONSTRAINT [Prk_MaSV_MAMH] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKH] [nvarchar](2) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
 CONSTRAINT [Prk_KHOA_khoa] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [nvarchar](2) NOT NULL,
	[TenMH] [nvarchar](50) NOT NULL,
	[Sotiet] [tinyint] NULL,
 CONSTRAINT [Prk_MONHOC_MaMH] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nvarchar](3) NOT NULL,
	[HoSV] [nvarchar](15) NOT NULL,
	[TenSV] [nvarchar](7) NOT NULL,
	[Phai] [bit] NOT NULL,
	[NgaySinh] [smalldatetime] NOT NULL,
	[NoiSinh] [nvarchar](100) NOT NULL,
	[MaKH] [nvarchar](2) NOT NULL,
	[HocBong] [float] NULL,
	[DiemTrungBinh] [float] NULL,
 CONSTRAINT [Prk_SINHVIEN_MaSV] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'03', 5)

INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'05', 3.9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'01', 4.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'03', 7)


INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'08', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'01', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'02', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'03', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'04', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'08', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'01', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'04', 4)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'04', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'08', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'03', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'04', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'05', 5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'06', 6)
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'AV', N'Anh Văn')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'DT', N'Điện tử')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'KT', N'Kế toán')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TH', N'Tin học')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TR', N'Triết')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'01', N'Cơ sở dữ liệu', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'02', N'Trí tuệ nhân tạo', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'03', N'Toán rời rạc ứng dụng', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'04', N'Đồ họa ứng dụng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'05', N'Tiếng Anh cơ bản', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'06', N'Tin học văn phòng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'07', N'Pháp luật đại cương', 30)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'08', N'Anh chuyên Ngành', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'09', N'PTTK Hệ thống', 60)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A01', N'Nguyễn Thị', N'Vân', 0, CAST(N'1986-02-23T00:00:00' AS SmallDateTime), N'Hà Giang', N'KT', 130000, 5.1800000190734865)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A02', N'Trần Văn', N'Chính', 0, CAST(N'1994-12-20T00:00:00' AS SmallDateTime), N'Bình Định', N'TH', 150000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A03', N'Lê Thu Bạch', N'Yến', 1, CAST(N'1993-02-21T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A04', N'Trần Anh', N'Tuấn', 0, CAST(N'1987-12-20T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A10', N'Trần Thị', N'Mai', 1, CAST(N'1994-10-04T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A11', N'Nguyễn Thành', N'Nam', 0, CAST(N'2000-01-01T00:00:00' AS SmallDateTime), N'Cà Mau', N'AV', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A12', N'Nguyễn Quang', N'Quyền', 0, CAST(N'2001-01-01T00:00:00' AS SmallDateTime), N'Đồng Nai', N'DT', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B01', N'Hoàng Thanh', N'Mai', 1, CAST(N'1992-08-12T00:00:00' AS SmallDateTime), N'Hải Phòng', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B02', N'Trần Thị Thu', N'Thủy', 1, CAST(N'1990-01-02T00:00:00' AS SmallDateTime), N'Tp. HCM', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B03', N'Đố Văn', N'Lâm', 0, CAST(N'1994-02-26T00:00:00' AS SmallDateTime), N'Bình Định', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B04', N'Bùi Kim', N'Dung', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hµ Néi', N'TH', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C01', N'Hà Quang', N'Anh', 0, CAST(N'1985-03-11T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C03', N'Lê Quang', N'Lưu', 0, CAST(N'1985-02-23T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T03', N'Hoàng Thị Hải', N'Yến', 1, CAST(N'1989-09-10T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T06', N'Nguyễn Văn', N'Thắng', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 1500000, NULL)
ALTER TABLE [dbo].[SinhVien] ADD  CONSTRAINT [Def_SINHVIEN_HocBong]  DEFAULT ((0)) FOR [HocBong]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Makh] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Makh]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Mamh] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Mamh]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [Frk_SINHVIEN_Makh] FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khoa] ([MaKH])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [Frk_SINHVIEN_Makh]
GO
--View--
--1--
--Liệt kê các sinh viên có học bổng lớn hơn 100k và sinh ở tpHcm
--gồm các thông tin họ tên, mã khoa, nơi sinh, học bổng --
Create View SinhVien_HocBong_TPHCM as
Select HoSV as [Họ], TenSV as [Tên], MaKH as [Mã khoa], NoiSinh as [Nơi sinh], HocBong as [Học bổng]
from SinhVien
Where HocBong > 100000 And NoiSinh = 'Tp. HCM'
go

--2--
--Danh sách các sinh viên khoa anh văn và khoa triết gồm các thông tin: mã sinh viên, mã khia, phái
Create View DanhSachSinhVienAnhVanTriet as
Select MaSV as [Mã sinh viên], MaKH as [Mã khoa], Phai as [Phái] from SinhVien
Where MaKH In ('AV', 'TR');
go

--3--
--Sinh viên có ngày sinh từ 01/01/1986 đến 05/06/1992--
CREATE VIEW V_SinhVien_NgaySinh
AS
SELECT MaSV as [Mã sinh viên], NgaySinh as [Ngày sinh], NoiSinh as [Nơi sinh], HocBong as [Học bổng]
FROM SinhVien
WHERE NgaySinh BETWEEN '1986-01-01' AND '1992-06-05';
GO
--4--
-- Sinh viên có học bổng từ 200,000 đến 800,000--
CREATE VIEW V_SinhVien_HocBong
AS
SELECT MaSV as [Mã sinh viên], NgaySinh as [Ngày sinh], Phai as [Phái], MaKH as [Mã khoa]
FROM SinhVien
WHERE HocBong BETWEEN 200000 AND 800000;
GO

--5--
--Môn học có số tiết lớn hơn 40 và nhỏ hơn 60
CREATE VIEW V_MonHoc_SoTiet
AS
SELECT MaMH as [Mã môn học], TenMH as [Tên môn học], Sotiet as [Số tiết]
FROM MonHoc
WHERE Sotiet > 40 AND Sotiet < 60;
GO

--6--
-- Sinh viên nam của khoa Anh Văn
CREATE VIEW SinhVien_Nam_AnhVan
AS
SELECT MaSV , CONCAT(HoSV, ' ', TenSV) AS HoTen, Phai
FROM SinhVien
WHERE Phai = 1 AND MaKH = 'AV'; --Phai = 1 -> sai -> Phai = 0 = Sv Nam
GO

--7--
-- Sinh viên có nơi sinh ở Hà Nội và ngày sinh sau 01/01/1990
CREATE VIEW SinhVien_HaNoi_NgaySinh
AS
SELECT HoSV as [Họ sinh viên], TenSV as [Tên sinh viên], NoiSinh as [Nơi sinh], NgaySinh as [Ngày sinh]
FROM SinhVien
WHERE NoiSinh = N'Hà Nội' AND NgaySinh > '1990-01-01';
GO

-- 8: Sinh viên nữ có tên chứa chữ "N"
CREATE VIEW SinhVien_Nu_TenN
AS
SELECT MaSV as [Mã sinh viên], HoSV as [Họ sinh viên], TenSV as [Tên sinh viên], Phai as [Phái]
FROM SinhVien
WHERE Phai = 1 AND TenSV LIKE '%N%';
GO

-- 9: Nam sinh viên khoa Tin Học có ngày sinh sau 30/05/1986
CREATE VIEW SinhVien_Nam_TinHoc
AS
SELECT MaSV as [Mã sinh viên], HoSV as [Họ sinh viên], TenSV as [Tên sinh viên], Phai as [Phái], NgaySinh as [Ngày sinh]
FROM SinhVien
WHERE Phai = 0 AND MaKH = 'TH' AND NgaySinh > '1986-05-30';
GO

-- 10: Danh sách sinh viên với giới tính hiển thị Nam/Nữ
CREATE VIEW SinhVien_GioiTinh
AS
SELECT CONCAT(HoSV, ' ', TenSV) AS HoTen, 
       CASE WHEN Phai = 0 THEN N'Nam' ELSE N'Nữ' END AS GioiTinh, 
       NgaySinh
FROM SinhVien;
GO

-- 11: Danh sách sinh viên với tuổi (năm hiện hành - năm sinh)
CREATE VIEW SinhVien_Tuoi
AS
SELECT MaSV AS [Mã sinh viên], 
       YEAR(GETDATE()) - YEAR(NgaySinh) AS [Tuổi], 
       NoiSinh AS [Nơi sinh], 
       MaKH AS [Mã khoa]
FROM SinhVien;
GO

-- 12: Sinh viên có tuổi từ 20 đến 30
CREATE VIEW SinhVien_Tuoi_Khoa
AS
SELECT CONCAT(HoSV, ' ', TenSV) AS [Họ Tên sinh viên], 
       YEAR(GETDATE()) - YEAR(NgaySinh) AS [Tuổi], 
       TenKH AS [Tên khoa]
FROM SinhVien
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE YEAR(GETDATE()) - YEAR(NgaySinh) BETWEEN 20 AND 30;
GO

-- 13: Thông tin mức học bổng của sinh viên
CREATE VIEW SinhVien_HocBong_Thongtin
AS
SELECT MaSV, 
       CASE WHEN Phai = 0 THEN N'Nam' ELSE N'Nữ' END AS Phai, 
       MaKH, 
       CASE WHEN HocBong > 500000 THEN N'Học bổng cao' ELSE N'Mức trung bình' END AS [Mức học bổng]
FROM SinhVien;
GO

-- 14: Danh sách sinh viên của khoa Anh văn với điều kiện lọc theo tên khoa
CREATE VIEW SinhVien_AnhVan
AS
SELECT CONCAT(HoSV, ' ', TenSV) AS [Họ tên sinh viên], 
       CASE WHEN Phai = 0 THEN N'Nam' ELSE N'Nữ' END AS [Giới tính], 
       TenKH AS [Tên khoa]
FROM SinhVien
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE TenKH = N'Anh Văn';
GO

-- 15: Bảng điểm sinh viên khoa Tin Học
CREATE VIEW BangDiem_TinHoc
AS
SELECT TenKH, 
       CONCAT(SinhVien.HoSV, ' ', SinhVien.TenSV) AS [Họ tên sinh viên], 
       MonHoc.TenMH AS [Tên môn học], 
       MonHoc.Sotiet AS [Số tiết], 
       Ketqua.Diem AS [Điểm]
FROM SinhVien
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
WHERE TenKH = N'Tin học';
GO

-- 16: Kết quả học tập của sinh viên với phân loại kết quả, Giỏi nếu Điểm thi > 8, từ 6 > 8 -> khá, < 6 -> trung bình
CREATE VIEW KetQua_HocTap
AS
SELECT CONCAT(SinhVien.HoSV, ' ', SinhVien.TenSV) AS [Họ tên sinh viên], 
       MaKH AS [Mã khoa], 
       MonHoc.TenMH AS [Tên môn học], 
       Ketqua.Diem AS [Điểm thi], 
       CASE 
           WHEN Ketqua.Diem > 8 THEN N'Giỏi' 
           WHEN Ketqua.Diem >= 6 THEN N'Khá' 
           ELSE N'Trung Bình' 
       END AS Loai
FROM SinhVien
JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH;
GO

-- 17: Học bổng cao nhất của từng khoa
CREATE VIEW HocBong_CaoNhat_TungKhoa
AS
SELECT Khoa.MaKH AS [Mã khoa], 
       TenKH AS [Tên khoa], 
       MAX(HocBong) AS [Học bổng cao nhất]
FROM SinhVien
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
GROUP BY Khoa.MaKH, TenKH;
GO

-- 18: Thống kê số sinh viên học từng môn
CREATE VIEW SoSinhVien_HocTungMon
AS
SELECT MonHoc.MaMH AS [Mã môn học], 
       MonHoc.TenMH AS [Tên môn học], 
       COUNT(Ketqua.MaSV) AS [Số sinh viên đang học]
FROM Ketqua
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
GROUP BY MonHoc.MaMH, MonHoc.TenMH;
GO

-- 19: Môn có điểm cao nhất gồm thông tin: Tên môn, Số tiết, Tên sinh viên, Điểm
CREATE VIEW Mon_DiemCaoNhat AS
SELECT MonHoc.TenMH AS [Tên môn học], 
       MonHoc.Sotiet AS [Số tiết], 
       CONCAT(SinhVien.HoSV, ' ', SinhVien.TenSV) AS [Tên sinh viên], 
       Ketqua.Diem AS [Điểm]
FROM MonHoc
JOIN Ketqua ON MonHoc.MaMH = Ketqua.MaMH
JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
WHERE Ketqua.Diem = (SELECT MAX(Diem) FROM Ketqua WHERE MaMH = MonHoc.MaMH);
GO

-- 20:  Khoa có đông sinh viên nhất, gồm Mã khoa, Tên khoa, Tổng số sinh viên
CREATE VIEW Khoa_DongSinhVienNhat AS
SELECT TOP 1 Khoa.MaKH AS [Mã khoa], 
            Khoa.TenKH AS [Tên khoa], 
            COUNT(SinhVien.MaSV) AS [Tổng số sinh viên]
FROM Khoa
JOIN SinhVien ON Khoa.MaKH = SinhVien.MaKH
GROUP BY Khoa.MaKH, Khoa.TenKH
ORDER BY [Tổng số sinh viên] DESC;
GO


-- 21: Khoa có sinh viên lãnh học bổng cao nhất, gồm các thông tin: Tên khoa, Họ tên sinh viên, Học bổng
CREATE VIEW Khoa_HocBongCaoNhat AS
SELECT Khoa.TenKH AS [Tên khoa], 
       CONCAT(SinhVien.HoSV, ' ', SinhVien.TenSV) AS [Họ tên sinh viên], 
       SinhVien.HocBong AS [Học bổng]
FROM SinhVien
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE SinhVien.HocBong = (SELECT MAX(HocBong) FROM SinhVien);
GO


-- 22: Sinh viên của khoa Tin học có học bổng cao nhất, gồm các thông tin: Mã sinh viên, Họ sinh viên, Tên sinh viên, Tên khoa, Học bổng
CREATE VIEW SinhVien_KhoaTinHoc_HocBongCaoNhat AS
SELECT SinhVien.MaSV AS [Mã sinh viên], 
       SinhVien.HoSV AS [Họ sinh viên], 
       SinhVien.TenSV AS [Tên sinh viên], 
       Khoa.TenKH AS [Tên khoa], 
       SinhVien.HocBong AS [Học bổng]
FROM SinhVien
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE Khoa.TenKH = N'Tin học' 
  AND SinhVien.HocBong = (SELECT MAX(HocBong) FROM SinhVien WHERE MaKH = Khoa.MaKH);
GO


-- 23. Sinh viên có điểm môn Cơ sở dữ liệu lớn nhất, gồm thông tin: Họ sinh viên, Tên môn, Điểm
CREATE VIEW SinhVien_DiemCSDL_CaoNhat AS
SELECT SinhVien.HoSV AS [Họ sinh viên], 
       MonHoc.TenMH AS [Tên môn học], 
       Ketqua.Diem AS [Điểm]
FROM Ketqua
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
WHERE MonHoc.TenMH = N'Cơ sở dữ liệu' 
  AND Ketqua.Diem = (SELECT MAX(Diem) FROM Ketqua WHERE MaMH = MonHoc.MaMH);
GO


-- 24. Ba sinh viên có điểm thi môn Đồ họa thấp nhất, gồm các thông tin: Họ tên sinh viên, Tên khoa, Tên môn, Điểm
CREATE VIEW BaSinhVien_DiemDoHoa_ThapNhat AS
SELECT TOP 3 CONCAT(SinhVien.HoSV, ' ', SinhVien.TenSV) AS [Họ tên sinh viên], 
             Khoa.TenKH AS [Tên khoa], 
             MonHoc.TenMH AS [Tên môn học], 
             Ketqua.Diem AS [Điểm]
FROM Ketqua
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE MonHoc.TenMH = N'Đồ họa ứng dụng'
ORDER BY Ketqua.Diem ASC;
GO


-- 25. Khoa có nhiều sinh viên nữ nhất, gồm các thông tin: Mã khoa, Tên khoa
CREATE VIEW KhoaSinhVienNuNhat AS
SELECT Khoa.MaKH AS [Mã khoa], 
       Khoa.TenKH AS [Tên khoa], 
       COUNT(SinhVien.MaSV) AS [Số sinh viên nữ]
FROM Khoa
JOIN SinhVien ON Khoa.MaKH = SinhVien.MaKH
WHERE SinhVien.Phai = 1 
GROUP BY Khoa.MaKH, Khoa.TenKH;
GO

-- Lấy khoa có số sinh viên nữ nhiều nhất
SELECT TOP 1 *
FROM KhoaSinhVienNuNhat
ORDER BY [Số sinh viên nữ] DESC;
GO

-- 26. Thống kê sinh viên theo khoa, gồm các thông tin: Mã khoa, Tên khoa, Tổng số sinh viên, Tổng số sinh viên nữ
CREATE VIEW ThongKe_SinhVien_TungKhoa AS
SELECT Khoa.MaKH AS [Mã khoa], 
       Khoa.TenKH AS [Tên khoa], 
       COUNT(SinhVien.MaSV) AS [Tổng số sinh viên], 
       SUM(CASE WHEN SinhVien.Phai = 1 THEN 1 ELSE 0 END) AS [Tổng số sinh viên nữ]
FROM Khoa
JOIN SinhVien ON Khoa.MaKH = SinhVien.MaKH
GROUP BY Khoa.MaKH, Khoa.TenKH;
GO

-- 27 Kết quả học tập của sinh viên, gồm Họ tên sinh viên, Tên khoa, Kết quả. Kết quả sẽ là Đậu nếu không có môn nào có điểm nhỏ hơn 4
CREATE VIEW KetQua_HocTap_SinhVien AS
SELECT 
    CONCAT(SinhVien.HoSV, ' ', SinhVien.TenSV) AS [Họ tên sinh viên], 
    MaKH AS [Mã khoa], 
    CASE 
        WHEN MIN(Ketqua.Diem) >= 4 THEN N'Đậu'
        ELSE N'Rớt'
    END AS KETQUA
FROM SinhVien
JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
GROUP BY 
    SinhVien.HoSV, SinhVien.TenSV, MaKH;
GO

-- 29. Danh sách những môn không có điểm thi nhỏ hơn 4, gồm các thông tin: Mã môn, Tên môn
CREATE VIEW MonHoc_KhongDiemDuoi4 AS
SELECT MonHoc.MaMH AS [Mã môn], 
       MonHoc.TenMH AS [Tên môn]
FROM MonHoc
WHERE NOT EXISTS 
    (SELECT 1 
     FROM Ketqua 
     WHERE Ketqua.MaMH = MonHoc.MaMH 
     AND Ketqua.Diem < 4);
GO

-- 30. Những khoa không có sinh viên rớt, sinh viên rớt nếu điểm thi của môn nhỏ hơn 5, gồm các thông tin: Mã khoa, Tên khoa
CREATE VIEW Khoa_KhongCoSinhVienRot AS
SELECT Khoa.MaKH AS [Mã khoa], 
       Khoa.TenKH AS [Tên khoa]
FROM Khoa
WHERE NOT EXISTS 
    (SELECT 1 
     FROM SinhVien
     JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
     WHERE SinhVien.MaKH = Khoa.MaKH 
     AND Ketqua.Diem < 5);
GO

-- 31: Thống kê số sinh viên đậu và số sinh viên rớt của từng môn
CREATE VIEW ThongKeSinhVien_DauRot AS
SELECT 
    mh.MaMH AS [Mã môn], 
    mh.TenMH AS [Tên môn], 
    COUNT(CASE WHEN kq.Diem >= 5 THEN 1 END) AS [Số sinh viên đậu],
    COUNT(CASE WHEN kq.Diem < 5 THEN 1 END) AS [Số sinh viên rớt]
FROM MonHoc mh
JOIN Ketqua kq ON mh.MaMH = kq.MaMH
GROUP BY mh.MaMH, mh.TenMH;
GO

-- 32: Cho biết môn nào không có sinh viên rớt, gồm có: Mã môn, Tên môn
CREATE VIEW MonKhongCoSinhVienRot AS
SELECT 
    mh.MaMH AS [Mã môn], 
    mh.TenMH AS [Tên môn]
FROM MonHoc mh
WHERE mh.MaMH NOT IN (
    SELECT DISTINCT kq.MaMH
    FROM Ketqua kq
    WHERE kq.Diem < 5
);
GO

-- 33: Danh sách sinh viên không có môn nào rớt, thông tin gồm: Mã sinh viên, Họ tên, Mã khoa
CREATE VIEW V_SinhVienKhongCoMonRot AS
SELECT 
    sv.MaSV AS [Mã sinh viên], 
    sv.HoSV + ' ' + sv.TenSV AS [Họ tên], 
    sv.MaKH AS [Mã khoa]
FROM SinhVien sv
WHERE NOT EXISTS (
    SELECT 1
    FROM Ketqua kq
    WHERE kq.MaSV = sv.MaSV AND kq.Diem < 5
);
GO

-- 34. Danh sách các sinh viên rớt trên 2 môn, gồm Mã sinh viên, Họ sinh viên, Tên sinh viên, Mã khoa
CREATE VIEW SinhVienRot_TrenHaiMon AS
SELECT 
    sv.MaSV AS [Mã sinh viên], 
    sv.HoSV + ' ' + sv.TenSV AS [Họ tên], 
    sv.MaKH AS [Mã khoa]
FROM SinhVien sv
JOIN Ketqua kq ON sv.MaSV = kq.MaSV
WHERE kq.Diem < 5
GROUP BY sv.MaSV, sv.HoSV, sv.TenSV, sv.MaKH
HAVING COUNT(kq.MaMH) > 2;
Go

--35. Cho biết danh sách những khoa có nhiều hơn 10 sinh viên, gồm Mã khoa, Tên khoa, Tổng số sinh viên của khoa
CREATE VIEW KhoaCoNhieuHon10SinhVien AS
SELECT 
    k.MaKH AS [Mã khoa], 
    k.TenKH AS [Tên khoa], 
    COUNT(sv.MaSV) AS [Tổng số sinh viên]
FROM Khoa k
JOIN SinhVien sv ON k.MaKH = sv.MaKH
GROUP BY k.MaKH, k.TenKH
HAVING COUNT(sv.MaSV) > 10;
GO

-- 36. Danh sách những sinh viên thi nhiều hơn 4 môn, gồm có Mã sinh viên, Họ tên sinh viên, Số môn thi
CREATE VIEW V_SinhVienThiNhieuHon4Mon AS
SELECT 
    sv.MaSV AS [Mã sinh viên], 
    sv.HoSV + ' ' + sv.TenSV AS [Họ tên sinh viên], 
    COUNT(kq.MaMH) AS [Số môn thi]
FROM SinhVien sv
JOIN Ketqua kq ON sv.MaSV = kq.MaSV
GROUP BY sv.MaSV, sv.HoSV, sv.TenSV
HAVING COUNT(kq.MaMH) > 4;
GO

-- 37. Cho biết khoa có 5 sinh viên nam trở lên, thông tin gồm có: Mã khoa, Tên khoa, Tổng số sinh viên nam
CREATE VIEW KhoaCo5SinhVienNam_TroLen AS
SELECT 
    k.MaKH AS [Mã khoa], 
    k.TenKH AS [Tên khoa], 
    COUNT(sv.MaSV) AS [Tổng số sinh viên nam]
FROM Khoa k
JOIN SinhVien sv ON k.MaKH = sv.MaKH
WHERE sv.Phai = 0
GROUP BY k.MaKH, k.TenKH
HAVING COUNT(sv.MaSV) >= 5;
GO

-- 38. Danh sách những sinh viên có trung bình điểm thi lớn hơn 4, gồm các thông tin sau: Họ tên sinh viên, Tên khoa, Phái, Điểm trung bình các môn
CREATE VIEW SinhVien_DiemTrungBinh_LonHon4 AS
SELECT 
    sv.HoSV + ' ' + sv.TenSV AS [Họ tên sinh viên], 
    k.TenKH AS [Tên khoa], 
    sv.Phai AS [Phái], 
    AVG(kq.Diem) AS [Điểm trung bình các môn]
FROM SinhVien sv
JOIN Ketqua kq ON sv.MaSV = kq.MaSV
JOIN Khoa k ON sv.MaKH = k.MaKH
GROUP BY sv.MaSV, sv.HoSV, sv.TenSV, k.TenKH, sv.Phai
HAVING AVG(kq.Diem) > 4;
GO

-- 39. Cho biết trung bình điểm thi của từng môn, chỉ lấy môn nào có trung bình điểm thi lớn hơn 6, thông tin gồm có: Mã môn, Tên môn, Trung bình điểm
CREATE VIEW V_MonCoDiemTrungBinhLonHon6 AS
SELECT 
    mh.MaMH AS [Mã môn], 
    mh.TenMH AS [Tên môn], 
    AVG(kq.Diem) AS [Trung bình điểm]
FROM MonHoc mh
JOIN Ketqua kq ON mh.MaMH = kq.MaMH
GROUP BY mh.MaMH, mh.TenMH
HAVING AVG(kq.Diem) > 6;
GO