USE [master]
GO
CREATE DATABASE [QLKhoaHoc]
GO
USE [QLKhoaHoc]
GO

CREATE TABLE [BacDaoTao](
	[MaBacDT] int identity(1,1),
	[TenBacDT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__BacDaoTao] PRIMARY KEY(MaBacDT)
)

GO
CREATE TABLE [BaiBao](
	[MaBaiBao] int identity(1,1),
	[MaISSN] varchar(50),
	[TenBaiBao] [nvarchar](100) NOT NULL,
	[LaTrongNuoc] [bit] NULL,
	[CQXuatBan] [nvarchar](50) NULL,
	[MaLoaiTapChi] int NULL,
	[MaCapTapChi] int NULL,
	[NamDangBao] [date] NULL,
	[TapPhatHanh] [nvarchar](50) NULL,
	[SoPhatHanh] [nvarchar](50) NULL,
	[TrangBaiBao] [varchar](50) NULL,
	[LienKetWeb] [varchar](50) NULL,
	[LinkFileUpLoad] [varchar](50) NULL,
 CONSTRAINT [PK__BaiBao] PRIMARY KEY (MaBaiBao)
)

GO
CREATE TABLE [CapDeTai](
	[MaCapDeTai] int identity(1,1),
	[TenCapDeTai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__CapDeTai] PRIMARY KEY (MaCapDeTai)
)

GO
CREATE TABLE [CapTapChi](
	[MaCapTapChi] int identity(1,1),
	[TenCapTapChi] [nvarchar](100) NOT NULL,
	[ChiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK__CapTapChi] PRIMARY KEY (MaCapTapChi)
)

GO
CREATE TABLE [ChuyenMon](
	[MaChuyenMon] int identity(1,1),
	[TenChuyenMon] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__ChuyenMon] PRIMARY KEY (MaChuyenMon)
)

GO
CREATE TABLE [ChuyenMonNKH](
	[MaNKH] int,
	[MaChuyenMon] int,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK__ChuyenMonNKH] PRIMARY KEY ([MaNKH] ,	[MaChuyenMon] )
)

GO
CREATE TABLE [ChuyenNganh](
	[MaChuyenNganh] int identity(1,1),
	[TenChuyenNganh] [nvarchar](50) NOT NULL,
	[MaNganhDaoTao] int,
 CONSTRAINT [PK__ChuyenNganh] PRIMARY KEY (	[MaChuyenNganh] )
)

GO
CREATE TABLE [DeTai](
	[MaDeTai] int identity(1,1),
	[MaDeTaiHoSo] [varchar](50) NULL,
	[TenDeTai] [nvarchar](100) NOT NULL,
	[MaLoaiDeTai] int NULL,
	[MaCapDeTai] int NULL,
	[MaDVChuTri] int NULL,
	[MaDonViQLThucHien] int NULL,
	[MaLinhVuc] int NULL,
	[MucTieuDeTai] [nvarchar](MAX) NULL,
	[NoiDungDeTai] [nvarchar](MAX) NULL,
	[KetQuaDeTai] [nvarchar](MAX) NULL,
	[NamBD] [date] NULL,
	[NamKT] [date] NULL,
	[MaXepLoai] int NULL,
	[MaTinhTrang] int NULL,
	[MaPhanLoaiSP] int NULL,
	[KinhPhi] [varchar](50) NULL,
	[LienKetWeb] [varchar](MAX) NULL,
	[LinkFileUpload] [varchar](MAX) NULL,
 CONSTRAINT [PK__DeTai] PRIMARY KEY CLUSTERED ([MaDeTai] )
)

GO
CREATE TABLE [DonViChuTri](
	[MaDVChuTri] int identity(1,1),
	[TenDVChuTri] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK__DonViChu] PRIMARY KEY ([MaDVChuTri] )
)

GO
CREATE TABLE [DonViQL](
	[MaDonVi] int identity(1,1),
	[TenDonVI] [nvarchar](50) NOT NULL,
	[DiaChiCQ] [nvarchar](50) NULL,
	[DienThoaiCQ] [varchar](50) NULL,
	[EmailCQ] [varchar](50) NULL,
 CONSTRAINT [PK__DonViQL] PRIMARY KEY ([MaDonVi])
)


