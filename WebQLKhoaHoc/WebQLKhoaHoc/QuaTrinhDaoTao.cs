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
    
    public partial class QuaTrinhDaoTao
    {
        public int MaQT { get; set; }
        public string MaNKH { get; set; }
        public Nullable<System.DateTime> ThoiGianBD { get; set; }
        public Nullable<System.DateTime> ThoiGianKT { get; set; }
        public string MaBacDT { get; set; }
        public string CoSoDaoTao { get; set; }
        public string MaNganh { get; set; }
        public Nullable<System.DateTime> NamTotNghiep { get; set; }
    
        public virtual BacDaoTao BacDaoTao { get; set; }
        public virtual NganhDaoTao NganhDaoTao { get; set; }
        public virtual NhaKhoaHoc NhaKhoaHoc { get; set; }
    }
}
