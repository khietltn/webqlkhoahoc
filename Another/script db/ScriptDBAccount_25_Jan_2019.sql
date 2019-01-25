USE QLKhoaHoc
GO

CREATE TABLE ChucNang(
	MaChucNang int,
	TenChucNang nvarchar(50),
	GhiChu nvarchar(Max),
	CONSTRAINT [PK_ChucNang] PRIMARY KEY (MaChucNang),
)

go

CREATE TABLE NguoiDung(
	Usernames varchar(12),
	Passwords varchar(MAX),
	MaNKH int,
	MaChucNang int,
	CONSTRAINT [PK_NguoiDung] PRIMARY KEY (Usernames),
	CONSTRAINT [FK_NguoiDung_NKH] FOREIGN KEY (MaNKH) REFERENCES NhaKhoaHoc(MaNKH),
	CONSTRAINT [FK_NguoiDung_ChucNang] FOREIGN KEY (MaChucNang) REFERENCES ChucNang(MaChucNang)
)

GO
INSERT INTO ChucNang(MaChucNang,TenChucNang,GhiChu) VALUES (1,N'Admin',null), (2,N'User',null)

GO
INSERT INTO NguoiDung(Usernames,Passwords,MaNKH,MaChucNang) VALUES ('admin','e10adc3949ba59abbe56e057f20f883e',1,1),('user1','e10adc3949ba59abbe56e057f20f883e',2,2),('user2','e10adc3949ba59abbe56e057f20f883e',3,2) -- pass : 123456




