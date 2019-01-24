USE [QLKhoaHoc]
GO

INSERT [BacDaoTao] ([TenBacDT]) VALUES 
(N'Phổ thông'),(N'Trung Cấp'), (N'Cao đẳng'), (N'Đại học'), (N'Thạc sĩ'), (N'Tiến sĩ'), (N'Sau Tiến sĩ'), (N'Khác')

INSERT [dbo].[HocVi] ([TenVietTat], [TenHocVi]) VALUES 
(N'PT', N'Phổ thông'), (N'TC', N'Trung Cấp'), (N'CD', N'Cao đẳng'), (N'DH', N'Đại học'), (N'ThS', N'Thạc sĩ'),
(N'TS', N'Tiến sĩ'), (N'TSKH', N'Tiến sĩ khoa học'), (N'SauTS', N'Sau Tiến sĩ'), (N'Khac', N'Khác')

go
Insert HocHam ([TenVietTat], [TenHocHam]) values('PGS', N'Phó giáo sư'),
('GS', N'Giáo sư'), ('GSDD', N'Giáo sư danh dự')

go
Insert NgachVienChuc (TenNgach) values 
(N'Giảng viên'), (N'Giảng viên chính'), (N'Giảng viên cao cấp'), (N'Giáo viên trung học'), (N'Chuyên viên'),
(N'Chuyên viên chính'), (N'Thư viện viên'), (N'Kỹ thuật viên'),(N'Kỹ thuật viên cao cấp'), (N'Nghiên cứu viên'),
(N'Kế toán viên'), (N'Kỹ thuật viên chính'),(N'Nhân viên văn thư'), (N'Cán sự')

go
Insert NhomLinhVuc (TenNhomLinhVuc) values
(N'KHOA HỌC TỰ NHIÊN'),
(N'KHOA HỌC XÃ HỘI'),
(N'KHOA HỌC NHÂN VĂN'),
(N'KHOA HỌC KỸ THUẬT VÀ CÔNG NGHỆ'),
(N'KHOA HỌC NÔNG NGHIỆP')

go
Insert LinhVuc (TenLinhVuc, MaNhomLinhVuc) values
(N'TOÁN HỌC VÀ THỐNG KÊ', 1),
(N'KHOA HỌC MÁY TÍNH VÀ THÔNG TIN',1),
(N'VẬT LÝ',1),
(N'HOÁ HỌC',1),
(N'CÁC KHOA HỌC TRÁI ĐẤT VÀ MÔI TRƯỜNG LIÊN QUAN',1),
(N'SINH HỌC',1),
(N'KHOA HỌC TỰ NHIÊN KHÁC',1)
Insert LinhVuc (TenLinhVuc, MaNhomLinhVuc) values
(N'TÂM LÝ HỌC',2),
(N'KINH TẾ VÀ KINH DOANH',2),
(N'KHOA HỌC GIÁO DỤC',2),
(N'XÃ HỘI HỌC',2),
(N'PHÁP LUẬT',2),
(N'KHOA HỌC CHÍNH TRỊ',2),
(N'ĐỊA LÝ KINH TẾ VÀ XÃ HỘI',2),
(N'THÔNG TIN ĐẠI CHÚNG VÀ TRUYỀN THÔNG',2),
(N'KHOA HỌC XÃ HỘI KHÁC',2)
Insert LinhVuc values
(N'LỊCH SỬ VÀ KHẢO CỔ HỌC',3),
(N'NGÔN NGỮ HỌC VÀ VĂN HỌC',3),
(N'TRIẾT HỌC, ĐẠO ĐỨC HỌC VÀ TÔN GIÁO',3),
(N'NGHỆ THUẬT',3),
(N'KHOA HỌC NHÂN VĂN KHÁC',3)
Insert LinhVuc values
(N'KỸ THUẬT DÂN DỤNG',3),
(N'KỸ THUẬT ĐIỆN, KỸ THUẬT ĐIỆN TỬ, KỸ THUẬT THÔNG TIN',3),
(N'KỸ THUẬT CƠ KHÍ, CHẾ TẠO MÁY',3),
(N'KỸ THUẬT HÓA HỌC',3),
(N'KỸ THUẬT VẬT LIỆU VÀ LUYỆN KIM',3),
(N'KỸ THUẬT Y HỌC',3),
(N'KỸ THUẬT MÔI TRƯỜNG',3),
(N'CÔNG NGHỆ SINH HỌC MÔI TRƯỜNG',3),
(N'CÔNG NGHỆ SINH HỌC CÔNG NGHIỆP',3),
(N'CÔNG NGHỆ NANO',3),
(N'KỸ THUẬT THỰC PHẨM VÀ ĐỒ UỐNG',3),
(N'KỸ THUẬT VÀ CÔNG NGHỆ KHÁC',3)
Insert LinhVuc values
(N'TRỒNG TRỌT',4),
(N'CHĂN NUÔI',4),
(N'THÚ Y',4),
(N'LÂM NGHIỆP',4),
(N'THUỶ SẢN',4),
(N'CÔNG NGHỆ SINH HỌC NÔNG NGHIỆP',4),
(N'KHOA HỌC NÔNG NGHIỆP KHÁC',4)


