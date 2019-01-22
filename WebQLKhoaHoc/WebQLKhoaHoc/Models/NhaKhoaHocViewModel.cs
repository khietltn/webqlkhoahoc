﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Ajax.Utilities;

namespace WebQLKhoaHoc.Models
{
    public class NhaKhoaHocViewModel
    {

        public int DsBaiBao { get; set; }
        public int DsDetai { get; set; }
        public int DsSach { get; set; }
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
        public virtual HocHam HocHam { get; set; }
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
            NhaKhoaHocViewModel nkhvm = new NhaKhoaHocViewModel();
            nkhvm.NgachVienChuc = nkh.NgachVienChuc ?? new NgachVienChuc();
            nkhvm.NgaySinh = nkh.NgaySinh ?? new DateTime();
            nkhvm.HoNKH = nkh.HoNKH ?? String.Empty;
            nkhvm.TenNKH = nkh.TenNKH ?? String.Empty;
            nkhvm.AnhCaNhan = nkh.AnhCaNhan != null ? string.Format("data:image/jpeg;base64,{0}", Convert.ToBase64String(nkh.AnhCaNhan)) : String.Empty;
            nkhvm.DienThoai = nkh.DienThoai ?? String.Empty;
            nkhvm.DiaChiLienHe = nkh.DiaChiLienHe ?? String.Empty;
            nkhvm.HocHam = nkh.HocHam ?? new HocHam();
            nkhvm.NamKetThucDaoTao = nkh.QuaTrinhDaoTaos.Count > 0 ? nkh.QuaTrinhDaoTaos.Where(p => p.MaNKH == nkh.MaNKH).Max(t => t.NamTotNghiep).Value : new DateTime();
            nkhvm.HocVi = nkh.HocVi ?? new HocVi();
            nkhvm.DonViQL = nkh.DonViQL ?? new DonViQL();
            nkhvm.MaCNDaoTao = nkh.MaCNDaoTao ?? String.Empty;
            nkhvm.MaDonViQL = nkh.MaDonViQL ?? String.Empty;
            nkhvm.EmailLienHe = nkh.EmailLienHe ?? String.Empty;
            nkhvm.QuaTrinhCongTacs = nkh.QuaTrinhCongTacs ?? new List<QuaTrinhCongTac>();
            nkhvm.QuaTrinhDaoTaos = nkh.QuaTrinhDaoTaos ?? new List<QuaTrinhDaoTao>();
            nkhvm.DSNguoiThamGiaBaiBaos = nkh.DSNguoiThamGiaBaiBaos ?? new List<DSNguoiThamGiaBaiBao>();
            nkhvm.DSNguoiThamGiaDeTais = nkh.DSNguoiThamGiaDeTais ?? new List<DSNguoiThamGiaDeTai>();
            nkhvm.DSTacGias = nkh.DSTacGias ?? new List<DSTacGia>();
            nkhvm.TrinhDoNgoaiNgus = nkh.TrinhDoNgoaiNgus ?? new List<TrinhDoNgoaiNgu>();
            nkhvm.MaNKHHoSo = nkh.MaNKHHoSo ?? String.Empty;
            nkhvm.MaHocVi = nkh.MaHocVi ?? String.Empty;
            nkhvm.MaHocHam = nkh.MaHocHam ?? String.Empty;
            nkhvm.MaNgachVienChuc = nkh.MaNgachVienChuc ?? String.Empty;
            nkhvm.MaNKH = nkh.MaNKH ?? String.Empty;
            nkhvm.ChuyenMonNKHs = nkh.ChuyenMonNKHs ?? new List<ChuyenMonNKH>();
            nkhvm.GioiTinhNKH = nkh.GioiTinhNKH ?? String.Empty;
            nkhvm.ChuyenNganh = nkh.ChuyenNganh ?? new ChuyenNganh();
            nkhvm.LinhVucs = nkh.LinhVucs ?? new List<LinhVuc>();
            nkhvm.DsBaiBao = nkh.DSNguoiThamGiaBaiBaos.Where(p => p.MaNKH == nkh.MaNKH).Count();
            nkhvm.DsSach = nkh.DSTacGias.Where(p => p.MaNKH == nkh.MaNKH).Count();
            nkhvm.DsDetai = nkh.DSNguoiThamGiaBaiBaos.Where(p => p.MaNKH == nkh.MaNKH).Count();


            return nkhvm;
        }

    }
}