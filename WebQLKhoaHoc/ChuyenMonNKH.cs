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
    
    public partial class ChuyenMonNKH
    {
        public int MaNKH { get; set; }
        public int MaChuyenMon { get; set; }
        public Nullable<System.DateTime> NgayCapNhat { get; set; }
    
        public virtual ChuyenMon ChuyenMon { get; set; }
        public virtual NhaKhoaHoc NhaKhoaHoc { get; set; }
    }
}