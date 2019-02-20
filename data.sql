USE [QLKhoaHoc]
GO
INSERT [dbo].[ChucNang] ([MaChucNang], [TenChucNang], [GhiChu]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[ChucNang] ([MaChucNang], [TenChucNang], [GhiChu]) VALUES (2, N'User', NULL)
SET IDENTITY_INSERT [dbo].[NganhDaoTao] ON 

INSERT [dbo].[NganhDaoTao] ([MaNganhDaoTao], [TenNganhDaoTao]) VALUES (1, N'Công Nghệ Thông Tin')
INSERT [dbo].[NganhDaoTao] ([MaNganhDaoTao], [TenNganhDaoTao]) VALUES (2, N'Hóa')
INSERT [dbo].[NganhDaoTao] ([MaNganhDaoTao], [TenNganhDaoTao]) VALUES (3, N'Sinh')
INSERT [dbo].[NganhDaoTao] ([MaNganhDaoTao], [TenNganhDaoTao]) VALUES (4, N'Toán')
SET IDENTITY_INSERT [dbo].[NganhDaoTao] OFF
SET IDENTITY_INSERT [dbo].[ChuyenNganh] ON 

INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaNganhDaoTao]) VALUES (1, N'Hệ thống thông ti', 1)
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaNganhDaoTao]) VALUES (2, N'Khoa học máy tính', 1)
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaNganhDaoTao]) VALUES (3, N'Mạng máy tính', 1)
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaNganhDaoTao]) VALUES (4, N'Kiểm thử', 1)
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaNganhDaoTao]) VALUES (5, N'Phương pháp giảng dạy', 2)
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaNganhDaoTao]) VALUES (6, N'Toán ứng dụng', 2)
SET IDENTITY_INSERT [dbo].[ChuyenNganh] OFF
SET IDENTITY_INSERT [dbo].[DonViQL] ON 

INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (1, N'Khoa Công nghệ Thông tin', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (2, N'Khoa Địa lí', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (3, N'Khoa Giáo dục Chính trị', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (4, N'Khoa Giáo dục Đặc biệt', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (5, N'Khoa Giáo dục Mầm non', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (6, N'Khoa Giáo dục Quốc phòng', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (7, N'Khoa Giáo dục Thể chất', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (8, N'Khoa Hóa học', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (9, N'Khoa Khoa học Giáo dục', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (10, N'Khoa Lịch sử', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (11, N'Khoa Ngữ văn', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (12, N'Khoa Sinh học', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (13, N'Khoa Tâm Lý học', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (14, N'Khoa Tiếng Anh', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (15, N'Khoa Tiếng Hàn Quốc', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (16, N'Khoa Tiếng Nga', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (17, N'Khoa Tiếng Nhật', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (18, N'Khoa Tiếng Pháp', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (19, N'Khoa Tiếng Trung', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (20, N'Khoa Toán - Tin', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (21, N'Khoa Vật lí', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (22, N'Kí túc xá', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (23, N'Nhà xuất bản', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (24, N'Phòng Thanh tra Đào tạo', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (25, N'Phòng Công nghệ Thông tin', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (26, N'Phòng Công tác Chính trị & Học sinh Sinh viên', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (27, N'Phòng Đào tạo', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (28, N'Phòng Hợp tác Quốc tế', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (29, N'Phòng Khoa học Công nghệ-Môi Trường & TCKH', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (30, N'Phòng Kế hoạch - Tài chính', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (31, N'Pho`ng Qu?n tr? Thi?t b? - Y t?', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (32, N'Phòng Sau Đại học', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (33, N'Phòng Tổ chức - Hành chính', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (34, N'Thư viện', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (35, N'Tổ Giáo dục Nữ công', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (36, N'Trung tâm Ngoại ngữ', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (37, N'Trung tâm Tin học', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (38, N'Trường Trung học Thực hành', NULL, NULL, NULL)
INSERT [dbo].[DonViQL] ([MaDonVi], [TenDonVI], [DiaChiCQ], [DienThoaiCQ], [EmailCQ]) VALUES (39, N'Viện Nghiên cứu Giáo dục', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DonViQL] OFF
SET IDENTITY_INSERT [dbo].[HocHam] ON 

INSERT [dbo].[HocHam] ([MaHocHam], [TenVietTat], [TenHocHam]) VALUES (1, N'PGS', N'Phó giáo sư')
INSERT [dbo].[HocHam] ([MaHocHam], [TenVietTat], [TenHocHam]) VALUES (2, N'GS', N'Giáo sư')
INSERT [dbo].[HocHam] ([MaHocHam], [TenVietTat], [TenHocHam]) VALUES (3, N'GSDD', N'Giáo sư danh dự')
SET IDENTITY_INSERT [dbo].[HocHam] OFF
SET IDENTITY_INSERT [dbo].[HocVi] ON 

INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (1, N'PT', N'Phổ thông')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (2, N'TC', N'Trung Cấp')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (3, N'CD', N'Cao đẳng')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (4, N'DH', N'Đại học')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (5, N'ThS', N'Thạc sĩ')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (6, N'TS', N'Tiến sĩ')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (7, N'TSKH', N'Tiến sĩ khoa học')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (8, N'SauTS', N'Sau Tiến sĩ')
INSERT [dbo].[HocVi] ([MaHocVi], [TenVietTat], [TenHocVi]) VALUES (9, N'Khac', N'Khác')
SET IDENTITY_INSERT [dbo].[HocVi] OFF
SET IDENTITY_INSERT [dbo].[NgachVienChuc] ON 

INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (1, N'Giảng viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (2, N'Giảng viên chính')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (3, N'Giảng viên cao cấp')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (4, N'Giáo viên trung học')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (5, N'Chuyên viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (6, N'Chuyên viên chính')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (7, N'Thư viện viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (8, N'Kỹ thuật viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (9, N'Kỹ thuật viên cao cấp')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (10, N'Nghiên cứu viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (11, N'Kế toán viên')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (12, N'Kỹ thuật viên chính')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (13, N'Nhân viên văn thư')
INSERT [dbo].[NgachVienChuc] ([MaNgach], [TenNgach]) VALUES (14, N'Cán sự')
SET IDENTITY_INSERT [dbo].[NgachVienChuc] OFF
SET IDENTITY_INSERT [dbo].[NhaKhoaHoc] ON 

INSERT [dbo].[NhaKhoaHoc] ([MaNKH], [MaNKHHoSo], [HoNKH], [TenNKH], [GioiTinhNKH], [NgaySinh], [DiaChiLienHe], [DienThoai], [EmailLienHe], [MaHocHam], [MaHocVi], [MaCNDaoTao], [MaDonViQL], [AnhDaiDien], [AnhCaNhan], [MaNgachVienChuc]) VALUES (1, N'400000.0067', N'Đặng Thị Thuận', N'An', N'Nữ', CAST(0x0000654C00000000 AS DateTime), N'10 B Kiệt 25 Hai Bà Trưng, Thành phố Huế, Thừa Thiên Huế , Thừa Thiên Huế .', N'0913465444', N'dangthithuanan@yahoo.com', 1, 2, 1, 1, N'image5.png', NULL, 1)
INSERT [dbo].[NhaKhoaHoc] ([MaNKH], [MaNKHHoSo], [HoNKH], [TenNKH], [GioiTinhNKH], [NgaySinh], [DiaChiLienHe], [DienThoai], [EmailLienHe], [MaHocHam], [MaHocVi], [MaCNDaoTao], [MaDonViQL], [AnhDaiDien], [AnhCaNhan], [MaNgachVienChuc]) VALUES (2, N'600000.0450', N'Phạm Thị Hải', N'Yến', N'Nữ', CAST(0x00007C2000000000 AS DateTime), N'56 Trần Nhật Duật, Thành phố Huế, Thừa Thiên Huế .', NULL, N'phamhaiyen9408@gmail.com', NULL, 1, 3, 1, N'image10.jpg', NULL, 3)
INSERT [dbo].[NhaKhoaHoc] ([MaNKH], [MaNKHHoSo], [HoNKH], [TenNKH], [GioiTinhNKH], [NgaySinh], [DiaChiLienHe], [DienThoai], [EmailLienHe], [MaHocHam], [MaHocVi], [MaCNDaoTao], [MaDonViQL], [AnhDaiDien], [AnhCaNhan], [MaNgachVienChuc]) VALUES (3, N'100723.0018', N'Kim Hoàng', N'Lộc', N'Nam', CAST(0x0000818E00000000 AS DateTime), NULL, N'0912023782; 023457899134', N'k@gmail.com; test@gmail.com', NULL, NULL, 4, 1, N'image23.png', NULL, 2)
SET IDENTITY_INSERT [dbo].[NhaKhoaHoc] OFF
INSERT [dbo].[NguoiDung] ([Usernames], [Passwords], [MaNKH], [MaChucNang]) VALUES (N'admin', N'e10adc3949ba59abbe56e057f20f883e', 1, 1)
INSERT [dbo].[NguoiDung] ([Usernames], [Passwords], [MaNKH], [MaChucNang]) VALUES (N'user1', N'e10adc3949ba59abbe56e057f20f883e', 2, 2)
INSERT [dbo].[NguoiDung] ([Usernames], [Passwords], [MaNKH], [MaChucNang]) VALUES (N'user2', N'e10adc3949ba59abbe56e057f20f883e', 3, 2)
SET IDENTITY_INSERT [dbo].[BacDaoTao] ON 

INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (1, N'Phổ thông')
INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (2, N'Trung Cấp')
INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (3, N'Cao đẳng')
INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (4, N'Đại học')
INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (5, N'Thạc sĩ')
INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (6, N'Tiến sĩ')
INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (7, N'Sau Tiến sĩ')
INSERT [dbo].[BacDaoTao] ([MaBacDT], [TenBacDT]) VALUES (8, N'Khác')
SET IDENTITY_INSERT [dbo].[BacDaoTao] OFF
SET IDENTITY_INSERT [dbo].[QuaTrinhDaoTao] ON 

INSERT [dbo].[QuaTrinhDaoTao] ([MaQT], [MaNKH], [ThoiGianBD], [ThoiGianKT], [MaBacDT], [CoSoDaoTao], [MaNganh], [NamTotNghiep]) VALUES (1, 1, CAST(0x0000813D00000000 AS DateTime), CAST(0x0000858500000000 AS DateTime), 1, NULL, 1, CAST(0x0000858500000000 AS DateTime))
INSERT [dbo].[QuaTrinhDaoTao] ([MaQT], [MaNKH], [ThoiGianBD], [ThoiGianKT], [MaBacDT], [CoSoDaoTao], [MaNganh], [NamTotNghiep]) VALUES (2, 1, CAST(0x000085C100000000 AS DateTime), CAST(0x0000887D00000000 AS DateTime), 2, NULL, 1, CAST(0x000088D800000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[QuaTrinhDaoTao] OFF
SET IDENTITY_INSERT [dbo].[CapTapChi] ON 

INSERT [dbo].[CapTapChi] ([MaCapTapChi], [TenCapTapChi], [ChiChu]) VALUES (1, N'ISI', NULL)
INSERT [dbo].[CapTapChi] ([MaCapTapChi], [TenCapTapChi], [ChiChu]) VALUES (2, N'HĐCDGS', NULL)
INSERT [dbo].[CapTapChi] ([MaCapTapChi], [TenCapTapChi], [ChiChu]) VALUES (3, N'SCOPUS', NULL)
INSERT [dbo].[CapTapChi] ([MaCapTapChi], [TenCapTapChi], [ChiChu]) VALUES (4, N'Khác', NULL)
INSERT [dbo].[CapTapChi] ([MaCapTapChi], [TenCapTapChi], [ChiChu]) VALUES (5, N'ESCI', NULL)
SET IDENTITY_INSERT [dbo].[CapTapChi] OFF
SET IDENTITY_INSERT [dbo].[PhanLoaiTapChi] ON 

INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (1, N'Tạp chí')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (2, N'Báo cáo khoa học')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (3, N'Thông báo khoa học')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (4, N'Tập san')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (5, N'Thông tin khoa học')
INSERT [dbo].[PhanLoaiTapChi] ([MaLoaiTapChi], [TenLoaiTapChi]) VALUES (6, N'Kỷ yếu Hội nghị/Hội thảo')
SET IDENTITY_INSERT [dbo].[PhanLoaiTapChi] OFF
SET IDENTITY_INSERT [dbo].[BaiBao] ON 

INSERT [dbo].[BaiBao] ([MaBaiBao], [MaISSN], [TenBaiBao], [LaTrongNuoc], [CQXuatBan], [MaLoaiTapChi], [MaCapTapChi], [NamDangBao], [TapPhatHanh], [SoPhatHanh], [TrangBaiBao], [LienKetWeb], [LinkFileUpLoad]) VALUES (1, N'1', N'1', 1, N'1', 1, 1, CAST(0x0D3F0B00 AS Date), N'1', N'1', N'1', N'blablabla', NULL)
INSERT [dbo].[BaiBao] ([MaBaiBao], [MaISSN], [TenBaiBao], [LaTrongNuoc], [CQXuatBan], [MaLoaiTapChi], [MaCapTapChi], [NamDangBao], [TapPhatHanh], [SoPhatHanh], [TrangBaiBao], [LienKetWeb], [LinkFileUpLoad]) VALUES (2, N'2', N'2', 0, N'2', 1, 1, CAST(0x433F0B00 AS Date), N'2', N'2', N'2', N'blablabla', N'New Text Document.txt')
SET IDENTITY_INSERT [dbo].[BaiBao] OFF
SET IDENTITY_INSERT [dbo].[CapDeTai] ON 

INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (1, N'Dự án cấp Nhà nước')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (2, N'Đề tài cấp Bộ')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (3, N'Đề tài cấp Tỉnh')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (4, N'Đề tài cấp Cơ sở')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (5, N'Dự án hợp tác quốc tế')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (6, N'Dự án SXTN cấp Nhà nước')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (7, N'Đề tài độc lập cấp Nhà nước')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (8, N'Đề tài thuộc chương trình TĐ cấp NN')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (9, N'Dự án thuộc chương trình TĐ cấp NN')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (10, N'Nghiên cứu cơ bản')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (11, N'Nhiệm vụ nghiên cứu theo NĐT')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (12, N'Giáo dục và Bảo vệ môi trường')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (13, N'Đề tài trọng điểm cấp Bộ')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (14, N'Dự án SXTN cấp Bộ')
INSERT [dbo].[CapDeTai] ([MaCapDeTai], [TenCapDeTai]) VALUES (15, N'Đề tài cấp Đại học Huế')
SET IDENTITY_INSERT [dbo].[CapDeTai] OFF
SET IDENTITY_INSERT [dbo].[DonViChuTri] ON 

INSERT [dbo].[DonViChuTri] ([MaDVChuTri], [TenDVChuTri], [DiaChi]) VALUES (1, N'Đại học Sư Phạm Tp Hồ Chí Minh', N'Tp HCM')
INSERT [dbo].[DonViChuTri] ([MaDVChuTri], [TenDVChuTri], [DiaChi]) VALUES (2, N'Đại học Huế', N'Thừa Thiên Hứa')
SET IDENTITY_INSERT [dbo].[DonViChuTri] OFF
SET IDENTITY_INSERT [dbo].[NhomLinhVuc] ON 

INSERT [dbo].[NhomLinhVuc] ([MaNhomLinhVuc], [TenNhomLinhVuc]) VALUES (1, N'KHOA HỌC TỰ NHIÊN')
INSERT [dbo].[NhomLinhVuc] ([MaNhomLinhVuc], [TenNhomLinhVuc]) VALUES (2, N'KHOA HỌC XÃ HỘI')
INSERT [dbo].[NhomLinhVuc] ([MaNhomLinhVuc], [TenNhomLinhVuc]) VALUES (3, N'KHOA HỌC NHÂN VĂN')
INSERT [dbo].[NhomLinhVuc] ([MaNhomLinhVuc], [TenNhomLinhVuc]) VALUES (4, N'KHOA HỌC KỸ THUẬT VÀ CÔNG NGHỆ')
INSERT [dbo].[NhomLinhVuc] ([MaNhomLinhVuc], [TenNhomLinhVuc]) VALUES (5, N'KHOA HỌC NÔNG NGHIỆP')
SET IDENTITY_INSERT [dbo].[NhomLinhVuc] OFF
SET IDENTITY_INSERT [dbo].[LinhVuc] ON 

INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (1, N'TOÁN HỌC VÀ THỐNG KÊ', 1)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (2, N'KHOA HỌC MÁY TÍNH VÀ THÔNG TIN', 1)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (3, N'VẬT LÝ', 1)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (4, N'HOÁ HỌC', 1)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (5, N'CÁC KHOA HỌC TRÁI ĐẤT VÀ MÔI TRƯỜNG LIÊN QUAN', 1)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (6, N'SINH HỌC', 1)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (7, N'KHOA HỌC TỰ NHIÊN KHÁC', 1)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (8, N'TÂM LÝ HỌC', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (9, N'KINH TẾ VÀ KINH DOANH', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (10, N'KHOA HỌC GIÁO DỤC', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (11, N'XÃ HỘI HỌC', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (12, N'PHÁP LUẬT', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (13, N'KHOA HỌC CHÍNH TRỊ', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (14, N'ĐỊA LÝ KINH TẾ VÀ XÃ HỘI', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (15, N'THÔNG TIN ĐẠI CHÚNG VÀ TRUYỀN THÔNG', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (16, N'KHOA HỌC XÃ HỘI KHÁC', 2)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (17, N'LỊCH SỬ VÀ KHẢO CỔ HỌC', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (18, N'NGÔN NGỮ HỌC VÀ VĂN HỌC', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (19, N'TRIẾT HỌC, ĐẠO ĐỨC HỌC VÀ TÔN GIÁO', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (20, N'NGHỆ THUẬT', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (21, N'KHOA HỌC NHÂN VĂN KHÁC', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (22, N'KỸ THUẬT DÂN DỤNG', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (23, N'KỸ THUẬT ĐIỆN, KỸ THUẬT ĐIỆN TỬ, KỸ THUẬT THÔNG TIN', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (24, N'KỸ THUẬT CƠ KHÍ, CHẾ TẠO MÁY', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (25, N'KỸ THUẬT HÓA HỌC', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (26, N'KỸ THUẬT VẬT LIỆU VÀ LUYỆN KIM', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (27, N'KỸ THUẬT Y HỌC', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (28, N'KỸ THUẬT MÔI TRƯỜNG', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (29, N'CÔNG NGHỆ SINH HỌC MÔI TRƯỜNG', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (30, N'CÔNG NGHỆ SINH HỌC CÔNG NGHIỆP', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (31, N'CÔNG NGHỆ NANO', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (32, N'KỸ THUẬT THỰC PHẨM VÀ ĐỒ UỐNG', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (33, N'KỸ THUẬT VÀ CÔNG NGHỆ KHÁC', 3)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (34, N'TRỒNG TRỌT', 4)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (35, N'CHĂN NUÔI', 4)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (36, N'THÚ Y', 4)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (37, N'LÂM NGHIỆP', 4)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (38, N'THUỶ SẢN', 4)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (39, N'CÔNG NGHỆ SINH HỌC NÔNG NGHIỆP', 4)
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc], [MaNhomLinhVuc]) VALUES (40, N'KHOA HỌC NÔNG NGHIỆP KHÁC', 4)
SET IDENTITY_INSERT [dbo].[LinhVuc] OFF
SET IDENTITY_INSERT [dbo].[LoaiHinhDeTai] ON 

INSERT [dbo].[LoaiHinhDeTai] ([MaLoaiDT], [TenLoaiDT]) VALUES (1, N'Cơ bản')
INSERT [dbo].[LoaiHinhDeTai] ([MaLoaiDT], [TenLoaiDT]) VALUES (2, N'Ứng dụng')
SET IDENTITY_INSERT [dbo].[LoaiHinhDeTai] OFF
SET IDENTITY_INSERT [dbo].[PhanLoaiSP] ON 

INSERT [dbo].[PhanLoaiSP] ([MaPhanLoai], [TenPhanLoai]) VALUES (1, N'Mẫu')
INSERT [dbo].[PhanLoaiSP] ([MaPhanLoai], [TenPhanLoai]) VALUES (2, N'Chương trình máy tính')
INSERT [dbo].[PhanLoaiSP] ([MaPhanLoai], [TenPhanLoai]) VALUES (3, N'Phưng pháp')
SET IDENTITY_INSERT [dbo].[PhanLoaiSP] OFF
SET IDENTITY_INSERT [dbo].[TinhTrangDeTai] ON 

INSERT [dbo].[TinhTrangDeTai] ([MaTinhTrang], [TenTinhTrang]) VALUES (1, N'Đã hoàn thành')
INSERT [dbo].[TinhTrangDeTai] ([MaTinhTrang], [TenTinhTrang]) VALUES (2, N'Đang thực hiện')
SET IDENTITY_INSERT [dbo].[TinhTrangDeTai] OFF
SET IDENTITY_INSERT [dbo].[XepLoai] ON 

INSERT [dbo].[XepLoai] ([MaXepLoai], [TenXepLoai]) VALUES (1, N'Chưa xếp loại')
INSERT [dbo].[XepLoai] ([MaXepLoai], [TenXepLoai]) VALUES (2, N'Không đạt')
INSERT [dbo].[XepLoai] ([MaXepLoai], [TenXepLoai]) VALUES (3, N'Trung bình')
INSERT [dbo].[XepLoai] ([MaXepLoai], [TenXepLoai]) VALUES (4, N'Khá')
INSERT [dbo].[XepLoai] ([MaXepLoai], [TenXepLoai]) VALUES (5, N'Tốt')
SET IDENTITY_INSERT [dbo].[XepLoai] OFF
SET IDENTITY_INSERT [dbo].[DeTai] ON 

INSERT [dbo].[DeTai] ([MaDeTai], [MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (1, N'B2018-DHH-08-GENe', N'Nghiên cứu bảo tồn Quýt Hương Cần ở Thừa Thiên Huế', 1, 1, 1, 1, 1, N'Thu thập, lưu giữ, đánh giá ban đầu, đánh giá chi tiết, tư liệu hóa, chia sẻ nguồn gen.', N'Nghiên cứu gen giống Quýt lai ', N'Tạo bộ Gen mới tối ưu', CAST(0xD73D0B00 AS Date), CAST(0x233F0B00 AS Date), 1, 1, 1, NULL, N'http://csdlkhoahoc.hueuni.edu.vn/index.php/topic', NULL)
INSERT [dbo].[DeTai] ([MaDeTai], [MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (2, N'CT- 2018-DHH-03', N'Nghiên cứu chế tạo Kit phát hiện vi khuẩn Vibrio parahaemolyticus gây bệnh lở loét ở cá', 2, 2, 1, 3, 2, N'mục tiêu', N'nội dung đề tài', N'kết quả đè tài', CAST(0xA43C0B00 AS Date), CAST(0x043F0B00 AS Date), 3, 2, 2, NULL, N'https://vnexpress.net/', N'baocao1.pdf')
INSERT [dbo].[DeTai] ([MaDeTai], [MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (7, N'123', N'123', 1, 1, 1, 1, 1, N'123', N'123', N'123', CAST(0x423F0B00 AS Date), CAST(0x433F0B00 AS Date), 1, 1, 1, NULL, N'blablabla', N'New Text Document.txt')
INSERT [dbo].[DeTai] ([MaDeTai], [MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (8, N'123', N'123', 1, 1, 1, 1, 1, N'123', N'123', N'123', CAST(0x433F0B00 AS Date), CAST(0x443F0B00 AS Date), 1, 1, 1, NULL, N'blablabla', N'New Text Document.txt')
INSERT [dbo].[DeTai] ([MaDeTai], [MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (9, N'123', N'123', 1, 1, 1, 1, 1, N'123', N'123', N'123', CAST(0x423F0B00 AS Date), CAST(0x433F0B00 AS Date), 1, 1, 1, NULL, N'blablabla', N'New Text Document.txt')
INSERT [dbo].[DeTai] ([MaDeTai], [MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (10, N'456', N'456', 1, 1, 1, 1, 1, N'456', N'456', N'456', CAST(0x423F0B00 AS Date), CAST(0x433F0B00 AS Date), 1, 1, 1, NULL, N'blablabla', N'New Text Document.txt')
INSERT [dbo].[DeTai] ([MaDeTai], [MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (11, N'1', N'1', 2, 2, 2, 10, 16, N'1', N'1', N'1', CAST(0x263F0B00 AS Date), CAST(0x433F0B00 AS Date), 3, 2, 2, NULL, N'blablabla', N'New Text Document.txt')
SET IDENTITY_INSERT [dbo].[DeTai] OFF
INSERT [dbo].[DSBaiBaoDeTai] ([MaDeTai], [MaBaiBao], [GhiChu]) VALUES (1, 1, NULL)
INSERT [dbo].[DSBaiBaoDeTai] ([MaDeTai], [MaBaiBao], [GhiChu]) VALUES (1, 2, NULL)
INSERT [dbo].[DSBaiBaoDeTai] ([MaDeTai], [MaBaiBao], [GhiChu]) VALUES (2, 1, NULL)
INSERT [dbo].[DSBaiBaoDeTai] ([MaDeTai], [MaBaiBao], [GhiChu]) VALUES (2, 2, NULL)
INSERT [dbo].[DSNguoiThamGiaBaiBao] ([MaBaiBao], [MaNKH], [LaTacGiaChinh]) VALUES (1, 2, 0)
INSERT [dbo].[DSNguoiThamGiaBaiBao] ([MaBaiBao], [MaNKH], [LaTacGiaChinh]) VALUES (1, 3, 0)
INSERT [dbo].[DSNguoiThamGiaBaiBao] ([MaBaiBao], [MaNKH], [LaTacGiaChinh]) VALUES (2, 2, 0)
INSERT [dbo].[DSNguoiThamGiaBaiBao] ([MaBaiBao], [MaNKH], [LaTacGiaChinh]) VALUES (2, 3, 0)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 1)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 2)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 3)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 4)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 5)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 6)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 7)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 8)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 9)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 10)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 11)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 12)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 13)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 14)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 15)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 16)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 17)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 18)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 19)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 20)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 21)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 22)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 23)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 24)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 25)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 26)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 27)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 28)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 29)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 30)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 31)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 32)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 33)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 34)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 35)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 36)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 37)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 38)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 39)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (1, 40)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (2, 1)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (2, 2)
INSERT [dbo].[LinhVucBaiBao] ([MaBaiBao], [MaLinhVuc]) VALUES (2, 4)
SET IDENTITY_INSERT [dbo].[ChuyenMon] ON 

INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (1, N'Chuyên môn 1')
INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (2, N'Chuyên môn 2')
INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (3, N'Chuyên môn 3')
INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (4, N'Chuyên môn 4')
INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (5, N'Chuyên môn 5')
INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (6, N'Chuyên môn 6')
INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (7, N'Chuyên môn 7')
INSERT [dbo].[ChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (8, N'Chuyên môn 8')
SET IDENTITY_INSERT [dbo].[ChuyenMon] OFF
INSERT [dbo].[ChuyenMonNKH] ([MaNKH], [MaChuyenMon], [NgayCapNhat]) VALUES (1, 1, CAST(0x0000A85B00000000 AS DateTime))
INSERT [dbo].[ChuyenMonNKH] ([MaNKH], [MaChuyenMon], [NgayCapNhat]) VALUES (1, 2, CAST(0x0000A85B00000000 AS DateTime))
INSERT [dbo].[ChuyenMonNKH] ([MaNKH], [MaChuyenMon], [NgayCapNhat]) VALUES (2, 3, CAST(0x0000A85C00000000 AS DateTime))
INSERT [dbo].[ChuyenMonNKH] ([MaNKH], [MaChuyenMon], [NgayCapNhat]) VALUES (3, 2, CAST(0x0000A85F00000000 AS DateTime))
INSERT [dbo].[DSNguoiThamGiaDeTai] ([MaDeTai], [MaNKH], [LaChuNhiem]) VALUES (1, 1, 1)
INSERT [dbo].[DSNguoiThamGiaDeTai] ([MaDeTai], [MaNKH], [LaChuNhiem]) VALUES (1, 3, 0)
INSERT [dbo].[DSNguoiThamGiaDeTai] ([MaDeTai], [MaNKH], [LaChuNhiem]) VALUES (2, 1, 0)
INSERT [dbo].[DSNguoiThamGiaDeTai] ([MaDeTai], [MaNKH], [LaChuNhiem]) VALUES (2, 2, 1)
INSERT [dbo].[DSNguoiThamGiaDeTai] ([MaDeTai], [MaNKH], [LaChuNhiem]) VALUES (2, 3, 0)
INSERT [dbo].[DSNguoiThamGiaDeTai] ([MaDeTai], [MaNKH], [LaChuNhiem]) VALUES (11, 2, 0)
INSERT [dbo].[DSNguoiThamGiaDeTai] ([MaDeTai], [MaNKH], [LaChuNhiem]) VALUES (11, 3, 0)
SET IDENTITY_INSERT [dbo].[KinhPhiDeTai] ON 

INSERT [dbo].[KinhPhiDeTai] ([MaPhi], [MaDeTai], [LoaiKinhPhi], [NamTiepNhan], [SoTien], [LoaiTien]) VALUES (3, 1, N'nha nuoc', CAST(0x0D3F0B00 AS Date), 123123, N'vnd')
INSERT [dbo].[KinhPhiDeTai] ([MaPhi], [MaDeTai], [LoaiKinhPhi], [NamTiepNhan], [SoTien], [LoaiTien]) VALUES (4, 7, N'nha nuoc', CAST(0x0D3F0B00 AS Date), 123123, N'vnd')
INSERT [dbo].[KinhPhiDeTai] ([MaPhi], [MaDeTai], [LoaiKinhPhi], [NamTiepNhan], [SoTien], [LoaiTien]) VALUES (5, 8, N'nha nuoc', CAST(0x0D3F0B00 AS Date), 123123, N'vnd')
INSERT [dbo].[KinhPhiDeTai] ([MaPhi], [MaDeTai], [LoaiKinhPhi], [NamTiepNhan], [SoTien], [LoaiTien]) VALUES (6, 9, N'nha nuoc', CAST(0x0D3F0B00 AS Date), 123123, N'vnd')
INSERT [dbo].[KinhPhiDeTai] ([MaPhi], [MaDeTai], [LoaiKinhPhi], [NamTiepNhan], [SoTien], [LoaiTien]) VALUES (7, 10, N'nha nuoc', CAST(0x0D3F0B00 AS Date), 123123, N'vnd')
INSERT [dbo].[KinhPhiDeTai] ([MaPhi], [MaDeTai], [LoaiKinhPhi], [NamTiepNhan], [SoTien], [LoaiTien]) VALUES (8, 1, N'tu nhan', CAST(0x0D3F0B00 AS Date), 4000, N'vnd')
INSERT [dbo].[KinhPhiDeTai] ([MaPhi], [MaDeTai], [LoaiKinhPhi], [NamTiepNhan], [SoTien], [LoaiTien]) VALUES (9, 11, N'nha nuoc', CAST(0x0D3F0B00 AS Date), 123123, N'vnd')
SET IDENTITY_INSERT [dbo].[KinhPhiDeTai] OFF
SET IDENTITY_INSERT [dbo].[QuaTrinhCongTac] ON 

INSERT [dbo].[QuaTrinhCongTac] ([MaCT], [MaNKH], [ThoiGianBD], [ThoiGIanKT], [ChucDanhCT], [MaDonViQL], [ChucVuCT]) VALUES (1, 1, CAST(0x0000988A00000000 AS DateTime), CAST(0x00009A3500000000 AS DateTime), N'Tổ phó', 1, NULL)
INSERT [dbo].[QuaTrinhCongTac] ([MaCT], [MaNKH], [ThoiGianBD], [ThoiGIanKT], [ChucDanhCT], [MaDonViQL], [ChucVuCT]) VALUES (2, 1, CAST(0x00009A5200000000 AS DateTime), CAST(0x0000A9DD00000000 AS DateTime), N'Tổ trường', 1, NULL)
INSERT [dbo].[QuaTrinhCongTac] ([MaCT], [MaNKH], [ThoiGianBD], [ThoiGIanKT], [ChucDanhCT], [MaDonViQL], [ChucVuCT]) VALUES (3, 2, CAST(0x00009BBF00000000 AS DateTime), CAST(0x00009D2C00000000 AS DateTime), N'Bí thư', 1, NULL)
SET IDENTITY_INSERT [dbo].[QuaTrinhCongTac] OFF
INSERT [dbo].[LinhVucNghienCuuNKH] ([MaNKH], [MaLinhVuc]) VALUES (1, 3)
INSERT [dbo].[LinhVucNghienCuuNKH] ([MaNKH], [MaLinhVuc]) VALUES (1, 8)
INSERT [dbo].[LinhVucNghienCuuNKH] ([MaNKH], [MaLinhVuc]) VALUES (1, 9)
INSERT [dbo].[LinhVucNghienCuuNKH] ([MaNKH], [MaLinhVuc]) VALUES (2, 10)
INSERT [dbo].[LinhVucNghienCuuNKH] ([MaNKH], [MaLinhVuc]) VALUES (2, 30)
INSERT [dbo].[LinhVucNghienCuuNKH] ([MaNKH], [MaLinhVuc]) VALUES (3, 2)
INSERT [dbo].[LinhVucNghienCuuNKH] ([MaNKH], [MaLinhVuc]) VALUES (3, 8)
SET IDENTITY_INSERT [dbo].[NhaXuatBan] ON 

INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChiNXB], [DienThoaiNXB], [DiaChiWeb]) VALUES (1, N'NXB ĐH Sư Phạm TpHCM', N'280 ADV P4 Q5', NULL, NULL)
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChiNXB], [DienThoaiNXB], [DiaChiWeb]) VALUES (2, N'NXB Kim Đồng', N'Cống Quỳnh, Q1', NULL, NULL)
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChiNXB], [DienThoaiNXB], [DiaChiWeb]) VALUES (3, N'NXB Hoa Học Trò', N'Phạm Ngũ Lão, Q1', NULL, NULL)
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChiNXB], [DienThoaiNXB], [DiaChiWeb]) VALUES (4, N'NXB Thanh Niên', N'Cách Mạng Tháng 8, Q3', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NhaXuatBan] OFF
SET IDENTITY_INSERT [dbo].[PhanLoaiSach] ON 

INSERT [dbo].[PhanLoaiSach] ([MaLoai], [TenLoai]) VALUES (1, N'Sách chuyên khảo')
INSERT [dbo].[PhanLoaiSach] ([MaLoai], [TenLoai]) VALUES (2, N'Giáo trình')
INSERT [dbo].[PhanLoaiSach] ([MaLoai], [TenLoai]) VALUES (3, N'Sách tham khảo')
INSERT [dbo].[PhanLoaiSach] ([MaLoai], [TenLoai]) VALUES (4, N'Loại khác')
SET IDENTITY_INSERT [dbo].[PhanLoaiSach] OFF
SET IDENTITY_INSERT [dbo].[TrinhDoNgoaiNgu] ON 

INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (1, N'Anh Văn B1', N'Khung 6 bậc')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (2, N'Anh Văn B2', N'Khung 6 bậc')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (3, N'Anh Văn Toeic', N'Toeic')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (4, N'Anh Văn Giao tiếp cơ bản', N'Cơ bản')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (5, N'Tiếng Nhật N1', N'N1')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (6, N'Tiếng Nhật N2', N'N2')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (7, N'Tiếng Nhật N3', N'N3')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (8, N'Tiếng Nhật N4', N'N4')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (9, N'Tiếng Nhật N5', N'N5')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (10, N'Tiếng Pháp', NULL)
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (11, N'Tiếng Đức', NULL)
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (12, N'Tiếng Trung', NULL)
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (13, N'Tiếng Nga', NULL)
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTrinhDoNN], [TenTrinhDo], [CapDo]) VALUES (14, N'Tiếng Hàn', NULL)
SET IDENTITY_INSERT [dbo].[TrinhDoNgoaiNgu] OFF
INSERT [dbo].[NgoaiNguNKH] ([MaNKH], [MaTrinhDoNN]) VALUES (1, 8)
INSERT [dbo].[NgoaiNguNKH] ([MaNKH], [MaTrinhDoNN]) VALUES (1, 10)
INSERT [dbo].[NgoaiNguNKH] ([MaNKH], [MaTrinhDoNN]) VALUES (2, 2)
INSERT [dbo].[NgoaiNguNKH] ([MaNKH], [MaTrinhDoNN]) VALUES (2, 7)
INSERT [dbo].[NgoaiNguNKH] ([MaNKH], [MaTrinhDoNN]) VALUES (3, 4)
INSERT [dbo].[NgoaiNguNKH] ([MaNKH], [MaTrinhDoNN]) VALUES (3, 9)
INSERT [dbo].[NgoaiNguNKH] ([MaNKH], [MaTrinhDoNN]) VALUES (3, 12)