GO
CREATE TABLE [DSBaiBaoDeTai](
	[MaDeTai] int,
	[MaBaiBao] int,
	[GhiChu] nvarchar(50) NULL,
PRIMARY KEY ([MaDeTai] , [MaBaiBao] )
)

GO
CREATE TABLE [DSNguoiThamGiaBaiBao](
	[MaBaiBao] int,
	[MaNKH] int,
	[LaTacGiaChinh] [bit] NULL,
 CONSTRAINT [PK__DSNguoiT] PRIMARY KEY ([MaBaiBao] ,	[MaNKH] )
) 

GO
CREATE TABLE [DSNguoiThamGiaDeTai](
	[MaDeTai] int,
	[MaNKH] int,
	[LaChuNhiem] [bit] NULL,
 CONSTRAINT [PK__DSNguoiTG] PRIMARY KEY([MaDeTai] ASC, 	[MaNKH] ASC)
) 

GO
CREATE TABLE [DSTacGia](
	[MaSach] int,
	[MaNKH] int,
	[LaChuBien] bit NULL,
 CONSTRAINT [PK_DSTacGia] PRIMARY KEY (	[MaSach] ASC,	[MaNKH] ASC)
)

GO
CREATE TABLE [HocHam](
	[MaHocHam] int identity(1,1),
	[TenVietTat] [nvarchar](10) NULL,
	[TenHocHam] [nvarchar](50) NULL,
 CONSTRAINT [PK__HocHam] PRIMARY KEY (	[MaHocHam] )
)

GO
CREATE TABLE [HocVi](
	[MaHocVi] int identity(1,1),
	[TenVietTat] [varchar](10) NULL,
	[TenHocVi] [nvarchar](50) NULL,
 CONSTRAINT [PK__HocVi] PRIMARY KEY ([MaHocVi] )
)


GO
CREATE TABLE [KinhPhiDeTai](
	[MaPhi] [int] IDENTITY(1,1) NOT NULL,
	[MaDeTai] int NOT NULL,
	[LoaiKinhPhi] [nvarchar](50) NULL,
	[NamTiepNhan] [date] NULL,
	[SoTien] [int] NULL,
	[LoaiTien] [varchar](5) NULL,
 CONSTRAINT [PK_KinhPhiDeTai] PRIMARY KEY (	[MaPhi])
)

GO
CREATE TABLE [LinhVuc](
	[MaLinhVuc] int identity(1,1),
	[TenLinhVuc] [nvarchar](100) NULL,
	[MaNhomLinhVuc] int NULL,
 CONSTRAINT [PK__LinhVuc] PRIMARY KEY ([MaLinhVuc] )
)

GO
CREATE TABLE [LinhVucBaiBao](
	[MaBaiBao] int,
	[MaLinhVuc] int,
CONSTRAINT [PK__LinhVuc_BaiBao] PRIMARY KEY ( [MaBaiBao] ASC,	[MaLinhVuc] ASC)
)

GO
CREATE TABLE [LinhVucNghienCuuNKH](
	[MaNKH] int,
	[MaLinhVuc] int,
CONSTRAINT [PK__LinhVuc_NKH] PRIMARY KEY ([MaNKH] ASC,	[MaLinhVuc] ASC)
)


GO
CREATE TABLE [LoaiHinhDeTai](
	[MaLoaiDT] int identity(1,1),
	[TenLoaiDT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiHinhDeTai] PRIMARY KEY ([MaLoaiDT] ASC)
) 

GO
CREATE TABLE [NgachVienChuc](
	[MaNgach] int identity(1,1),
	[TenNgach] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__NgachVienChuc] PRIMARY KEY ([MaNgach] ASC)
)

GO
CREATE TABLE [NganhDaoTao](
	[MaNganhDaoTao] int identity(1,1),
	[TenNganhDaoTao] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__NganhDaoTao] PRIMARY KEY (	[MaNganhDaoTao] ASC)
)

