-- Tạo bảng VATTU
CREATE TABLE VATTU
(
	MaVTu CHAR(4) NOT NULL CONSTRAINT PK_VatTu PRIMARY KEY,
	TenVTu NVARCHAR(100) NOT NULL CONSTRAINT UQ_VATTU_TenVTu UNIQUE,
	DVTinh NVARCHAR(10) DEFAULT '',
	PhanTram REAL CONSTRAINT CK_VATTU_PhanTram CHECK (PhanTram >= 0 AND PhanTram <= 100)
);
GO

-- Tạo bảng NHACC (Nhà cung cấp)
CREATE TABLE NHACC
(
	MaNhaCC CHAR(3) NOT NULL PRIMARY KEY,
	TenNhaCC NVARCHAR(100) NOT NULL,
	DiaChi NVARCHAR(200) NOT NULL,
	DienThoai VARCHAR(20) DEFAULT N'Chưa có'
);
GO

-- Tạo bảng DONDH (Đơn đặt hàng)
CREATE TABLE DONDH
(
	SoDH CHAR(4) NOT NULL PRIMARY KEY,
	NgayDH DATETIME DEFAULT GETDATE(),
	MaNhaCC CHAR(3) REFERENCES NHACC(MaNhaCC)
);
GO

-- Tạo bảng CTDONDH (Chi tiết đơn đặt hàng)
CREATE TABLE CTDONDH
(
	SoDH CHAR(4) NOT NULL,
	MaVTu CHAR(4) NOT NULL,
	SLDat INT NOT NULL CHECK (SLDat > 0),
	PRIMARY KEY (SoDH, MaVTu)
);
GO

-- Tạo bảng PNHAP (Phiếu nhập)
CREATE TABLE PNHAP
(
	SoPn CHAR(4) NOT NULL PRIMARY KEY,
	NgayNhap DATETIME DEFAULT GETDATE(),
	SoDh CHAR(4) NOT NULL REFERENCES DONDH(SoDH)
);
GO

-- Tạo bảng CTPNHAP (Chi tiết phiếu nhập)
CREATE TABLE CTPNHAP
(
	SoPn CHAR(4) NOT NULL REFERENCES PNHAP(SoPn),
	MaVT CHAR(4) NOT NULL REFERENCES VATTU(MaVTu),
	SLNhap INT CHECK (SLNhap > 0),
	DonGiaNhap MONEY,
	PRIMARY KEY (SoPn, MaVT)
);
GO

-- Tạo bảng PXUAT (Phiếu xuất)
CREATE TABLE PXUAT
(
	SoPx CHAR(4) NOT NULL PRIMARY KEY,
	NgayXuat DATETIME DEFAULT GETDATE(),
	TenKh VARCHAR(100) NOT NULL
);
GO

-- Tạo bảng CTPXUAT (Chi tiết phiếu xuất)
CREATE TABLE CTPXUAT
(
	SoPx CHAR(4) NOT NULL REFERENCES PXUAT(SoPx),
	MaVT CHAR(4) NOT NULL REFERENCES VATTU(MaVTu),
	SLXuat INT CHECK (SLXuat > 0),
	PRIMARY KEY (SoPx, MaVT)
);
GO
ALTER TABLE CTPXUAT
ADD DonGiaNhap MONEY;

-- Tạo bảng TONKHO
CREATE TABLE TONKHO
(
	NamThang CHAR(6) NOT NULL,
	MaVT CHAR(4) NOT NULL REFERENCES VATTU(MaVTu),
	SLDau INT DEFAULT 0 CHECK (SLDau >= 0),
	SLNhap INT DEFAULT 0 CHECK (SLNhap >= 0),
	SLXuat INT DEFAULT 0 CHECK (SLXuat >= 0),
	SLTon AS (SLDau + SLNhap - SLXuat),
	PRIMARY KEY (NamThang, MaVT)
);
GO

