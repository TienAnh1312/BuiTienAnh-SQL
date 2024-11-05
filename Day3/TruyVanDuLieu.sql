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

--1--
select MaMH,TenMH,Sotiet from dbo.MonHoc
go

--2--
select MaSv,HoSV,TenSV,HocBong from dbo.SinhVien
go

--3--
select MaSV,TenSV,Phai,NgaySinh from dbo.SinhVien
go

--4--
select HoSV,TenSV,NgaySinh, HocBong from dbo.SinhVien
order by NgaySinh ASC, HocBong desc
go

--5--
select MaMH,TenMH,Sotiet from dbo.MonHoc
where TenMH LIKE 'T%'
go

--6--
select HoSV,TenSV,NgaySinh,Phai from dbo.SinhVien
go

--7--
select MaKH,TenKH from dbo.Khoa
where TenKH LIKE '_N%'
go

--8--
select * from dbo.SinhVien
where HoSV LiKE '%Th%'
go

--9--
select MaSV,HoSV,TenSV,Phai,HocBong from dbo.SinhVien
where TenSV LIKE '[a-m]%'
go

--10--
select HoSV,TenSV,NgaySinh,NoiSinh,HocBong from dbo.SinhVien
where TenSV LIKE '%[a-m]%'
order by HoSV, TenSV
go

--11--
select MaSV,HoSV,TenSV,NgaySinh,SinhVien.MaKH from dbo.SinhVien
where MaKH = 'AV'
go

--12--
select MaSV,HoSV,TenSV,NgaySinh from dbo.SinhVien
go

--13--
select MaSV,HoSV,TenSv,MaKH,HocBong from SinhVien
where HocBong > 500000
order by MaKH desc
go

--14--
select HoSV,TenSV,MakH,HocBong from SinhVien
where NgaySinh = '1987-12-20'
go

--15--
select HoSv,TenSV,NgaySinh,NoiSinh,HocBong from SinhVien
where NgaySinh > '1977-12-20'
order by NgaySinh desc
go

--16--
select HoSV,TenSV,MaKH,NoiSinh,HocBong from SinhVien
where HocBong > 100000 and NoiSinh = 'Tp. HCM'
go

--17--
select MaSV,MakH,Phai from SinhVien
where MaKH = 'AV' or MAKH = 'TH'
go

--18--
select * from SinhVien
where NgaySinh > '1986-01-01' and NgaySinh < '1992-06-05'
go

--19--
select MaSV,NgaySinh,Phai,MaKH from SinhVien
where HocBong > 100000 and HocBong < 800000
go

--20--
select MaMH as 'Mã môn học', TenMH as 'Tên môn Học', Sotiet as 'Số tiết' from MonHoc
where Sotiet > 40 and Sotiet < 60
go

--21--
select MaSV as 'Mã Sinh viên', HoSV as 'Họ', TenSV as 'Tên', Phai as 'Phái' from SinhVien
where Phai = 'False' and MaKH = 'AV'
go

--22--
select HoSV as 'Họ', TenSV as 'Tên', NoiSinh as 'Nơi sinh', NgaySinh as 'Ngày sinh' from SinhVien
where NoiSinh Like '%Hà%' and NgaySinh > '1990-01-01'
go

--23--
select * from SinhVien
where Phai = 1 and TenSV like '%n%'
go

--24--
select * from SinhVien
where Phai = 0 and MaKH = 'TH' and NgaySinh > '1990-01-01'
go

--25-- 
select HoSV as 'Họ', TenSV as N'Tên',
[Giới tính] = Case	
			When Phai = 1 Then N'Nữ'
			When Phai = 0 Then N'Nam'
		END
,NgaySinh as 'Ngày sinh' from SinhVien
go

--26--
select MaSV as 'Mã sinh viên', [Tuổi] = YEAR(GETDATE()) - YEAR(NgaySinh), NoiSinh as 'Nơi sinh', TenKH as 'Tên Khoa'
from dbo.SinhVien join dbo.Khoa on Khoa.MaKH = SinhVien.MaKH
go

