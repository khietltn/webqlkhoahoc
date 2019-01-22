using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebQLKhoaHoc.Models
{
    public class NhaKhoaHocViewModel
    {
        public string MaNKH { get; set; }
        public string MaNKHHoSo { get; set; }
        public string HoNKH { get; set; }
        public string TenNKH { get; set; }
        public string GioiTinhNKH { get; set; }
        public Nullable<System.DateTime> NgaySinh { get; set; }
        public string DiaChiLienHe { get; set; }
        public string DienThoai { get; set; }
        public string EmailLienHe { get; set; }
        public string MaHocHam { get; set; }
        public string TenHocHam { get; set; }
        public DateTime NamKetThucDaoTao { get; set; }
        public string MaHocVi { get; set; }
        public string MaCNDaoTao { get; set; }
        public string MaDonViQL { get; set; }
        public string AnhDaiDien { get; set; }
        public string AnhCaNhan { get; set; }
        public string MaNgachVienChuc { get; set; }
        public virtual ICollection<ChuyenMonNKH> ChuyenMonNKHs { get; set; }
        public virtual ChuyenNganh ChuyenNganh { get; set; }
        public virtual DonViQL DonViQL { get; set; }
        public virtual ICollection<DSNguoiThamGiaBaiBao> DSNguoiThamGiaBaiBaos { get; set; }
        public virtual ICollection<DSNguoiThamGiaDeTai> DSNguoiThamGiaDeTais { get; set; }
        public virtual ICollection<DSTacGia> DSTacGias { get; set; }
        public virtual HocVi HocVi { get; set; }
        public virtual NgachVienChuc NgachVienChuc { get; set; }
        public virtual ICollection<QuaTrinhCongTac> QuaTrinhCongTacs { get; set; }
        public virtual ICollection<QuaTrinhDaoTao> QuaTrinhDaoTaos { get; set; }
        public virtual ICollection<LinhVuc> LinhVucs { get; set; }
        public virtual ICollection<TrinhDoNgoaiNgu> TrinhDoNgoaiNgus { get; set; }

        public static NhaKhoaHocViewModel Mapping(NhaKhoaHoc nkh)
        {
            return new NhaKhoaHocViewModel
            {
                NgachVienChuc = nkh.NgachVienChuc,
                NgaySinh = nkh.NgaySinh,
                HoNKH = nkh.HoNKH,
                TenNKH = nkh.TenNKH,
                AnhCaNhan = string.Format("data:image/jpeg;base64,{0}", Convert.ToBase64String(nkh.AnhCaNhan)),
                DienThoai = nkh.DienThoai,
                DiaChiLienHe = nkh.DiaChiLienHe,
                TenHocHam = nkh.HocHam.TenHocHam,
                NamKetThucDaoTao = nkh.QuaTrinhDaoTaos.Where(p => p.MaNKH == nkh.MaNKH).Max(t => t.NamTotNghiep).Value,
                HocVi = nkh.HocVi,
                DonViQL = nkh.DonViQL,
                MaCNDaoTao = nkh.MaCNDaoTao,
                MaDonViQL = nkh.MaDonViQL,
                EmailLienHe = nkh.EmailLienHe,
                QuaTrinhCongTacs = nkh.QuaTrinhCongTacs,
                QuaTrinhDaoTaos = nkh.QuaTrinhDaoTaos,
                DSNguoiThamGiaBaiBaos = nkh.DSNguoiThamGiaBaiBaos,
                DSNguoiThamGiaDeTais = nkh.DSNguoiThamGiaDeTais,
                DSTacGias = nkh.DSTacGias,
                TrinhDoNgoaiNgus = nkh.TrinhDoNgoaiNgus,
                MaNKHHoSo = nkh.MaNKHHoSo,
                MaHocVi = nkh.MaHocVi,
                MaHocHam = nkh.MaHocHam,
                MaNgachVienChuc = nkh.MaNgachVienChuc,
                MaNKH = nkh.MaNKH,
                ChuyenMonNKHs = nkh.ChuyenMonNKHs,
                GioiTinhNKH = nkh.GioiTinhNKH,
                ChuyenNganh = nkh.ChuyenNganh
                
            };
        }

    }
}