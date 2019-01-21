USE [master]
GO
/****** Object:  Database [QLKhoaHoc]    Script Date: 21/01/2019 18:45:26 ******/
CREATE DATABASE [QLKhoaHoc]
GO
USE [QLKhoaHoc]
GO
/****** Object:  Table [dbo].[BacDaoTao]    Script Date: 21/01/2019 18:45:26 ******/
CREATE TABLE [dbo].[BacDaoTao](
	[MaBacDT] [varchar](5) NOT NULL,
	[TenBacDT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__BacDaoTa__E022FF59F91EC205] PRIMARY KEY CLUSTERED 
(
	[MaBacDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BaiBao]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BaiBao](
	[MaBaiBao] [varchar](5) NOT NULL,
	[TenBaiBao] [nvarchar](100) NOT NULL,
	[LaTrongNuoc] [binary](1) NULL,
	[CQXuatBan] [nvarchar](50) NULL,
	[MaLoaiTapChi] [varchar](5) NULL,
	[MaCapTapChi] [varchar](5) NULL,
	[NamDangBao] [date] NULL,
	[TapPhatHanh] [nvarchar](50) NULL,
	[SoPhatHanh] [nvarchar](50) NULL,
	[TrangBaiBao] [varchar](50) NULL,
	[LienKetWeb] [varchar](50) NULL,
	[LinkFileUpLoad] [varchar](50) NULL,
 CONSTRAINT [PK__BaiBao__1A5DE7A4E99065E6] PRIMARY KEY CLUSTERED 
(
	[MaBaiBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CapDeTai]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CapDeTai](
	[MaCapDeTai] [varchar](5) NOT NULL,
	[TenCapDeTai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__CapDeTai__F34DECA07266662B] PRIMARY KEY CLUSTERED 
(
	[MaCapDeTai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CapTapChi]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CapTapChi](
	[MaCapTapChi] [varchar](5) NOT NULL,
	[TenCapTapChi] [nvarchar](100) NOT NULL,
	[ChiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK__CapTapCh__7FBDB11AB89563B2] PRIMARY KEY CLUSTERED 
(
	[MaCapTapChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuyenMon]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuyenMon](
	[MaChuyenMon] [varchar](5) NOT NULL,
	[TenChuyenMon] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__ChuyenMo__9A6A23216231794D] PRIMARY KEY CLUSTERED 
(
	[MaChuyenMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuyenMonNKH]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuyenMonNKH](
	[MaNKH] [varchar](5) NOT NULL,
	[MaChuyenMon] [varchar](5) NOT NULL,
	[NgayCapNhat] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNKH] ASC,
	[MaChuyenMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuyenNganh]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuyenNganh](
	[MaChuyenNganh] [varchar](5) NOT NULL,
	[TenChuyenNganh] [nvarchar](50) NOT NULL,
	[MaNganhDaoTao] [varchar](5) NULL,
 CONSTRAINT [PK__ChuyenNg__20FEA98D62C6704F] PRIMARY KEY CLUSTERED 
(
	[MaChuyenNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeTai]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeTai](
	[MaDeTai] [varchar](5) NOT NULL,
	[MaDeTaiHoSo] [varchar](50) NULL,
	[TenDeTai] [nvarchar](100) NOT NULL,
	[MaLoaiDeTai] [varchar](5) NULL,
	[MaCapDeTai] [varchar](5) NULL,
	[MaDVChuTri] [varchar](5) NULL,
	[MaDonViQLThucHien] [varchar](5) NULL,
	[MaLinhVuc] [varchar](5) NULL,
	[MucTieuDeTai] [nvarchar](200) NULL,
	[NoiDungDeTai] [nvarchar](200) NULL,
	[KetQuaDeTai] [nvarchar](200) NULL,
	[NamBD] [date] NULL,
	[NamKT] [date] NULL,
	[MaXepLoai] [varchar](5) NULL,
	[MaTinhTrang] [varchar](5) NULL,
	[MaPhanLoaiSP] [varchar](5) NULL,
	[KinhPhi] [varchar](50) NULL,
	[LienKetWeb] [varchar](100) NULL,
	[LinkFileUpload] [varchar](255) NULL,
 CONSTRAINT [PK__DeTai__9F967D5B8FD7ED28] PRIMARY KEY CLUSTERED 
(
	[MaDeTai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonViChuTri]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonViChuTri](
	[MaDVChuTri] [varchar](5) NOT NULL,
	[TenDVChuTri] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK__DonViChu__46DD086865A09FCD] PRIMARY KEY CLUSTERED 
(
	[MaDVChuTri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonViQL]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonViQL](
	[MaDonVi] [varchar](5) NOT NULL,
	[TenDonVI] [nvarchar](50) NOT NULL,
	[DiaChiCQ] [nvarchar](50) NULL,
	[DienThoaiCQ] [varchar](50) NULL,
	[EmailCQ] [varchar](50) NULL,
 CONSTRAINT [PK__DonViQL__DDA5A6CFA26E2155] PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DSBaiBaoDeTai]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DSBaiBaoDeTai](
	[MaDeTai] [varchar](5) NOT NULL,
	[MaBaiBao] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDeTai] ASC,
	[MaBaiBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DSNguoiThamGiaBaiBao]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DSNguoiThamGiaBaiBao](
	[MaBaiBao] [varchar](5) NOT NULL,
	[MaNKH] [varchar](5) NOT NULL,
	[LaTacGiaChinh] [binary](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaiBao] ASC,
	[MaNKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DSNguoiThamGiaDeTai]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DSNguoiThamGiaDeTai](
	[MaDeTai] [varchar](5) NOT NULL,
	[MaNKH] [varchar](5) NOT NULL,
	[LaChuNhiem] [binary](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDeTai] ASC,
	[MaNKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DSTacGia]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DSTacGia](
	[MaSach] [varchar](5) NOT NULL,
	[MaNKH] [varchar](5) NOT NULL,
	[LaChuBien] [binary](1) NOT NULL,
 CONSTRAINT [PK_DSTacGia] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaNKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HocHam]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HocHam](
	[MaHocHam] [varchar](5) NOT NULL,
	[TenHocHam] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK__HocHam__949D4C1E8D5AE50F] PRIMARY KEY CLUSTERED 
(
	[MaHocHam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HocVi]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HocVi](
	[MaHocVi] [varchar](5) NOT NULL,
	[TenHocVi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__HocVi__1EB58FAA72B35F4F] PRIMARY KEY CLUSTERED 
(
	[MaHocVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KinhPhiDeTai]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KinhPhiDeTai](
	[MaPhi] [int] IDENTITY(1,1) NOT NULL,
	[MaDeTai] [varchar](5) NOT NULL,
	[LoaiKinhPhi] [nvarchar](50) NULL,
	[NamTiepNhan] [date] NULL,
	[SoTien] [int] NULL,
	[LoaiTien] [varchar](5) NULL,
 CONSTRAINT [PK_KinhPhiDeTai] PRIMARY KEY CLUSTERED 
(
	[MaPhi] ASC,
	[MaDeTai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinhVuc]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LinhVuc](
	[MaLinhVuc] [varchar](5) NOT NULL,
	[TenLinhVuc] [nvarchar](100) NOT NULL,
	[MaNhomLinhVuc] [varchar](5) NULL,
 CONSTRAINT [PK__LinhVuc__318894A0B5992DAA] PRIMARY KEY CLUSTERED 
(
	[MaLinhVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinhVucBaiBao]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LinhVucBaiBao](
	[MaBaiBao] [varchar](5) NOT NULL,
	[MaLinhVuc] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaiBao] ASC,
	[MaLinhVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinhVucNghienCuuNKH]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LinhVucNghienCuuNKH](
	[MaNKH] [varchar](5) NOT NULL,
	[MaLinhVuc] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNKH] ASC,
	[MaLinhVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiHinhDeTai]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiHinhDeTai](
	[MaLoaiDT] [varchar](5) NOT NULL,
	[TenLoaiDT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiHinhDeTai] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NgachVienChuc]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NgachVienChuc](
	[MaNgach] [varchar](5) NOT NULL,
	[TenNgach] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__NgachVie__A2D17F61EBA9628C] PRIMARY KEY CLUSTERED 
(
	[MaNgach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NganhDaoTao]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NganhDaoTao](
	[MaNganhDaoTao] [varchar](5) NOT NULL,
	[TenNganhDaoTao] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__NganhDao__23C81493C683C1F8] PRIMARY KEY CLUSTERED 
(
	[MaNganhDaoTao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NgoaiNguNKH]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NgoaiNguNKH](
	[MaNKH] [varchar](5) NOT NULL,
	[MaTrinhDoNN] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNKH] ASC,
	[MaTrinhDoNN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaKhoaHoc]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaKhoaHoc](
	[MaNKH] [varchar](5) NOT NULL,
	[MaNKHHoSo] [varchar](100) NULL,
	[HoNKH] [nvarchar](50) NULL,
	[TenNKH] [nvarchar](50) NULL,
	[GioiTinhNKH] [varchar](5) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChiLienHe] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[EmailLienHe] [varchar](50) NULL,
	[MaHocHam] [varchar](5) NULL,
	[MaHocVi] [varchar](5) NULL,
	[MaCNDaoTao] [varchar](5) NULL,
	[MaDonViQL] [varchar](5) NULL,
	[AnhDaiDien] [varchar](100) NULL,
	[MaNgachVienChuc] [varchar](5) NULL,
 CONSTRAINT [PK__NhaKhoaH__3A1B9AE831714C6C] PRIMARY KEY CLUSTERED 
(
	[MaNKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaNXB] [varchar](5) NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
	[DiaChiNXB] [nvarchar](100) NULL,
	[DienThoaiNXB] [varchar](50) NULL,
	[DiaChiWeb] [varchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhomLinhVuc]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhomLinhVuc](
	[MaNhomLinhVuc] [varchar](5) NOT NULL,
	[TenNhomLinhVuc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__NhomLinh__1CE24AD60D697542] PRIMARY KEY CLUSTERED 
(
	[MaNhomLinhVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhanLoaiSach]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanLoaiSach](
	[MaLoai] [varchar](5) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__PhanLoai__730A57594A76BE02] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhanLoaiSP]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanLoaiSP](
	[MaPhanLoai] [varchar](5) NOT NULL,
	[TenPhanLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__PhanLoai__E8C0182E25F132BE] PRIMARY KEY CLUSTERED 
(
	[MaPhanLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhanLoaiTapChi]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanLoaiTapChi](
	[MaLoaiTapChi] [varchar](5) NOT NULL,
	[TenLoaiTapChi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__PhanLoai__E5E5F5DC4829635F] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTapChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuaTrinhCongTac]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuaTrinhCongTac](
	[MaNKH] [varchar](5) NOT NULL,
	[MaCT] [varchar](5) NOT NULL,
	[ThoiGianBD] [datetime] NULL,
	[ThoiGIanKT] [datetime] NULL,
	[ChucDanhCT] [nvarchar](100) NULL,
	[MaDonViQL] [varchar](5) NULL,
	[ChucVuCT] [nvarchar](100) NULL,
 CONSTRAINT [PK__QuaTrinh__6869C20F631B7230] PRIMARY KEY CLUSTERED 
(
	[MaNKH] ASC,
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuaTrinhDaoTao]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuaTrinhDaoTao](
	[MaNKH] [varchar](5) NOT NULL,
	[MaQT] [varchar](5) NOT NULL,
	[ThoiGianBD] [datetime] NULL,
	[ThoiGianKT] [datetime] NULL,
	[MaBacDT] [varchar](5) NULL,
	[CoSoDaoTao] [nvarchar](100) NULL,
	[MaNganh] [varchar](5) NULL,
	[NamTotNghiep] [datetime] NULL,
 CONSTRAINT [PK__QuaTrinh__8869C56D6738F421] PRIMARY KEY CLUSTERED 
(
	[MaNKH] ASC,
	[MaQT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SachGiaoTrinh]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SachGiaoTrinh](
	[MaSach] [varchar](5) NOT NULL,
	[MaISBN] [varchar](100) NULL,
	[TenSach] [varchar](255) NOT NULL,
	[MaLoai] [varchar](5) NULL,
	[MaLinhVuc] [varchar](5) NULL,
	[MaNXB] [varchar](5) NULL,
	[NamXuatBan] [date] NULL,
 CONSTRAINT [PK__SachGiao__B235742D37F595A0] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TinhTrangDeTai]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TinhTrangDeTai](
	[MaTinhTrang] [varchar](5) NOT NULL,
	[TenTinhTrang] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__TinhTran__89F8F669B66913ED] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrinhDoNgoaiNgu]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TrinhDoNgoaiNgu](
	[MaTrinhDoNN] [varchar](5) NOT NULL,
	[TenTrinhDo] [nvarchar](50) NOT NULL,
	[CapDo] [nvarchar](50) NULL,
 CONSTRAINT [PK__TrinhDoN__DEB147C377CD3E20] PRIMARY KEY CLUSTERED 
(
	[MaTrinhDoNN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XepLoai]    Script Date: 21/01/2019 18:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XepLoai](
	[MaXepLoai] [varchar](5) NOT NULL,
	[TenXepLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__XepLoai__E87C25C5F435F0D7] PRIMARY KEY CLUSTERED 
(
	[MaXepLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CapTapChi] ([MaCapTapChi], [TenCapTapChi], [ChiChu]) VALUES (N'1', N'ISI', NULL)
INSERT [dbo].[CapTapChi] ([MaCapTapChi], [TenCapTapChi], [ChiChu]) VALUES (N'2', N'HĐCDGS', NULL)
INSERT [dbo].[CapTapChi] ([MaCapTapChi], [TenCapTapChi], [ChiChu]) VALUES (N'3', N'SCOPUS', NULL)
INSERT [dbo].[CapTapChi] ([MaCapTapChi], [TenCapTapChi], [ChiChu]) VALUES (N'4', N'Khác', NULL)
INSERT [dbo].[CapTapChi] ([MaCapTapChi], [TenCapTapChi], [ChiChu]) VALUES (N'5', N'ESCI', NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'1', N'Khoa Công nghệ Thông tin', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'10', N'Khoa Lịch sử', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'11', N'Khoa Ngữ văn', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'12', N'Khoa Sinh học', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'13', N'Khoa Tâm Lý học', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'14', N'Khoa Tiếng Anh', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'15', N'Khoa Tiếng Hàn Quốc', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'16', N'Khoa Tiếng Nga', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'17', N'Khoa Tiếng Nhật', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'18', N'Khoa Tiếng Pháp', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'19', N'Khoa Tiếng Trung', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'2', N'Khoa Địa lí', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'20', N'Khoa Toán - Tin', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'21', N'Khoa Vật lí', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'22', N'Kí túc xá', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'23', N'Nhà xuất bản', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'24', N'Phòng Thanh tra Đào tạo', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'25', N'Phòng Công nghệ Thông tin', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'26', N'Phòng Công tác Chính trị & Học sinh Sinh viên', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'27', N'Phòng Đào tạo', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'28', N'Phòng Hợp tác Quốc tế', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'29', N'Phòng Khoa học Công nghệ-Môi Trường & TCKH', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'3', N'Khoa Giáo dục Chính trị', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'30', N'Phòng Kế hoạch - Tài chính', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'31', N'Phòng Quản trị Thiết bị - Y tế', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'32', N'Phòng Sau Đại học', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'33', N'Phòng Tổ chức - Hành chính', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'34', N'Thư viện', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'35', N'Tổ Giáo dục Nữ công', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'36', N'Trung tâm Ngoại ngữ', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'37', N'Trung tâm Tin học', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'38', N'Trường Trung học Thực hành', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'39', N'Viện Nghiên cứu Giáo dục', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'4', N'Khoa Giáo dục Đặc biệt', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'5', N'Khoa Giáo dục Mầm non', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'6', N'Khoa Giáo dục Quốc phòng', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'7', N'Khoa Giáo dục Thể chất', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'8', N'Khoa Hóa học', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (N'9', N'Khoa Khoa học Giáo dục', NULL, NULL, NULL)
INSERT [dbo].[HocHam] ([MaHocHam], [TenHocHam], [GhiChu]) VALUES (N'GS', N'Giáo sư', NULL)
INSERT [dbo].[HocHam] ([MaHocHam], [TenHocHam], [GhiChu]) VALUES (N'GSDD', N'Giáo sư danh dự', NULL)
INSERT [dbo].[HocHam] ([MaHocHam], [TenHocHam], [GhiChu]) VALUES (N'PGS', N'Phó giáo sư', NULL)
INSERT [dbo].[HocVi] ([MaHocVi], [TenHocVi]) VALUES (N'CD', N'Cao đẳng')
INSERT [dbo].[HocVi] ([MaHocVi], [TenHocVi]) VALUES (N'DH', N'Đại học')
INSERT [dbo].[HocVi] ([MaHocVi], [TenHocVi]) VALUES (N'Khac', N'Khác')
INSERT [dbo].[HocVi] ([MaHocVi], [TenHocVi]) VALUES (N'PT', N'Phổ thông')
INSERT [dbo].[HocVi] ([MaHocVi], [TenHocVi]) VALUES (N'SauTS', N'Sau Tiến sĩ')
INSERT [dbo].[HocVi] ([MaHocVi], [TenHocVi]) VALUES (N'TC', N'Trung Cấp')
INSERT [dbo].[HocVi] ([MaHocVi], [TenHocVi]) VALUES (N'TS', N'Tiến sĩ')
INSERT [dbo].[HocVi] ([MaHocVi], [TenHocVi]) VALUES (N'TSKH', N'Tiến sĩ khoa học')
INSERT [dbo].[HocVi] ([MaHocVi], [TenHocVi]) VALUES (N'ThS', N'Thạc sĩ')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHK01', N'KỸ THUẬT DÂN DỤNG', N'KHKT')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHK02', N'KỸ THUẬT ĐIỆN, KỸ THUẬT ĐIỆN TỬ, KỸ THUẬT THÔNG TIN', N'KHKT')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHK03', N'KỸ THUẬT CƠ KHÍ, CHẾ TẠO MÁY', N'KHKT')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHK04', N'KỸ THUẬT HÓA HỌC', N'KHKT')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHK05', N'KỸ THUẬT VẬT LIỆU VÀ LUYỆN KIM', N'KHKT')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHK06', N'KỸ THUẬT Y HỌC', N'KHKT')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHK07', N'KỸ THUẬT MÔI TRƯỜNG', N'KHKT')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHK08', N'CÔNG NGHỆ SINH HỌC MÔI TRƯỜNG', N'KHKT')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHK09', N'CÔNG NGHỆ SINH HỌC CÔNG NGHIỆP', N'KHKT')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHK10', N'CÔNG NGHỆ NANO', N'KHKT')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHK11', N'KỸ THUẬT THỰC PHẨM VÀ ĐỒ UỐNG', N'KHKT')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHK12', N'KỸ THUẬT VÀ CÔNG NGHỆ KHÁC', N'KHKT')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHN01', N'LỊCH SỬ VÀ KHẢO CỔ HỌC', N'KHNV')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHN02', N'NGÔN NGỮ HỌC VÀ VĂN HỌC', N'KHNV')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHN03', N'TRIẾT HỌC, ĐẠO ĐỨC HỌC VÀ TÔN GIÁO', N'KHNV')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHN04', N'NGHỆ THUẬT', N'KHNV')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHN05', N'KHOA HỌC NHÂN VĂN KHÁC', N'KHNV')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHT01', N'TOÁN HỌC VÀ THỐNG KÊ', N'KHTN')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHT02', N'KHOA HỌC MÁY TÍNH VÀ THÔNG TIN', N'KHTN')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHT03', N'VẬT LÝ', N'KHTN')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHT04', N'HOÁ HỌC', N'KHTN')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHT05', N'CÁC KHOA HỌC TRÁI ĐẤT VÀ MÔI TRƯỜNG LIÊN QUAN', N'KHTN')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHT06', N'SINH HỌC', N'KHTN')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHT07', N'KHOA HỌC TỰ NHIÊN KHÁC', N'KHTN')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHX01', N'TÂM LÝ HỌC', N'KHXH')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHX02', N'KINH TẾ VÀ KINH DOANH', N'KHXH')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHX03', N'KHOA HỌC GIÁO DỤC', N'KHXH')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHX04', N'XÃ HỘI HỌC', N'KHXH')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHX05', N'PHÁP LUẬT', N'KHXH')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHX06', N'KHOA HỌC CHÍNH TRỊ', N'KHXH')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHX07', N'ĐỊA LÝ KINH TẾ VÀ XÃ HỘI', N'KHXH')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHX08', N'THÔNG TIN ĐẠI CHÚNG VÀ TRUYỀN THÔNG', N'KHXH')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'KHX09', N'KHOA HỌC XÃ HỘI KHÁC', N'KHXH')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'NN01', N'TRỒNG TRỌT', N'NNKH')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'NN02', N'CHĂN NUÔI', N'NNKH')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'NN03', N'THÚ Y', N'NNKH')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'NN04', N'LÂM NGHIỆP', N'NNKH')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'NN05', N'THUỶ SẢN', N'NNKH')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'NN06', N'CÔNG NGHỆ SINH HỌC NÔNG NGHIỆP', N'NNKH')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (N'NN07', N'KHOA HỌC NÔNG NGHIỆP KHÁC', N'NNKH')
INSERT [dbo].[LoaiHinhDeTai] ([MaLoaiDT], [TenLoaiDT]) VALUES (N'CB', N'Cơ bản')
INSERT [dbo].[LoaiHinhDeTai] ([MaLoaiDT], [TenLoaiDT]) VALUES (N'UD', N'Ứng dụng')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (N'CS', N'Cán sự')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (N'CV', N'Chuyên viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (N'CVC', N'Chuyên viên chính')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (N'GV', N'Giảng viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (N'GVC', N'Giảng viên chính')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (N'GVCC', N'Giảng viên cao cấp')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (N'GVTH', N'Giáo viên trung học')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (N'KTOAN', N'Kế toán viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (N'KTV', N'Kỹ thuật viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (N'KTVC', N'Kỹ thuật viên chính')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (N'KTVCC', N'Kỹ thuật viên cao cấp')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (N'NCV', N'Nghiên cứu viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (N'NVVT', N'Nhân viên văn thư')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (N'TVV', N'Thư viện viên')
INSERT [dbo].[NhomLinhVuc] ([MaNhomLinhVuc], [TenNhomLinhVuc]) VALUES (N'KHKT', N'KHOA HỌC KỸ THUẬT VÀ CÔNG NGHỆ')
INSERT [dbo].[NhomLinhVuc] ([MaNhomLinhVuc], [TenNhomLinhVuc]) VALUES (N'KHNV', N'KHOA HỌC NHÂN VĂN')
INSERT [dbo].[NhomLinhVuc] ([MaNhomLinhVuc], [TenNhomLinhVuc]) VALUES (N'KHTN', N'KHOA HỌC TỰ NHIÊN')
INSERT [dbo].[NhomLinhVuc] ([MaNhomLinhVuc], [TenNhomLinhVuc]) VALUES (N'KHXH', N'KHOA HỌC XÃ HỘI')
INSERT [dbo].[NhomLinhVuc] ([MaNhomLinhVuc], [TenNhomLinhVuc]) VALUES (N'NNKH', N'KHOA HỌC NÔNG NGHIỆP')
INSERT [dbo].[PhanLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'1', N'Sách chuyên khảo')
INSERT [dbo].[PhanLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'2', N'Giáo trình')
INSERT [dbo].[PhanLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'3', N'Sách tham khảo')
INSERT [dbo].[PhanLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'4', N'Loại khác')
INSERT [dbo].[PhanLoaiSP] ([MaPhanLoai], [TenPhanLoai]) VALUES (N'1', N'Mẫu')
INSERT [dbo].[PhanLoaiSP] ([MaPhanLoai], [TenPhanLoai]) VALUES (N'2', N'Chương trình máy tính')
INSERT [dbo].[PhanLoaiSP] ([MaPhanLoai], [TenPhanLoai]) VALUES (N'3', N'Phưng pháp')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (N'1', N'Tạp chí')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (N'2', N'Báo cáo khoa học')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (N'3', N'Thông báo khoa học')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (N'4', N'Tập san')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (N'5', N'Thông tin khoa học')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (N'6', N'Kỷ yếu Hội nghị/Hội thảo')
INSERT [dbo].[TinhTrangDeTai] ([MaTinhTrang], [TenTinhTrang]) VALUES (N'1', N'Đã hoàn thành')
INSERT [dbo].[TinhTrangDeTai] ([MaTinhTrang], [TenTinhTrang]) VALUES (N'2', N'Đang thực hiện')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (N'AVB1', N'Anh Văn B1', N'B1')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (N'AVB2', N'Anh Văn B2', N'B2')
INSERT [dbo].[XepLoai] ([MaXepLoai], [TenXepLoai]) VALUES (N'0', N'Chưa xếp loại')
INSERT [dbo].[XepLoai] ([MaXepLoai], [TenXepLoai]) VALUES (N'1', N'Không đạt')
INSERT [dbo].[XepLoai] ([MaXepLoai], [TenXepLoai]) VALUES (N'2', N'Trung bình')
INSERT [dbo].[XepLoai] ([MaXepLoai], [TenXepLoai]) VALUES (N'3', N'Khá')
INSERT [dbo].[XepLoai] ([MaXepLoai], [TenXepLoai]) VALUES (N'4', N'Tốt')
ALTER TABLE [dbo].[BaiBao]  WITH CHECK ADD  CONSTRAINT [FK_BaiBao_CapTapChi] FOREIGN KEY([MaCapTapChi])
REFERENCES [dbo].[CapTapChi] ([MaCapTapChi])
GO
ALTER TABLE [dbo].[BaiBao] CHECK CONSTRAINT [FK_BaiBao_CapTapChi]
GO
ALTER TABLE [dbo].[BaiBao]  WITH CHECK ADD  CONSTRAINT [FK_BaiBao_PhanLoaiTapChi] FOREIGN KEY([MaLoaiTapChi])
REFERENCES [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi])
GO
ALTER TABLE [dbo].[BaiBao] CHECK CONSTRAINT [FK_BaiBao_PhanLoaiTapChi]
GO
ALTER TABLE [dbo].[ChuyenMonNKH]  WITH CHECK ADD  CONSTRAINT [ChuyenMonNKH_fk0] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[ChuyenMonNKH] CHECK CONSTRAINT [ChuyenMonNKH_fk0]
GO
ALTER TABLE [dbo].[ChuyenMonNKH]  WITH CHECK ADD  CONSTRAINT [ChuyenMonNKH_fk1] FOREIGN KEY([MaChuyenMon])
REFERENCES [dbo].[ChuyenMon] ([MaChuyenMon])
GO
ALTER TABLE [dbo].[ChuyenMonNKH] CHECK CONSTRAINT [ChuyenMonNKH_fk1]
GO
ALTER TABLE [dbo].[ChuyenNganh]  WITH CHECK ADD  CONSTRAINT [ChuyenNganh_fk0] FOREIGN KEY([MaNganhDaoTao])
REFERENCES [dbo].[NganhDaoTao] ([MaNganhDaoTao])
GO
ALTER TABLE [dbo].[ChuyenNganh] CHECK CONSTRAINT [ChuyenNganh_fk0]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk0] FOREIGN KEY([MaLoaiDeTai])
REFERENCES [dbo].[LoaiHinhDeTai] ([MaLoaiDT])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk0]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk1] FOREIGN KEY([MaCapDeTai])
REFERENCES [dbo].[CapDeTai] ([MaCapDeTai])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk1]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk2] FOREIGN KEY([MaDVChuTri])
REFERENCES [dbo].[DonViChuTri] ([MaDVChuTri])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk2]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk3] FOREIGN KEY([MaDonViQLThucHien])
REFERENCES [dbo].[DonViQL] ([MaDonVi])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk3]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk4] FOREIGN KEY([MaLinhVuc])
REFERENCES [dbo].[LinhVuc] ([MaLinhVuc])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk4]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk5] FOREIGN KEY([MaXepLoai])
REFERENCES [dbo].[XepLoai] ([MaXepLoai])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk5]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk6] FOREIGN KEY([MaTinhTrang])
REFERENCES [dbo].[TinhTrangDeTai] ([MaTinhTrang])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk6]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [DeTai_fk7] FOREIGN KEY([MaPhanLoaiSP])
REFERENCES [dbo].[PhanLoaiSP] ([MaPhanLoai])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [DeTai_fk7]
GO
ALTER TABLE [dbo].[DSBaiBaoDeTai]  WITH CHECK ADD  CONSTRAINT [DSBaiBaoDeTai_fk0] FOREIGN KEY([MaDeTai])
REFERENCES [dbo].[DeTai] ([MaDeTai])
GO
ALTER TABLE [dbo].[DSBaiBaoDeTai] CHECK CONSTRAINT [DSBaiBaoDeTai_fk0]
GO
ALTER TABLE [dbo].[DSBaiBaoDeTai]  WITH CHECK ADD  CONSTRAINT [DSBaiBaoDeTai_fk1] FOREIGN KEY([MaBaiBao])
REFERENCES [dbo].[BaiBao] ([MaBaiBao])
GO
ALTER TABLE [dbo].[DSBaiBaoDeTai] CHECK CONSTRAINT [DSBaiBaoDeTai_fk1]
GO
ALTER TABLE [dbo].[DSNguoiThamGiaBaiBao]  WITH CHECK ADD  CONSTRAINT [DSNguoiThamGiaBaiBao_fk0] FOREIGN KEY([MaBaiBao])
REFERENCES [dbo].[BaiBao] ([MaBaiBao])
GO
ALTER TABLE [dbo].[DSNguoiThamGiaBaiBao] CHECK CONSTRAINT [DSNguoiThamGiaBaiBao_fk0]
GO
ALTER TABLE [dbo].[DSNguoiThamGiaBaiBao]  WITH CHECK ADD  CONSTRAINT [DSNguoiThamGiaBaiBao_fk1] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[DSNguoiThamGiaBaiBao] CHECK CONSTRAINT [DSNguoiThamGiaBaiBao_fk1]
GO
ALTER TABLE [dbo].[DSNguoiThamGiaDeTai]  WITH CHECK ADD  CONSTRAINT [DSNguoiThamGiaDeTai_fk0] FOREIGN KEY([MaDeTai])
REFERENCES [dbo].[DeTai] ([MaDeTai])
GO
ALTER TABLE [dbo].[DSNguoiThamGiaDeTai] CHECK CONSTRAINT [DSNguoiThamGiaDeTai_fk0]
GO
ALTER TABLE [dbo].[DSNguoiThamGiaDeTai]  WITH CHECK ADD  CONSTRAINT [DSNguoiThamGiaDeTai_fk1] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[DSNguoiThamGiaDeTai] CHECK CONSTRAINT [DSNguoiThamGiaDeTai_fk1]
GO
ALTER TABLE [dbo].[DSTacGia]  WITH CHECK ADD  CONSTRAINT [FK_DSTacGia_NhaKhoaHoc] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[DSTacGia] CHECK CONSTRAINT [FK_DSTacGia_NhaKhoaHoc]
GO
ALTER TABLE [dbo].[DSTacGia]  WITH CHECK ADD  CONSTRAINT [FK_DSTacGia_SachGiaoTrinh] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SachGiaoTrinh] ([MaSach])
GO
ALTER TABLE [dbo].[DSTacGia] CHECK CONSTRAINT [FK_DSTacGia_SachGiaoTrinh]
GO
ALTER TABLE [dbo].[KinhPhiDeTai]  WITH CHECK ADD  CONSTRAINT [FK_KinhPhiDeTai_DeTai] FOREIGN KEY([MaDeTai])
REFERENCES [dbo].[DeTai] ([MaDeTai])
GO
ALTER TABLE [dbo].[KinhPhiDeTai] CHECK CONSTRAINT [FK_KinhPhiDeTai_DeTai]
GO
ALTER TABLE [dbo].[LinhVuc]  WITH CHECK ADD  CONSTRAINT [LinhVuc_fk0] FOREIGN KEY([MaNhomLinhVuc])
REFERENCES [dbo].[NhomLinhVuc] ([MaNhomLinhVuc])
GO
ALTER TABLE [dbo].[LinhVuc] CHECK CONSTRAINT [LinhVuc_fk0]
GO
ALTER TABLE [dbo].[LinhVucBaiBao]  WITH CHECK ADD  CONSTRAINT [LinhVucBaiBao_fk0] FOREIGN KEY([MaBaiBao])
REFERENCES [dbo].[BaiBao] ([MaBaiBao])
GO
ALTER TABLE [dbo].[LinhVucBaiBao] CHECK CONSTRAINT [LinhVucBaiBao_fk0]
GO
ALTER TABLE [dbo].[LinhVucBaiBao]  WITH CHECK ADD  CONSTRAINT [LinhVucBaiBao_fk1] FOREIGN KEY([MaLinhVuc])
REFERENCES [dbo].[LinhVuc] ([MaLinhVuc])
GO
ALTER TABLE [dbo].[LinhVucBaiBao] CHECK CONSTRAINT [LinhVucBaiBao_fk1]
GO
ALTER TABLE [dbo].[LinhVucNghienCuuNKH]  WITH CHECK ADD  CONSTRAINT [LinhVucNghienCuuNKH_fk0] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[LinhVucNghienCuuNKH] CHECK CONSTRAINT [LinhVucNghienCuuNKH_fk0]
GO
ALTER TABLE [dbo].[LinhVucNghienCuuNKH]  WITH CHECK ADD  CONSTRAINT [LinhVucNghienCuuNKH_fk1] FOREIGN KEY([MaLinhVuc])
REFERENCES [dbo].[LinhVuc] ([MaLinhVuc])
GO
ALTER TABLE [dbo].[LinhVucNghienCuuNKH] CHECK CONSTRAINT [LinhVucNghienCuuNKH_fk1]
GO
ALTER TABLE [dbo].[NgoaiNguNKH]  WITH CHECK ADD  CONSTRAINT [NgoaiNguNKH_fk0] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[NgoaiNguNKH] CHECK CONSTRAINT [NgoaiNguNKH_fk0]
GO
ALTER TABLE [dbo].[NgoaiNguNKH]  WITH CHECK ADD  CONSTRAINT [NgoaiNguNKH_fk1] FOREIGN KEY([MaTrinhDoNN])
REFERENCES [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN])
GO
ALTER TABLE [dbo].[NgoaiNguNKH] CHECK CONSTRAINT [NgoaiNguNKH_fk1]
GO
ALTER TABLE [dbo].[NhaKhoaHoc]  WITH CHECK ADD  CONSTRAINT [NhaKhoaHoc_fk0] FOREIGN KEY([MaHocHam])
REFERENCES [dbo].[HocHam] ([MaHocHam])
GO
ALTER TABLE [dbo].[NhaKhoaHoc] CHECK CONSTRAINT [NhaKhoaHoc_fk0]
GO
ALTER TABLE [dbo].[NhaKhoaHoc]  WITH CHECK ADD  CONSTRAINT [NhaKhoaHoc_fk1] FOREIGN KEY([MaHocVi])
REFERENCES [dbo].[HocVi] ([MaHocVi])
GO
ALTER TABLE [dbo].[NhaKhoaHoc] CHECK CONSTRAINT [NhaKhoaHoc_fk1]
GO
ALTER TABLE [dbo].[NhaKhoaHoc]  WITH CHECK ADD  CONSTRAINT [NhaKhoaHoc_fk2] FOREIGN KEY([MaCNDaoTao])
REFERENCES [dbo].[ChuyenNganh] ([MaChuyenNganh])
GO
ALTER TABLE [dbo].[NhaKhoaHoc] CHECK CONSTRAINT [NhaKhoaHoc_fk2]
GO
ALTER TABLE [dbo].[NhaKhoaHoc]  WITH CHECK ADD  CONSTRAINT [NhaKhoaHoc_fk3] FOREIGN KEY([MaDonViQL])
REFERENCES [dbo].[DonViQL] ([MaDonVi])
GO
ALTER TABLE [dbo].[NhaKhoaHoc] CHECK CONSTRAINT [NhaKhoaHoc_fk3]
GO
ALTER TABLE [dbo].[NhaKhoaHoc]  WITH CHECK ADD  CONSTRAINT [NhaKhoaHoc_fk4] FOREIGN KEY([MaNgachVienChuc])
REFERENCES [dbo].[NgachVienChuc] ([MaNgach])
GO
ALTER TABLE [dbo].[NhaKhoaHoc] CHECK CONSTRAINT [NhaKhoaHoc_fk4]
GO
ALTER TABLE [dbo].[QuaTrinhCongTac]  WITH CHECK ADD  CONSTRAINT [QuaTrinhCongTac_fk0] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[QuaTrinhCongTac] CHECK CONSTRAINT [QuaTrinhCongTac_fk0]
GO
ALTER TABLE [dbo].[QuaTrinhCongTac]  WITH CHECK ADD  CONSTRAINT [QuaTrinhCongTac_fk1] FOREIGN KEY([MaDonViQL])
REFERENCES [dbo].[DonViQL] ([MaDonVi])
GO
ALTER TABLE [dbo].[QuaTrinhCongTac] CHECK CONSTRAINT [QuaTrinhCongTac_fk1]
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [QuaTrinhDaoTao_fk0] FOREIGN KEY([MaNKH])
REFERENCES [dbo].[NhaKhoaHoc] ([MaNKH])
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [QuaTrinhDaoTao_fk0]
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [QuaTrinhDaoTao_fk1] FOREIGN KEY([MaBacDT])
REFERENCES [dbo].[BacDaoTao] ([MaBacDT])
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [QuaTrinhDaoTao_fk1]
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [QuaTrinhDaoTao_fk2] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[NganhDaoTao] ([MaNganhDaoTao])
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [QuaTrinhDaoTao_fk2]
GO
ALTER TABLE [dbo].[SachGiaoTrinh]  WITH CHECK ADD  CONSTRAINT [FK_SachGiaoTrinh_NhaXuatBan] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NhaXuatBan] ([MaNXB])
GO
ALTER TABLE [dbo].[SachGiaoTrinh] CHECK CONSTRAINT [FK_SachGiaoTrinh_NhaXuatBan]
GO
ALTER TABLE [dbo].[SachGiaoTrinh]  WITH CHECK ADD  CONSTRAINT [SachGiaoTrinh_fk0] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[PhanLoaiSach] ([MaLoai])
GO
ALTER TABLE [dbo].[SachGiaoTrinh] CHECK CONSTRAINT [SachGiaoTrinh_fk0]
GO
ALTER TABLE [dbo].[SachGiaoTrinh]  WITH CHECK ADD  CONSTRAINT [SachGiaoTrinh_fk1] FOREIGN KEY([MaLinhVuc])
REFERENCES [dbo].[LinhVuc] ([MaLinhVuc])
GO
ALTER TABLE [dbo].[SachGiaoTrinh] CHECK CONSTRAINT [SachGiaoTrinh_fk1]
GO
USE [master]
GO
ALTER DATABASE [QLKhoaHoc] SET  READ_WRITE 
GO