--27--
select HoSV as 'Họ', TenSV as 'Tên', [Tuổi] = YEAR(GETDATE()) - YEAR(NgaySinh), HocBong as 'Học Bổng'
from SinhVien
where YEAR(GETDATE()) - YEAR(NgaySinh) > 30
go

--28--
select HoSV as 'Họ', TenSV as 'Tên', [Tuổi] = YEAR(GETDATE()) - YEAR(NgaySinh), TenKH as 'Tên Khoa'
from SinhVien join Khoa on khoa.MaKH = SinhVien.MaKH
where YEAR(GETDATE()) - YEAR(NgaySinh) Between 20 and 30
go


--Phần II--
--1--
select HoSV as 'Họ', TenSV as 'Tên',
	[Giới tính] = case
				when Phai = 1 then N'Nữ'
				when Phai = 0 then N'Nam'
	End,
[Tuổi] = YEAR(GETDATE()) - YEAR(NgaySinh)
from SinhVien 
order by YEAR(GETDATE()) - YEAR(NgaySinh) desc
go

--2--
select HoSV as 'Họ', TenSV as 'Tên',
	[Phái] = case
				when Phai = 1 then N'Nữ'
				when Phai = 0 then N'Nam'
	End,
DAY(NgaySinh)
from SinhVien 
where MONTH(NgaySinh) = 2 AND YEAR(NgaySinh) = 1994
go

--3--
select * from SinhVien
order by NgaySinh desc
go

--4--
select MaSV as 'Mã sinh viên'
,Phai as 'Phái',
MaKH as 'Mã khoa',
[Mức học bổng] = case when HocBong > 500000 then N'Học bổng cao'
					else N'Mức trung bình'
					end
from SinhVien
go

--5--
select HoSV as 'Họ', 
	   TenSV as 'Tên',
	   MonHoc.MaMH as 'Mã môn học',
	   Diem as 'Điểm'
from SinhVien join Ketqua on Ketqua.MaSV = SinhVien.MaSV 
			  join MonHoc on MonHoc.MaMH = Ketqua.MaMH
order by Họ, Tên, MonHoc.MaMH
go

--6--
select HoSV as 'Họ', 
	   TenSV as 'Tên',
[Giới tính] = case	
				when Phai = 1 then N'Nữ'
				when Phai = 0 then N'Nam'
			  end
,TenKH as 'Tên Khoa'
from SinhVien join Khoa on Khoa.MaKH = SinhVien.MaKH
where Khoa.MaKH = 'AV'
go

--7--
select TenKH as 'Tên Khoa', 
	   HoSV as 'Họ', 
	   TenSV as 'Tên', 
	   TenMH as 'Tên môn học', 
	   Sotiet as 'Số tiết', 
	   Diem as 'Điểm' 
from SinhVien join Khoa on khoa.MaKH = SinhVien.MaKH 
			  join Ketqua on Ketqua.MaSV = SinhVien.MaSV 
			  join MonHoc on MonHoc.MaMH = Ketqua.MaMH
where Khoa.MaKH = 'TH'
go

--8-- 
select HoSV as 'Họ', 
	   TenSV as 'Tên',
	   MaKH as 'Mã khoa', 
	   TenMH as 'Tên môn học', 
	   Diem as 'Điểm' ,
[Loại] = case when Diem > 8 then N'Giỏi'
			when Diem between 6 and 8 then N'Khá'
			when Diem < 6 then N'Trung bình'
		 end
from SinhVien join Ketqua on Ketqua.MaSV = SinhVien.MaSV 
			  join MonHoc on MonHoc.MaMH = Ketqua.MaMH
go

--b3: tính toán thống kê dữ liệu--
--1--
select MonHoc.MaMH as N'Mã môn',
	   TenMH as N'Tên môn',
	   AVG(Diem) as N'Trung bình điểm môn'