go
Insert DonViQL (TenDonVi) Values
(N'Khoa Công nghệ Thông tin'),
(N'Khoa Địa lí'),
(N'Khoa Giáo dục Chính trị'),
(N'Khoa Giáo dục Đặc biệt'),
(N'Khoa Giáo dục Mầm non'),
(N'Khoa Giáo dục Quốc phòng'),
(N'Khoa Giáo dục Thể chất'),
(N'Khoa Hóa học'),
(N'Khoa Khoa học Giáo dục'),
(N'Khoa Lịch sử'),
(N'Khoa Ngữ văn'),
(N'Khoa Sinh học'),
(N'Khoa Tâm Lý học'),
(N'Khoa Tiếng Anh'),
(N'Khoa Tiếng Hàn Quốc'),
(N'Khoa Tiếng Nga'),
(N'Khoa Tiếng Nhật'),
(N'Khoa Tiếng Pháp'),
(N'Khoa Tiếng Trung'),
(N'Khoa Toán - Tin'),
(N'Khoa Vật lí'),
(N'Kí túc xá'),
(N'Nhà xuất bản'),
(N'Phòng Thanh tra Đào tạo'),
(N'Phòng Công nghệ Thông tin'),
(N'Phòng Công tác Chính trị & Học sinh Sinh viên'),
(N'Phòng Đào tạo'),
(N'Phòng Hợp tác Quốc tế'),
(N'Phòng Khoa học Công nghệ-Môi Trường & TCKH'),
(N'Phòng Kế hoạch - Tài chính'),
('Phòng Quản trị Thiết bị - Y tế'),
(N'Phòng Sau Đại học'),
(N'Phòng Tổ chức - Hành chính'),
(N'Thư viện'),
(N'Tổ Giáo dục Nữ công'),
(N'Trung tâm Ngoại ngữ'),
(N'Trung tâm Tin học'),
(N'Trường Trung học Thực hành'),
(N'Viện Nghiên cứu Giáo dục')

go
insert into PhanLoaiTapChi values
(N'Tạp chí'),
(N'Báo cáo khoa học'),
(N'Thông báo khoa học'),
(N'Tập san'),
(N'Thông tin khoa học'),
(N'Kỷ yếu Hội nghị/Hội thảo')

go
insert into CapTapChi(TenCapTapChi) values
(N'ISI'), (N'HĐCDGS'), (N'SCOPUS'), (N'Khác'), (N'ESCI')

go
insert into PhanLoaiSach(TenLoai) values
(N'Sách chuyên khảo'),
(N'Giáo trình'),
(N'Sách tham khảo'),
(N'Loại khác')

go
insert into PhanLoaiSP values
(N'Mẫu'),
(N'Chương trình máy tính'),
(N'Phưng pháp')

go
insert into TinhTrangDeTai values
( N'Đã hoàn thành'),
(N'Đang thực hiện')

go
insert into XepLoai values
(N'Chưa xếp loại'),
(N'Không đạt'),
(N'Trung bình'),
(N'Khá'),
(N'Tốt')

go
insert into LoaiHinhDeTai (TenLoaiDT) values
(N'Cơ bản'),
(N'Ứng dụng')

