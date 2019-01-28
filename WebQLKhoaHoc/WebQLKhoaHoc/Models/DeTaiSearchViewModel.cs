﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebQLKhoaHoc.Models
{
    public class DeTaiSearchViewModel
    {
       public string MaCapDeTai { get; set; }
        public string MaDonViQLThucHien { get; set; }
        public string MaLinhVuc { get; set; }
        public DateTime Fromdate { get; set; }
        public DateTime Todate { get; set; }
        public string SearchValue { get; set; }
    }

    public class DeTaiViewModel
    {
        public int MaDeTai { get; set; }
        public string MaDeTaiHoSo { get; set; }
        public string TenDeTai { get; set; }
        public Nullable<int> MaLoaiDeTai { get; set; }
        public Nullable<int> MaCapDeTai { get; set; }
        public Nullable<int> MaDVChuTri { get; set; }
        public Nullable<int> MaDonViQLThucHien { get; set; }
        public Nullable<int> MaLinhVuc { get; set; }
        public string MucTieuDeTai { get; set; }
        public string NoiDungDeTai { get; set; }
        public string KetQuaDeTai { get; set; }
        public Nullable<System.DateTime> NamBD { get; set; }
        public Nullable<System.DateTime> NamKT { get; set; }
        public Nullable<int> MaXepLoai { get; set; }
        public Nullable<int> MaTinhTrang { get; set; }
        public Nullable<int> MaPhanLoaiSP { get; set; }
        public string KinhPhi { get; set; }
        public string LienKetWeb { get; set; }
        public string LinkFileUpload { get; set; }
       
        public List<string> DSNguoiThamGiaDT { get; set; }
    }

}