from SinhVien join Ketqua on Ketqua.MaSV = SinhVien.MaSV
			  join MonHoc on MonHoc.MaMH = Ketqua.MaMH
group by MonHoc.MaMH,TenMH,Diem
go


--2--
select HoSV as 'Họ',
	   TenSV as 'Tên',
	   TenKH as 'Tên Khoa',
[Tổng môn thi] = COUNT(Ketqua.MaMH)
from SinhVien join Ketqua on Ketqua.MaSV = SinhVien.MaSV 
			  join MonHoc on MonHoc.MaMH = Ketqua.MaMH
			  join Khoa on Khoa.MaKH = SinhVien.MaKH
group by HoSV, TenSV, TenKH
go

--3--
select TenSV as 'Tên',
	   TenKH as 'Tên Khoa',
	   Phai as 'Phái',
[Tổng điểm thi] = coalesce(SUM(Diem),0)
from SinhVien join Khoa on Khoa.MaKH = SinhVien.MaKH
			  join Ketqua on Ketqua.MaSV = SinhVien.MaSV
group by TenSV, TenKH, Phai
go

--4--
select TenKH as 'Tên Khoa',
[Tổng số sinh viên] = COUNT(MaSV)
from Khoa join SinhVien on SinhVien.MaKH = Khoa.MaKH
group by TenKH
go

--5--
select HoSV as 'Họ',
	   TenSV as 'Tên',
[Điểm] = MAX(Diem) 
from SinhVien join Ketqua on Ketqua.MaSV = SinhVien.MaSV
group by HoSV, TenSV
go

--6--
select TenMH, Sotiet from MonHoc where Sotiet = (Select MAX(Sotiet)from MonHoc)
go

--7--
select Khoa.MaKH as 'Mã khoa',
	   TenKH as 'Tên khoa',
	   MAX(HocBong) as 'Học bổng cao nhất'
from SinhVien join Khoa on Khoa.MaKH = SinhVien.MaKH
group by Khoa.MaKH, TenKH
go

--8--
select TenMH as 'Tên môn',
	   MAX(Diem) as 'Điểm cao nhất'
from MonHoc join Ketqua on Ketqua.MaMH = MonHoc.MaMH
group by TenMH
go

--9--
select Ketqua.MaMH as 'Mã môn',
	   TenMH as 'Tên môn',
	   COUNT(SinhVien.MaSV) as 'số sinh viê đang học'
from MonHoc join Ketqua on Ketqua.MaMH = MonHoc.MaMH
			join SinhVien on SinhVien.MaSV = Ketqua.MaSV
group by Ketqua.MaMH, TenMH
go

--10--
select top 1 TenMH as 'Tên môn',
			 Sotiet as 'số tiết',
			 TenSV as 'tên sinh viên',
			 Diem as 'Điểm'
from MonHoc join Ketqua on Ketqua.MaMH = MonHoc.MaMH
			join SinhVien on SinhVien.MaSV = Ketqua.MaSV
order by Diem desc
go

--11--
SELECT TOP 1 
    Khoa.MaKH, 
    Khoa.TenKH AS TenKhoa, 
    COUNT(SinhVien.MaSV) AS TongSoSinhVien
FROM 
    SinhVien
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
GROUP BY 
    Khoa.MaKH, Khoa.TenKH
ORDER BY 
    TongSoSinhVien DESC;

--12--
SELECT TOP 1 
    Khoa.TenKH AS TenKhoa, 
    CONCAT(SinhVien.HoSV, ' ', SinhVien.TenSV) AS HoTen, 
    SinhVien.HocBong
FROM 
    SinhVien
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
ORDER BY 
    SinhVien.HocBong DESC;

--13--
SELECT TOP 1 
    SinhVien.MaSV, 
    SinhVien.HoSV, 
    SinhVien.TenSV, 
    Khoa.TenKH AS TenKhoa, 
    SinhVien.HocBong
