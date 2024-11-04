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