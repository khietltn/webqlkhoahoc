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
    
    public partial class PhanLoaiTapChi
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PhanLoaiTapChi()
        {
            this.BaiBaos = new HashSet<BaiBao>();
        }
    
        public int MaLoaiTapChi { get; set; }
        public string TenLoaiTapChi { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BaiBao> BaiBaos { get; set; }
    }
}