FROM 
    SinhVien
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE 
    Khoa.MaKH = 'TH'
ORDER BY 
    SinhVien.HocBong DESC;

--14--
SELECT TOP 1 
    SinhVien.HoSV, 
    SinhVien.TenSV, 
    MonHoc.TenMH, 
    Ketqua.Diem
FROM 
    SinhVien
JOIN 
    Ketqua ON SinhVien.MaSV = Ketqua.MaSV
JOIN 
    MonHoc ON Ketqua.MaMH = MonHoc.MaMH
WHERE 
    MonHoc.MaMH = '01' --MaMH01: Môn cơ sở dữ liệu--
ORDER BY 
    Ketqua.Diem ASC;

--15--
SELECT TOP 3 
    SinhVien.HoSV, 
    SinhVien.TenSV, 
    Khoa.TenKH AS TenKhoa, 
    MonHoc.TenMH, 
    Ketqua.Diem
FROM 
    SinhVien
JOIN 
    Ketqua ON SinhVien.MaSV = Ketqua.MaSV
JOIN 
    MonHoc ON Ketqua.MaMH = MonHoc.MaMH
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE 
    MonHoc.MaMH = '04'
ORDER BY 
    Ketqua.Diem ASC;

--16--
SELECT TOP 1 
    Khoa.MaKH, 
    Khoa.TenKH AS TenKhoa, 
    COUNT(SinhVien.MaSV) AS TongSoSinhVienNu
FROM 
    SinhVien
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE 
    SinhVien.Phai = 0 -- 0 là nữ
GROUP BY 
    Khoa.MaKH, Khoa.TenKH
ORDER BY 
    TongSoSinhVienNu DESC;

--17--
SELECT 
    Khoa.MaKH, 
    Khoa.TenKH AS TenKhoa, 
    COUNT(SinhVien.MaSV) AS TongSoSinhVien,
    SUM(CASE WHEN SinhVien.Phai = 0 THEN 1 ELSE 0 END) AS TongSoSinhVienNu
FROM 
    SinhVien
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
GROUP BY 
    Khoa.MaKH, Khoa.TenKH;

--18--
SELECT 
    CONCAT(SinhVien.HoSV, ' ', SinhVien.TenSV) AS HoTen, 
    Khoa.TenKH AS TenKhoa, 
    CASE 
        WHEN NOT EXISTS (
            SELECT 1 
            FROM Ketqua 
            WHERE Ketqua.MaSV = SinhVien.MaSV AND Ketqua.Diem < 4
        ) THEN 'Đậu'
        ELSE 'Rớt'
    END AS KetQua
FROM 
    SinhVien
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH;

--19--
SELECT 
    CONCAT(SinhVien.HoSV, ' ', SinhVien.TenSV) AS HoTen, 
    Khoa.TenKH AS TenKhoa, 
    SinhVien.Phai
FROM 
    SinhVien
JOIN 
    Ketqua ON SinhVien.MaSV = Ketqua.MaSV
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
GROUP BY 
    SinhVien.MaSV, SinhVien.HoSV, SinhVien.TenSV, Khoa.TenKH, SinhVien.Phai
HAVING 
    MIN(Ketqua.Diem) >= 4;

--20--
SELECT 
    MonHoc.MaMH, 
    MonHoc.TenMH
FROM 
    MonHoc
JOIN 
    Ketqua ON MonHoc.MaMH = Ketqua.MaMH
GROUP BY 
    MonHoc.MaMH, MonHoc.TenMH
HAVING 
    MIN(Ketqua.Diem) >= 4;

--21--
SELECT 
    DISTINCT Khoa.MaKH, 
    Khoa.TenKH
FROM 
    Khoa
LEFT JOIN 
    SinhVien ON Khoa.MaKH = SinhVien.MaKH
LEFT JOIN 
    Ketqua ON SinhVien.MaSV = Ketqua.MaSV
GROUP BY 
    Khoa.MaKH, Khoa.TenKH