go
insert into CapDeTai (TenCapDeTai) values
(N'Dự án cấp Nhà nước'),
(N'Đề tài cấp Bộ'),
(N'Đề tài cấp Tỉnh'),
(N'Đề tài cấp Cơ sở'),
(N'Dự án hợp tác quốc tế'),
(N'Dự án SXTN cấp Nhà nước'),
(N'Đề tài độc lập cấp Nhà nước'),
(N'Đề tài thuộc chương trình TĐ cấp NN'),
(N'Dự án thuộc chương trình TĐ cấp NN'),
(N'Nghiên cứu cơ bản'),
(N'Nhiệm vụ nghiên cứu theo NĐT'),
(N'Giáo dục và Bảo vệ môi trường'),
(N'Đề tài trọng điểm cấp Bộ'),
(N'Dự án SXTN cấp Bộ'),
(N'Đề tài cấp Đại học Huế')

go
INSERT [TrinhDoNgoaiNgu] ([TenTrinhDo], [CapDo]) VALUES
(N'Anh Văn B1', N'Khung 6 bậc'),  (N'Anh Văn B2', N'Khung 6 bậc'), (N'Anh Văn Toeic', N'Toeic'), (N'Anh Văn Giao tiếp cơ bản', N'Cơ bản'),
(N'Tiếng Nhật N1', N'N1'), (N'Tiếng Nhật N2', N'N2'), (N'Tiếng Nhật N3', N'N3'), (N'Tiếng Nhật N4', N'N4'), (N'Tiếng Nhật N5', N'N5'),
(N'Tiếng Pháp', NULL), (N'Tiếng Đức', NULL), (N'Tiếng Trung', NULL), (N'Tiếng Nga', NULL), (N'Tiếng Hàn', NULL)

go
INSERT [NhaXuatBan] ([TenNXB], [DiaChiNXB]) VALUES
(N'NXB ĐH Sư Phạm TpHCM', N'280 ADV P4 Q5'),
(N'NXB Kim Đồng', N'Cống Quỳnh, Q1'),
(N'NXB Hoa Học Trò', N'Phạm Ngũ Lão, Q1'),
(N'NXB Thanh Niên', N'Cách Mạng Tháng 8, Q3')

go
INSERT [NganhDaoTao] ([TenNganhDaoTao]) VALUES 
(N'Công Nghệ Thông Tin'), ( N'Hóa'), ( N'Sinh'), (N'Toán')

go
INSERT [DonViChuTri] ([TenDVChuTri], [DiaChi]) VALUES 
(N'Đại học Sư Phạm Tp Hồ Chí Minh', N'Tp HCM'), (N'Đại học Huế', N'Thừa Thiên Hứa')

go
INSERT [ChuyenMon] ([TenChuyenMon]) VALUES
 (N'Chuyên môn 1'), (N'Chuyên môn 2'), (N'Chuyên môn 3'), (N'Chuyên môn 4'), 
 (N'Chuyên môn 5'), (N'Chuyên môn 6'), (N'Chuyên môn 7'), (N'Chuyên môn 8')


INSERT [ChuyenNganh] ([TenChuyenNganh], [MaNganhDaoTao]) VALUES 
(N'Hệ thống thông ti', 1), (N'Khoa học máy tính', 1),
(N'Mạng máy tính', 1), (N'Kiểm thử', 1),
(N'Phương pháp giảng dạy',2), (N'Toán ứng dụng', 2)

go
INSERT [NhaKhoaHoc] ([MaNKHHoSo], [HoNKH], [TenNKH], [GioiTinhNKH], [NgaySinh], [DiaChiLienHe], [DienThoai], [EmailLienHe], [MaHocHam], [MaHocVi], [MaCNDaoTao], [MaDonViQL], [AnhDaiDien], [AnhCaNhan], [MaNgachVienChuc]) VALUES 
(N'400000.0067', N'Đặng Thị Thuận', N'An', N'Nữ', CAST(0x0000654C00000000 AS DateTime), N'10 B Kiệt 25 Hai Bà Trưng, Thành phố Huế, Thừa Thiên Huế , Thừa Thiên Huế .', N'0913465444', N'dangthithuanan@yahoo.com', 1, 2, 1, 1, N'image5.png', NULL, 1), 
(N'600000.0450', N'Phạm Thị Hải', N'Yến', N'Nữ', CAST(0x00007C2000000000 AS DateTime), N'56 Trần Nhật Duật, Thành phố Huế, Thừa Thiên Huế .', NULL, N'phamhaiyen9408@gmail.com', NULL, 1, 3, 1, N'image10.jpg', NULL, 3),
(N'100723.0018', N'Kim Hoàng', N'Lộc', N'Nam', CAST(0x0000818E00000000 AS DateTime), NULL, N'0912023782; 023457899134', N'k@gmail.com; test@gmail.com', NULL, NULL, 4, 1, N'image23.png', NULL, 2)