GO
CREATE TABLE [NgoaiNguNKH](
	[MaNKH] int,
	[MaTrinhDoNN] int,
 CONSTRAINT [PK__NgoaiNguNKH]	PRIMARY KEY (	[MaNKH] ASC,	[MaTrinhDoNN] ASC)
) 

GO
CREATE TABLE [NhaKhoaHoc](
	[MaNKH] int identity(1,1),
	[MaNKHHoSo] [varchar](100) NULL,
	[HoNKH] [nvarchar](50) NULL,
	[TenNKH] [nvarchar](50) NULL,
	[GioiTinhNKH] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChiLienHe] [nvarchar](MAX) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[EmailLienHe] [varchar](50) NULL,
	[MaHocHam] int NULL,
	[MaHocVi] int NULL,
	[MaCNDaoTao] int NULL,
	[MaDonViQL] int NULL,
	[AnhDaiDien] [varchar](MAX) NULL,
	[AnhCaNhan] [varbinary](max) NULL,
	[MaNgachVienChuc] int NULL,
 CONSTRAINT [PK__NKH] PRIMARY KEY (	[MaNKH] ASC)
)

GO
CREATE TABLE [NhaXuatBan](
	[MaNXB] int identity(1,1),
	[TenNXB] [nvarchar](50) NULL,
	[DiaChiNXB] [nvarchar](100) NULL,
	[DienThoaiNXB] [varchar](50) NULL,
	[DiaChiWeb] [varchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY (	[MaNXB] ASC)
)
GO
CREATE TABLE [NhomLinhVuc](
	[MaNhomLinhVuc] int identity(1,1) NOT NULL,
	[TenNhomLinhVuc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__NhomLinhVuc] PRIMARY KEY ([MaNhomLinhVuc] ASC)
)

GO
CREATE TABLE [PhanLoaiSach](
	[MaLoai] int identity(1,1),
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__PhanLoaiSach] PRIMARY KEY (	[MaLoai] )
)


GO
CREATE TABLE [PhanLoaiSP](
	[MaPhanLoai] int identity(1,1),
	[TenPhanLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__PhanLoaiSP] PRIMARY KEY(	[MaPhanLoai] ASC)
)

GO
CREATE TABLE [PhanLoaiTapChi](
	[MaLoaiTapChi] int identity(1,1),
	[TenLoaiTapChi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__PhanLoaiTapChi] PRIMARY KEY (	[MaLoaiTapChi] ASC)
)


GO
CREATE TABLE [QuaTrinhCongTac](
	[MaCT] [int] IDENTITY(1,1) NOT NULL,
	[MaNKH] int NOT NULL,
	[ThoiGianBD] [datetime] NULL,
	[ThoiGIanKT] [datetime] NULL,
	[ChucDanhCT] [nvarchar](100) NULL,
	[MaDonViQL] int NULL,
	[ChucVuCT] [nvarchar](100) NULL,
 CONSTRAINT [PK_QuaTrinhCongTac] PRIMARY KEY (	[MaCT] ASC)
)


GO
CREATE TABLE [QuaTrinhDaoTao](
	[MaQT] [int] IDENTITY(1,1) NOT NULL,
	[MaNKH] int NOT NULL,
	[ThoiGianBD] [datetime] NULL,
	[ThoiGianKT] [datetime] NULL,
	[MaBacDT] int NULL,
	[CoSoDaoTao] [nvarchar](100) NULL,
	[MaNganh] int NULL,
	[NamTotNghiep] [datetime] NULL,
 CONSTRAINT [PK_QuaTrinhDaoTao] PRIMARY KEY (	[MaQT] ASC)
)

GO
CREATE TABLE [SachGiaoTrinh](
	[MaSach] int identity(1,1),
	[MaISBN] [varchar](100) NULL,
	[TenSach] [varchar](255) NOT NULL,
	[MaLoai] int NULL,
	[MaLinhVuc] int NULL,
	[MaNXB] int NULL,
	[NamXuatBan] [date] NULL,
 CONSTRAINT [PK__SachGiaoTrinh] PRIMARY KEY (	[MaSach] ASC)
)