HAVING 
    MIN(ISNULL(Ketqua.Diem, 5)) >= 4;

--22--
SELECT 
    MonHoc.MaMH, 
    MonHoc.TenMH, 
    SUM(CASE WHEN Ketqua.Diem >= 5 THEN 1 ELSE 0 END) AS SoSinhVienDau, 
    SUM(CASE WHEN Ketqua.Diem < 5 THEN 1 ELSE 0 END) AS SoSinhVienRot
FROM 
    MonHoc
JOIN 
    Ketqua ON MonHoc.MaMH = Ketqua.MaMH
GROUP BY 
    MonHoc.MaMH, MonHoc.TenMH;

--23--
SELECT 
    MonHoc.MaMH, 
    MonHoc.TenMH
FROM 
    MonHoc
JOIN 
    Ketqua ON MonHoc.MaMH = Ketqua.MaMH
GROUP BY 
    MonHoc.MaMH, MonHoc.TenMH
HAVING 
    MIN(Ketqua.Diem) >= 4;

--24--
SELECT 
    SinhVien.MaSV, 
    CONCAT(SinhVien.HoSV, ' ', SinhVien.TenSV) AS HoTen, 
    Khoa.TenKH AS TenKhoa
FROM 
    SinhVien
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE 
    SinhVien.MaSV NOT IN (
        SELECT 
            MaSV
        FROM 
            Ketqua
        WHERE 
            Diem < 4
    );

--25--
SELECT 
    SinhVien.MaSV, 
    SinhVien.HoSV, 
    SinhVien.TenSV, 
    SinhVien.MaKH
FROM 
    SinhVien
JOIN 
    Ketqua ON SinhVien.MaSV = Ketqua.MaSV
WHERE 
    Ketqua.Diem < 4
GROUP BY 
    SinhVien.MaSV, SinhVien.HoSV, SinhVien.TenSV, SinhVien.MaKH
HAVING 
    COUNT(Ketqua.MaMH) > 2;

--26-- errol
SELECT 
    Khoa.MaKH, 
    Khoa.TenKH, 
    COUNT(SinhVien.MaSV) AS TongSoSinhVien
FROM 
    Khoa
JOIN 
    SinhVien ON Khoa.MaKH = SinhVien.MaKH
GROUP BY 
    Khoa.MaKH, Khoa.TenKH
HAVING 
    COUNT(SinhVien.MaSV) > 10;

--27--
SELECT 
    SinhVien.MaSV, 
    CONCAT(SinhVien.HoSV, ' ', SinhVien.TenSV) AS HoTenSinhVien,
    COUNT(Ketqua.MaMH) AS SoMonThi
FROM 
    SinhVien
JOIN 
    Ketqua ON SinhVien.MaSV = Ketqua.MaSV
GROUP BY 
    SinhVien.MaSV, SinhVien.HoSV, SinhVien.TenSV
HAVING 
    COUNT(Ketqua.MaMH) > 4;

--28-- errol
SELECT 
    Khoa.MaKH, 
    Khoa.TenKH, 
    COUNT(SinhVien.MaSV) AS TongSoSinhVienNam
FROM 
    Khoa
JOIN 
    SinhVien ON Khoa.MaKH = SinhVien.MaKH
WHERE 
    SinhVien.Phai = 1 
GROUP BY 
    Khoa.MaKH, Khoa.TenKH
HAVING 
    COUNT(SinhVien.MaSV) >= 5;

--29--
SELECT 
    CONCAT(SinhVien.HoSV, ' ', SinhVien.TenSV) AS HoTenSinhVien,
    Khoa.TenKH AS TenKhoa,
    CASE 
        WHEN SinhVien.Phai = 1 THEN 'Nam' 
        ELSE 'Nữ' 
    END AS Phai,
    AVG(Ketqua.Diem) AS DiemTrungBinh
FROM 
    SinhVien
