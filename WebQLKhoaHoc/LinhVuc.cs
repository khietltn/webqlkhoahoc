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
    
    public partial class LinhVuc
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LinhVuc()
        {
            this.DeTais = new HashSet<DeTai>();
            this.SachGiaoTrinhs = new HashSet<SachGiaoTrinh>();
            this.BaiBaos = new HashSet<BaiBao>();
            this.NhaKhoaHocs = new HashSet<NhaKhoaHoc>();
        }
    
        public int MaLinhVuc { get; set; }
        public string TenLinhVuc { get; set; }
        public Nullable<int> MaNhomLinhVuc { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DeTai> DeTais { get; set; }
        public virtual NhomLinhVuc NhomLinhVuc { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SachGiaoTrinh> SachGiaoTrinhs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BaiBao> BaiBaos { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NhaKhoaHoc> NhaKhoaHocs { get; set; }
    }
}