go
INSERT [NgoaiNguNKH] ([MaNKH], [MaTrinhDoNN]) VALUES
(1, 8), (1, 10), (2, 2), (2, 7),(3, 4), (3, 9), (3, 12)

go
INSERT [LinhVucNghienCuuNKH] ([MaNKH], [MaLinhVuc]) VALUES 
(1,3), (1,8), (1,9), (2,10), (2,30), (3,2),(3,8)

go
INSERT [QuaTrinhCongTac] ([MaNKH], [ThoiGianBD], [ThoiGIanKT], [ChucDanhCT], [MaDonViQL], [ChucVuCT]) VALUES
(1, CAST(0x0000988A00000000 AS DateTime), CAST(0x00009A3500000000 AS DateTime), N'Tổ phó',1, NULL),
(1, CAST(0x00009A5200000000 AS DateTime), CAST(0x0000A9DD00000000 AS DateTime), N'Tổ trường',1, NULL),
(2, CAST(0x00009BBF00000000 AS DateTime), CAST(0x00009D2C00000000 AS DateTime), N'Bí thư', 1, NULL)

go
INSERT [QuaTrinhDaoTao] ([MaNKH], [ThoiGianBD], [ThoiGianKT], [MaBacDT], [CoSoDaoTao], [MaNganh], [NamTotNghiep]) VALUES
(1, CAST(0x0000813D00000000 AS DateTime), CAST(0x0000858500000000 AS DateTime), 1, NULL, 1, CAST(0x0000858500000000 AS DateTime)),
(1, CAST(0x000085C100000000 AS DateTime), CAST(0x0000887D00000000 AS DateTime), 2, NULL, 1, CAST(0x000088D800000000 AS DateTime))

go
INSERT [ChuyenMonNKH] ([MaNKH], [MaChuyenMon], [NgayCapNhat]) VALUES 
(1, 1, CAST(0x0000A85B00000000 AS DateTime)),
(1, 2, CAST(0x0000A85B00000000 AS DateTime)),
(2, 3, CAST(0x0000A85C00000000 AS DateTime)),
(3, 2, CAST(0x0000A85F00000000 AS DateTime))

go
INSERT [DeTai] ([MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (N'B2018-DHH-08-GEN', N'Nghiên cứu bảo tồn Quýt Hương Cần ở Thừa Thiên Huế', 1, 3, 1, 1, 1, N'Thu thập, lưu giữ, đánh giá ban đầu, đánh giá chi tiết, tư liệu hóa, chia sẻ nguồn gen.', N'Nghiên cứu gen giống Quýt lai ', N'Tạo bộ Gen mới tối ưu', CAST(0xD73D0B00 AS Date), CAST(0x233F0B00 AS Date), 1, 1, 1, NULL, N'http://csdlkhoahoc.hueuni.edu.vn/index.php/topic', N'baocao.pdf')

INSERT [DeTai] ([MaDeTaiHoSo], [TenDeTai], [MaLoaiDeTai], [MaCapDeTai], [MaDVChuTri], [MaDonViQLThucHien], [MaLinhVuc], [MucTieuDeTai], [NoiDungDeTai], [KetQuaDeTai], [NamBD], [NamKT], [MaXepLoai], [MaTinhTrang], [MaPhanLoaiSP], [KinhPhi], [LienKetWeb], [LinkFileUpload]) VALUES (N'CT- 2018-DHH-03', N'Nghiên cứu chế tạo Kit phát hiện vi khuẩn Vibrio parahaemolyticus gây bệnh lở loét ở cá', 2, 2, 1, 3, 2, N'mục tiêu', N'nội dung đề tài', N'kết quả đè tài', CAST(0xA43C0B00 AS Date), CAST(0x043F0B00 AS Date), 3, 2, 2, NULL, N'https://vnexpress.net/', N'baocao1.pdf')

go
INSERT [DSNguoiThamGiaDeTai] ([MaDeTai], [MaNKH], [LaChuNhiem]) VALUES
(1, 1, 1), (1, 2, 0), (2, 1,0), (2, 2, 1), (2, 3, 0)