JOIN 
    Ketqua ON SinhVien.MaSV = Ketqua.MaSV
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
GROUP BY 
    SinhVien.HoSV, SinhVien.TenSV, Khoa.TenKH, SinhVien.Phai
HAVING 
    AVG(Ketqua.Diem) > 4;

--30--
SELECT 
    MonHoc.MaMH, 
    MonHoc.TenMH, 
    AVG(Ketqua.Diem) AS TrungBinhDiem
FROM 
    MonHoc
JOIN 
    Ketqua ON MonHoc.MaMH = Ketqua.MaMH
GROUP BY 
    MonHoc.MaMH, MonHoc.TenMH
HAVING 
    AVG(Ketqua.Diem) > 6;

--b4: sử dụng tham số trong truy vấn --
--1--
DECLARE @MaKH NVARCHAR(2) = 'TH'; -- Nhập mã khoa

SELECT 
    SV.MaSV,
    SV.HoSV,
    SV.TenSV,
    CASE WHEN SV.Phai = 0 THEN N'Nữ' ELSE N'Nam' END AS GioiTinh,
    K.TenKH AS TenKhoa
FROM 
    SinhVien SV
JOIN 
    Khoa K ON SV.MaKH = K.MaKH
WHERE 
    SV.MaKH = @MaKH;

--2--
DECLARE @DiemThreshold REAL = 5; -- Nhập giá trị điểm 

SELECT 
    SV.MaSV,
    SV.HoSV,
    SV.TenSV,
    MH.TenMH,
    KQ.Diem
FROM 
    Ketqua KQ
JOIN 
    SinhVien SV ON KQ.MaSV = SV.MaSV
JOIN 
    MonHoc MH ON KQ.MaMH = MH.MaMH
WHERE 
    MH.TenMH = N'Cơ sở dữ liệu'
    AND KQ.Diem > @DiemThreshold;

--3--
DECLARE @TenMH NVARCHAR(50) = N'Cơ sở dữ liệu'; -- Nhập tên môn 

SELECT 
    SV.MaSV,
    K.TenKH AS TenKhoa,
    MH.TenMH AS TenMon,
    KQ.Diem
FROM 
    Ketqua KQ
JOIN 
    SinhVien SV ON KQ.MaSV = SV.MaSV
JOIN 
    MonHoc MH ON KQ.MaMH = MH.MaMH
JOIN 
    Khoa K ON SV.MaKH = K.MaKH
WHERE 
    MH.TenMH = @TenMH;

--b5: Truy vấn con--
--1--
SELECT MaSV, MaKH, Phai 
FROM SinhVien 
WHERE MaSV NOT IN (SELECT DISTINCT MaSV FROM KetQua);

--2--
SELECT MaSV, HoSV, TenSV, MaKH
FROM SinhVien
WHERE MaSV NOT IN (SELECT MaSV FROM Ketqua WHERE MaMH = '01'); -- Assuming '01' is for 'Cơ sở dữ liệu'

--3--
SELECT MaMH, TenMH, Sotiet
FROM MonHoc
WHERE MaMH NOT IN (SELECT DISTINCT MaMH FROM Ketqua);

--4-- check
SELECT MaKH, TenKH
FROM Khoa
WHERE MaKH NOT IN (SELECT DISTINCT MaKH FROM SinhVien);

--5--
SELECT MaSV, HoSV, TenSV
FROM SinhVien
WHERE MaKH = 'AV' AND MaSV NOT IN (SELECT MaSV FROM Ketqua WHERE MaMH = '01');

--6--
SELECT MaMH, TenMH
FROM MonHoc
WHERE MaMH NOT IN (SELECT DISTINCT MaMH FROM Ketqua WHERE MaSV IN (SELECT MaSV FROM SinhVien WHERE MaKH = 'LY'));