-- Thêm dữ liệu vào bảng NHACC
INSERT INTO NHACC (MaNhaCC, TenNhaCC, DiaChi, DienThoai) VALUES
('C01', N'Bùi Tiến Anh', N'54, Chiêm Hóa, Tuyên Quang', '8781024'),
('C02', N'Trần Quang Anh', N'145, Hùng Vương, Hải Dương', '7698154'),
('C03', N'Bùi Hồng Phương', N'154/85, Lê Chân, Hải Phòng', '9600125'),
('C04', N'Vũ Nhật Thắng', N'198/40 Hương Lộ 14 QTB HCM', '8757757'),
('C05', N'Nguyễn Thị Thúy', N'178 Nguyễn Văn Lương, Đà Lạt', '7964251'),
('C07', N'Cao Minh Trung', N'125 Lê Quang Sung, Nha Trang', N'Chưa có');
GO

-- Thêm dữ liệu vào bảng VATTU
INSERT INTO VATTU (MaVTu, TenVTu, DVTinh, PhanTram) VALUES
('DD01', N'Đầu DVD Hitachi 1 đĩa', N'Bộ', 40),
('DD02', N'Đầu DVD Hitachi 3 đĩa', N'Bộ', 40),
('TL15', N'Tủ lạnh Sanyo 150 lit', N'Cái', 25),
('TL90', N'Tủ lạnh Sanyo 90 lit', N'Cái', 20),
('TV14', N'Tivi Sony 14 inches', N'Cái', 15),
('TV21', N'Tivi Sony 21 inches', N'Cái', 10),
('TV29', N'Tivi Sony 29 inches', N'Cái', 10),
('VD01', N'Đầu VCD Sony 1 đĩa', N'Bộ', 30),
('VD02', N'Đầu VCD Sony 3 đĩa', N'Bộ', 30);
GO

-- Thêm dữ liệu vào bảng DONDH
INSERT INTO DONDH (SoDH, NgayDH, MaNhaCC) VALUES
('D001', '2012-01-15', 'C03'),
('D002', '2012-01-30', 'C01'),
('D003', '2012-02-10', 'C02'),
('D004', '2012-02-17', 'C05'),
('D005', '2012-03-01', 'C02'),
('D006', '2012-03-12', 'C05');
GO

-- Thêm dữ liệu vào bảng PNHAP
INSERT INTO PNHAP (SoPn, NgayNhap, SoDh) VALUES
('N001', '2012-01-17', 'D001'),
('N002', '2012-01-20', 'D003'),
('N003', '2012-01-31', 'D002');
GO

INSERT INTO PXUAT (SoPx, NgayXuat, TenKh) VALUES
('X001', '2012-01-17', N'Nguyễn Ngọc Phương Nhi'),
('X002', '2012-01-25', N'Nguyễn Hồng Phương'),
('X003', '2012-01-31', N'Nguyễn Tuấn Tú');

INSERT INTO CTPNHAP (SoPn, MaVT, SLNhap, DonGiaNhap) VALUES
('N001', 'DD01', 10, 2500000),
('N002', 'TV21', 5, 4200000),
('N003', 'TV29', 12, 300000);

INSERT INTO CTPXUAT (SoPx, MaVT, SLXuat, DonGiaNhap) VALUES
('X001', 'DD01', 3, 2500000),
('X002', 'DD01', 1, 3500000),
('X002', 'DD02', 1, 4000000),
('X002', 'VD01', 1, 4500000),
('X003', 'VD02', 1, 4900000);

INSERT INTO TONKHO (NamThang, MaVT, SLDau, SLNhap, SLXuat) VALUES
('201201', 'DD01', 10, 10, 4),
('201201', 'DD02', 0, 0, 1),
('201201', 'TV14', 0, 0, 0),
('201201', 'TV21', 0, 5, 0),
('201201', 'VD01', 0, 0, 1),
('201201', 'VD02', 0, 0, 1),
('201202', 'TV14', 0, 0, 0),
('201202', 'TV29', 0, 12, 0);