GO
CREATE TABLE [TinhTrangDeTai](
	[MaTinhTrang] int identity(1,1) NOT NULL,
	[TenTinhTrang] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__TinhTrangDeTai] PRIMARY KEY (	[MaTinhTrang] ASC)
)

GO
CREATE TABLE [TrinhDoNgoaiNgu](
	[MaTrinhDoNN] int identity(1,1),
	[TenTrinhDo] [nvarchar](50) NOT NULL,
	[CapDo] [nvarchar](50) NULL,
 CONSTRAINT [PK__TrinhDoNNgu] PRIMARY KEY(	[MaTrinhDoNN] ASC)
)

GO
CREATE TABLE [XepLoai](
	[MaXepLoai]  int identity(1,1),
	[TenXepLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__XepLoai] PRIMARY KEY (	[MaXepLoai] ASC)
) 

GO

GO
ALTER TABLE [BaiBao]  WITH CHECK ADD  CONSTRAINT [FK_BaiBao_CapTapChi] FOREIGN KEY([MaCapTapChi])
REFERENCES [CapTapChi] ([MaCapTapChi])
GO
ALTER TABLE [BaiBao] CHECK CONSTRAINT [FK_BaiBao_CapTapChi]
GO
ALTER TABLE [BaiBao]  WITH CHECK ADD  CONSTRAINT [FK_BaiBao_PhanLoaiTapChi] FOREIGN KEY([MaLoaiTapChi])
REFERENCES [PhanLoaiTapChi] ([MaLoaiTapChi])
GO
ALTER TABLE [BaiBao] CHECK CONSTRAINT [FK_BaiBao_PhanLoaiTapChi]
GO
ALTER TABLE [ChuyenMonNKH]  WITH CHECK ADD  CONSTRAINT [ChuyenMonNKH_fk0] FOREIGN KEY([MaNKH])
REFERENCES [NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [ChuyenMonNKH] CHECK CONSTRAINT [ChuyenMonNKH_fk0]
GO
ALTER TABLE [ChuyenMonNKH]  WITH CHECK ADD  CONSTRAINT [ChuyenMonNKH_fk1] FOREIGN KEY([MaChuyenMon])
REFERENCES [ChuyenMon] ([MaChuyenMon])
GO
ALTER TABLE [ChuyenMonNKH] CHECK CONSTRAINT [ChuyenMonNKH_fk1]
GO
ALTER TABLE [ChuyenNganh]  WITH CHECK ADD  CONSTRAINT [ChuyenNganh_fk0] FOREIGN KEY([MaNganhDaoTao])
REFERENCES [NganhDaoTao] ([MaNganhDaoTao])
GO
ALTER TABLE [ChuyenNganh] CHECK CONSTRAINT [ChuyenNganh_fk0]
GO
ALTER TABLE [DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk0] FOREIGN KEY([MaLoaiDeTai])
REFERENCES [LoaiHinhDeTai] ([MaLoaiDT])
GO
ALTER TABLE [DeTai] CHECK CONSTRAINT [DeTai_fk0]
GO
ALTER TABLE [DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk1] FOREIGN KEY([MaCapDeTai])
REFERENCES [CapDeTai] ([MaCapDeTai])
GO
ALTER TABLE [DeTai] CHECK CONSTRAINT [DeTai_fk1]
GO
ALTER TABLE [DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk2] FOREIGN KEY([MaDVChuTri])
REFERENCES [DonViChuTri] ([MaDVChuTri])
GO
ALTER TABLE [DeTai] CHECK CONSTRAINT [DeTai_fk2]
GO
ALTER TABLE [DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk3] FOREIGN KEY([MaDonViQLThucHien])
REFERENCES [DonViQL] ([MaDonVi])
GO
ALTER TABLE [DeTai] CHECK CONSTRAINT [DeTai_fk3]
GO
ALTER TABLE [DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk4] FOREIGN KEY([MaLinhVuc])
REFERENCES [LinhVuc] ([MaLinhVuc])
GO
ALTER TABLE [DeTai] CHECK CONSTRAINT [DeTai_fk4]
GO
ALTER TABLE [DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk5] FOREIGN KEY([MaXepLoai])
REFERENCES [XepLoai] ([MaXepLoai])
GO
ALTER TABLE [DeTai] CHECK CONSTRAINT [DeTai_fk5]
GO
ALTER TABLE [DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk6] FOREIGN KEY([MaTinhTrang])
REFERENCES [TinhTrangDeTai] ([MaTinhTrang])
GO
ALTER TABLE [DeTai] CHECK CONSTRAINT [DeTai_fk6]
GO
ALTER TABLE [DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk7] FOREIGN KEY([MaPhanLoaiSP])
REFERENCES [PhanLoaiSP] ([MaPhanLoai])
GO
ALTER TABLE [DeTai] CHECK CONSTRAINT [DeTai_fk7]
GO

ALTER TABLE [DSBaiBaoDeTai]  WITH CHECK ADD  CONSTRAINT [DSBaiBaoDeTai_fk0] FOREIGN KEY([MaDeTai])
REFERENCES [DeTai] ([MaDeTai])
GO
ALTER TABLE [DSBaiBaoDeTai] CHECK CONSTRAINT [DSBaiBaoDeTai_fk0]
GO
ALTER TABLE [DSBaiBaoDeTai]  WITH CHECK ADD  CONSTRAINT [DSBaiBaoDeTai_fk1] FOREIGN KEY([MaBaiBao])
REFERENCES [BaiBao] ([MaBaiBao])
GO
ALTER TABLE [DSBaiBaoDeTai] CHECK CONSTRAINT [DSBaiBaoDeTai_fk1]
GO

ALTER TABLE [DSNguoiThamGiaBaiBao]  WITH CHECK ADD  CONSTRAINT [DSNguoiThamGiaBaiBao_fk0] FOREIGN KEY([MaBaiBao])
REFERENCES [BaiBao] ([MaBaiBao])
GO
ALTER TABLE [DSNguoiThamGiaBaiBao] CHECK CONSTRAINT [DSNguoiThamGiaBaiBao_fk0]
GO
ALTER TABLE [DSNguoiThamGiaBaiBao]  WITH CHECK ADD  CONSTRAINT [DSNguoiThamGiaBaiBao_fk1] FOREIGN KEY([MaNKH])
REFERENCES [NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [DSNguoiThamGiaBaiBao] CHECK CONSTRAINT [DSNguoiThamGiaBaiBao_fk1]
GO

ALTER TABLE [DSNguoiThamGiaDeTai]  WITH CHECK ADD  CONSTRAINT [DSNguoiThamGiaDeTai_fk0] FOREIGN KEY([MaDeTai])
REFERENCES [DeTai] ([MaDeTai])
GO
ALTER TABLE [DSNguoiThamGiaDeTai] CHECK CONSTRAINT [DSNguoiThamGiaDeTai_fk0]
GO
ALTER TABLE [DSNguoiThamGiaDeTai]  WITH CHECK ADD  CONSTRAINT [DSNguoiThamGiaDeTai_fk1] FOREIGN KEY([MaNKH])
REFERENCES [NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [DSNguoiThamGiaDeTai] CHECK CONSTRAINT [DSNguoiThamGiaDeTai_fk1]
GO

ALTER TABLE [DSTacGia]  WITH CHECK ADD  CONSTRAINT [FK_DSTacGia_NhaKhoaHoc] FOREIGN KEY([MaNKH])
REFERENCES [NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [DSTacGia] CHECK CONSTRAINT [FK_DSTacGia_NhaKhoaHoc]
GO
ALTER TABLE [DSTacGia]  WITH CHECK ADD  CONSTRAINT [FK_DSTacGia_SachGiaoTrinh] FOREIGN KEY([MaSach])
REFERENCES [SachGiaoTrinh] ([MaSach])
GO
ALTER TABLE [DSTacGia] CHECK CONSTRAINT [FK_DSTacGia_SachGiaoTrinh]
GO


ALTER TABLE [KinhPhiDeTai]  WITH CHECK ADD  CONSTRAINT [FK_KinhPhiDeTai_DeTai] FOREIGN KEY([MaDeTai])
REFERENCES [DeTai] ([MaDeTai])
GO
ALTER TABLE [KinhPhiDeTai] CHECK CONSTRAINT [FK_KinhPhiDeTai_DeTai]
GO
ALTER TABLE [LinhVuc]  WITH CHECK ADD  CONSTRAINT [LinhVuc_fk0] FOREIGN KEY([MaNhomLinhVuc])
REFERENCES [NhomLinhVuc] ([MaNhomLinhVuc])
GO
ALTER TABLE [LinhVuc] CHECK CONSTRAINT [LinhVuc_fk0]

GO
ALTER TABLE [LinhVucBaiBao]  WITH CHECK ADD  CONSTRAINT [LinhVucBaiBao_fk0] FOREIGN KEY([MaBaiBao])
REFERENCES [BaiBao] ([MaBaiBao])
GO
ALTER TABLE [LinhVucBaiBao] CHECK CONSTRAINT [LinhVucBaiBao_fk0]
GO
ALTER TABLE [LinhVucBaiBao]  WITH CHECK ADD  CONSTRAINT [LinhVucBaiBao_fk1] FOREIGN KEY([MaLinhVuc])
REFERENCES [LinhVuc] ([MaLinhVuc])
GO
ALTER TABLE [LinhVucBaiBao] CHECK CONSTRAINT [LinhVucBaiBao_fk1]
GO
ALTER TABLE [LinhVucNghienCuuNKH]  WITH CHECK ADD  CONSTRAINT [LinhVucNghienCuuNKH_fk0] FOREIGN KEY([MaNKH])
REFERENCES [NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [LinhVucNghienCuuNKH] CHECK CONSTRAINT [LinhVucNghienCuuNKH_fk0]
GO
ALTER TABLE [LinhVucNghienCuuNKH]  WITH CHECK ADD  CONSTRAINT [LinhVucNghienCuuNKH_fk1] FOREIGN KEY([MaLinhVuc])
REFERENCES [LinhVuc] ([MaLinhVuc])
GO
ALTER TABLE [LinhVucNghienCuuNKH] CHECK CONSTRAINT [LinhVucNghienCuuNKH_fk1]

GO
ALTER TABLE [NgoaiNguNKH]  WITH CHECK ADD  CONSTRAINT [NgoaiNguNKH_fk0] FOREIGN KEY([MaNKH])
REFERENCES [NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [NgoaiNguNKH] CHECK CONSTRAINT [NgoaiNguNKH_fk0]
GO
ALTER TABLE [NgoaiNguNKH]  WITH CHECK ADD  CONSTRAINT [NgoaiNguNKH_fk1] FOREIGN KEY([MaTrinhDoNN])
REFERENCES [TrinhDoNgoaiNgu] ([MaTrinhDoNN])
GO
ALTER TABLE [NgoaiNguNKH] CHECK CONSTRAINT [NgoaiNguNKH_fk1]

GO
ALTER TABLE [NhaKhoaHoc]  WITH CHECK ADD  CONSTRAINT [NhaKhoaHoc_fk0] FOREIGN KEY([MaHocHam])
REFERENCES [HocHam] ([MaHocHam])
GO
ALTER TABLE [NhaKhoaHoc] CHECK CONSTRAINT [NhaKhoaHoc_fk0]
GO
ALTER TABLE [NhaKhoaHoc]  WITH CHECK ADD  CONSTRAINT [NhaKhoaHoc_fk1] FOREIGN KEY([MaHocVi])
REFERENCES [HocVi] ([MaHocVi])
GO
ALTER TABLE [NhaKhoaHoc] CHECK CONSTRAINT [NhaKhoaHoc_fk1]
GO
ALTER TABLE [NhaKhoaHoc]  WITH CHECK ADD  CONSTRAINT [NhaKhoaHoc_fk2] FOREIGN KEY([MaCNDaoTao])
REFERENCES [ChuyenNganh] ([MaChuyenNganh])
GO
ALTER TABLE [NhaKhoaHoc] CHECK CONSTRAINT [NhaKhoaHoc_fk2]
GO
ALTER TABLE [NhaKhoaHoc]  WITH CHECK ADD  CONSTRAINT [NhaKhoaHoc_fk3] FOREIGN KEY([MaDonViQL])
REFERENCES [DonViQL] ([MaDonVi])
GO
ALTER TABLE [NhaKhoaHoc] CHECK CONSTRAINT [NhaKhoaHoc_fk3]
GO
ALTER TABLE [NhaKhoaHoc]  WITH CHECK ADD  CONSTRAINT [NhaKhoaHoc_fk4] FOREIGN KEY([MaNgachVienChuc])
REFERENCES [NgachVienChuc] ([MaNgach])
GO
ALTER TABLE [NhaKhoaHoc] CHECK CONSTRAINT [NhaKhoaHoc_fk4]
GO


ALTER TABLE [QuaTrinhCongTac]  WITH CHECK ADD  CONSTRAINT [QuaTrinhCongTac_fk0] FOREIGN KEY([MaNKH])
REFERENCES [NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [QuaTrinhCongTac] CHECK CONSTRAINT [QuaTrinhCongTac_fk0]
GO
ALTER TABLE [QuaTrinhCongTac]  WITH CHECK ADD  CONSTRAINT [QuaTrinhCongTac_fk1] FOREIGN KEY([MaDonViQL])
REFERENCES [DonViQL] ([MaDonVi])
GO
ALTER TABLE [QuaTrinhCongTac] CHECK CONSTRAINT [QuaTrinhCongTac_fk1]
GO
ALTER TABLE [QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [QuaTrinhDaoTao_fk0] FOREIGN KEY([MaNKH])
REFERENCES [NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [QuaTrinhDaoTao] CHECK CONSTRAINT [QuaTrinhDaoTao_fk0]
GO
ALTER TABLE [QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [QuaTrinhDaoTao_fk1] FOREIGN KEY([MaBacDT])
REFERENCES [BacDaoTao] ([MaBacDT])
GO
ALTER TABLE [QuaTrinhDaoTao] CHECK CONSTRAINT [QuaTrinhDaoTao_fk1]
GO
ALTER TABLE [QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [QuaTrinhDaoTao_fk2] FOREIGN KEY([MaNganh])
REFERENCES [NganhDaoTao] ([MaNganhDaoTao])
GO
ALTER TABLE [QuaTrinhDaoTao] CHECK CONSTRAINT [QuaTrinhDaoTao_fk2]
GO


ALTER TABLE [SachGiaoTrinh]  WITH CHECK ADD  CONSTRAINT [FK_SachGiaoTrinh_NhaXuatBan] FOREIGN KEY([MaNXB])
REFERENCES [NhaXuatBan] ([MaNXB])
GO
ALTER TABLE [SachGiaoTrinh] CHECK CONSTRAINT [FK_SachGiaoTrinh_NhaXuatBan]
GO
ALTER TABLE [SachGiaoTrinh]  WITH CHECK ADD  CONSTRAINT [SachGiaoTrinh_fk0] FOREIGN KEY([MaLoai])
REFERENCES [PhanLoaiSach] ([MaLoai])
GO
ALTER TABLE [SachGiaoTrinh] CHECK CONSTRAINT [SachGiaoTrinh_fk0]
GO
ALTER TABLE [SachGiaoTrinh]  WITH CHECK ADD  CONSTRAINT [SachGiaoTrinh_fk1] FOREIGN KEY([MaLinhVuc])
REFERENCES [LinhVuc] ([MaLinhVuc])
GO
ALTER TABLE [SachGiaoTrinh] CHECK CONSTRAINT [SachGiaoTrinh_fk1]
GO
USE [master]
GO
ALTER DATABASE [QLKhoaHoc] SET  READ_WRITE 
GO