--7--
SELECT k.MaSV, s.HoSV, s.TenSV, k.Diem
FROM Ketqua k
JOIN SinhVien s ON k.MaSV = s.MaSV
WHERE k.MaMH = '04' AND k.Diem < 
    (SELECT MIN(k2.Diem) FROM Ketqua k2
     JOIN SinhVien s2 ON k2.MaSV = s2.MaSV
     WHERE k2.MaMH = '04' AND s2.MaKH = 'TH');

--8--
SELECT MaSV, HoSV, TenSV, NgaySinh
FROM SinhVien
WHERE MaKH = 'AV' AND NgaySinh > (SELECT MIN(NgaySinh) FROM SinhVien WHERE MaKH = 'AV');

--9--
SELECT MaSV, HoSV, TenSV, HocBong
FROM SinhVien
WHERE HocBong < (SELECT SUM(HocBong) FROM SinhVien WHERE MaKH = 'TR');

--10--
--11--
SELECT k.MaSV, s.HoSV, s.TenSV, m.TenMH, k.Diem
FROM Ketqua k
JOIN SinhVien s ON k.MaSV = s.MaSV
JOIN MonHoc m ON k.MaMH = m.MaMH
WHERE k.Diem = (
    SELECT MAX(k2.Diem)
    FROM Ketqua k2
    WHERE k2.MaMH = k.MaMH
);

--12--
SELECT s.MaSV, s.HoSV, s.TenSV, k.TenKH, s.HocBong
FROM SinhVien s
JOIN Khoa k ON s.MaKH = k.MaKH
WHERE s.HocBong = (
    SELECT MAX(sv.HocBong)
    FROM SinhVien sv
    WHERE sv.MaKH = s.MaKH
);

--b6: Thêm dữ liệu vào cơ sở dữ liệu--
--1--
INSERT INTO SinhVien (MaSV, HoSV, TenSV, Phai, NgaySinh, NoiSinh, MaKH, HocBong)
VALUES (N'C07', N'Lê Thành', N'Nguyễn', 0, '1980-10-20', N'Thành phố Hồ Chí Minh', N'TH', 850000);

--2--
INSERT INTO MonHoc (MaMH, TenMH, Sotiet)
VALUES (N'10', N'Xử lý ảnh', 45);

--3--
INSERT INTO Khoa (MaKH, TenKH)
VALUES (N'CT', N'Công trình');

--4--
INSERT INTO SinhVien (MaSV, HoSV, TenSV, Phai, NgaySinh, NoiSinh, MaKH, HocBong)
VALUES (N'C02', N'Nguyễn Trần', N'Quân', 0, '2000-01-01', N'Huế', N'CT', 950000);

--5--
INSERT INTO KetQua (MaSV, MaMH, Diem)
SELECT MaSV, N'06', 7
FROM SinhVien
WHERE MaKH = N'TH';  -- 'TH' là mã khoa Tin học

--6--
INSERT INTO KetQua (MaSV, MaMH, Diem)
SELECT N'C02', MaMH, 8
FROM MonHoc;

--b7: Xóa thông tin trong cơ sở dữ liệu--
--1--
CREATE TABLE DeleteTable (
    MaSV NVARCHAR(10),
    HoTen NVARCHAR(50),
    Phai NVARCHAR(10),
    NgaySinh DATE,
    NoiSinh NVARCHAR(50),
    TenKhoa NVARCHAR(50),
    HocBong FLOAT
);

