//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebQLKhoaHoc
{
    using System;
    using System.Collections.Generic;
    
    public partial class QuaTrinhCongTac
    {
        public int MaCT { get; set; }
        public int MaNKH { get; set; }
        public Nullable<System.DateTime> ThoiGianBD { get; set; }
        public Nullable<System.DateTime> ThoiGIanKT { get; set; }
        public string ChucDanhCT { get; set; }
        public Nullable<int> MaDonViQL { get; set; }
        public string ChucVuCT { get; set; }
    
        public virtual DonViQL DonViQL { get; set; }
        public virtual NhaKhoaHoc NhaKhoaHoc { get; set; }
    }
}