INSERT [dbo].[DeleteTable] ([MaSV], [HoTen], [Phai], [NgaySinh], [NoiSinh], [TenKhoa], HocBong) VALUES (N'A01', N'Bùi Tiến Anh', 1,CAST(N'2003-12-13T00:00:00' AS SmallDateTime), N'Tuyên Quang', N'KT', 130000)
INSERT [dbo].[DeleteTable] ([MaSV], [HoTen], [Phai], [NgaySinh], [NoiSinh], [TenKhoa], HocBong) VALUES (N'A01', N'Hải DB', 1,CAST(N'1986-02-23T00:00:00' AS SmallDateTime), N'Hà Giang', N'TR', 140000)
INSERT [dbo].[DeleteTable] ([MaSV], [HoTen], [Phai], [NgaySinh], [NoiSinh], [TenKhoa], HocBong) VALUES (N'A01', N'Nguyễn BT', 1,CAST(N'1987-03-23T00:00:00' AS SmallDateTime), N'Thái Bình', N'TH', 150000)
INSERT [dbo].[DeleteTable] ([MaSV], [HoTen], [Phai], [NgaySinh], [NoiSinh], [TenKhoa], HocBong) VALUES (N'A01', N'Lèng B', 1,CAST(N'1982-02-23T00:00:00' AS SmallDateTime), N'Thổ Bình', N'KT', 190000)
INSERT [dbo].[DeleteTable] ([MaSV], [HoTen], [Phai], [NgaySinh], [NoiSinh], [TenKhoa], HocBong) VALUES (N'A01', N'Bùi Tuấn', 1,CAST(N'1984-02-23T00:00:00' AS SmallDateTime), N'Hà Giang', N'KT', 170000)
INSERT [dbo].[DeleteTable] ([MaSV], [HoTen], [Phai], [NgaySinh], [NoiSinh], [TenKhoa], HocBong) VALUES (N'A01', N'Hello', 1,CAST(N'1986-02-23T00:00:00' AS SmallDateTime), N'Hà Giang', N'KT', 0)


--2--
DELETE FROM DeleteTable
WHERE HocBong IS NULL OR HocBong = 0;

--3--
DELETE FROM DeleteTable
WHERE NgaySinh = '1984-02-23';

--4--
DELETE FROM DeleteTable
WHERE NgaySinh < '1987-03-01';

--5--
DELETE FROM DeleteTable
WHERE Phai = N'Nam' AND TenKhoa = N'Tin học';

--b8: Cập nhập thông tin trong cơ sở dữ liệu--
--1--
UPDATE MonHoc
SET SoTiet = 45
WHERE TenMH = N'Pháp luật đại cương';

--2--
UPDATE SinhVien
SET 
   HoSV = N'Bùi Tiến',
    TenSV = N'Anh'
WHERE 
	HoSV = N'Trần Anh' AND
    TenSV = N'Tuấn';

--3--
UPDATE SinhVien
SET Phai = 1
WHERE HoSV = N'Bùi Tiến'AND
    TenSV = N'Anh'

--4--
UPDATE SinhVien
SET NgaySinh = CAST(N'2003-12-13T00:00:00' AS SmallDateTime)
WHERE HoSV = N'Bùi Tiến'AND
      TenSV = N'Anh'

--5--
UPDATE SinhVien
SET HocBong = HocBong + 100000
WHERE MaKH = 'AV';

--6--
UPDATE KetQua
SET Diem = CASE 
              WHEN Diem + 5 > 10 THEN 10 
              ELSE Diem + 5 
           END
WHERE MaSV IN (SELECT MaSV FROM SinhVien WHERE MaKH = 'AV')
  AND MaMH = '02';

--7--
UPDATE SinhVien
SET HocBong = CASE 
                WHEN Phai = 0 AND MaKH = 'AV' THEN HocBong + 100000
                WHEN Phai = 1 AND MaKH = 'TH' THEN HocBong + 150000
                ELSE HocBong + 50000
              END;

--8--
UPDATE Ketqua
SET Diem = 
    CASE 
        WHEN SinhVien.MaKH = 'AV' THEN 
            CASE 
                WHEN Diem + 2 <= 10 THEN Diem + 2 
                ELSE 10 
            END
        WHEN SinhVien.MaKH = 'TH' THEN 
            CASE 
                WHEN Diem - 1 >= 0 THEN Diem - 1 
                ELSE 0 
            END
        ELSE Diem -- Không thay đổi cho các khoa khác
    END
FROM Ketqua
JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
WHERE Ketqua.MaMH = '01'; -- Chỉ cập nhật điểm cho môn "Cơ sở dữ liệu"
