﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class QLKhoaHocEntities : DbContext
    {
        public QLKhoaHocEntities()
            : base("name=QLKhoaHocEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<BacDaoTao> BacDaoTaos { get; set; }
        public virtual DbSet<BaiBao> BaiBaos { get; set; }
        public virtual DbSet<CapDeTai> CapDeTais { get; set; }
        public virtual DbSet<CapTapChi> CapTapChis { get; set; }
        public virtual DbSet<ChucNang> ChucNangs { get; set; }
        public virtual DbSet<ChuyenMon> ChuyenMons { get; set; }
        public virtual DbSet<ChuyenMonNKH> ChuyenMonNKHs { get; set; }
        public virtual DbSet<ChuyenNganh> ChuyenNganhs { get; set; }
        public virtual DbSet<DeTai> DeTais { get; set; }
        public virtual DbSet<DonViChuTri> DonViChuTris { get; set; }
        public virtual DbSet<DonViQL> DonViQLs { get; set; }
        public virtual DbSet<DSBaiBaoDeTai> DSBaiBaoDeTais { get; set; }
        public virtual DbSet<DSNguoiThamGiaBaiBao> DSNguoiThamGiaBaiBaos { get; set; }
        public virtual DbSet<DSNguoiThamGiaDeTai> DSNguoiThamGiaDeTais { get; set; }
        public virtual DbSet<DSTacGia> DSTacGias { get; set; }
        public virtual DbSet<HocHam> HocHams { get; set; }
        public virtual DbSet<HocVi> HocVis { get; set; }
        public virtual DbSet<KinhPhiDeTai> KinhPhiDeTais { get; set; }
        public virtual DbSet<LinhVuc> LinhVucs { get; set; }
        public virtual DbSet<LoaiHinhDeTai> LoaiHinhDeTais { get; set; }
        public virtual DbSet<NgachVienChuc> NgachVienChucs { get; set; }
        public virtual DbSet<NganhDaoTao> NganhDaoTaos { get; set; }
        public virtual DbSet<NguoiDung> NguoiDungs { get; set; }
        public virtual DbSet<NhaKhoaHoc> NhaKhoaHocs { get; set; }
        public virtual DbSet<NhaXuatBan> NhaXuatBans { get; set; }
        public virtual DbSet<NhomLinhVuc> NhomLinhVucs { get; set; }
        public virtual DbSet<PhanLoaiSach> PhanLoaiSaches { get; set; }
        public virtual DbSet<PhanLoaiSP> PhanLoaiSPs { get; set; }
        public virtual DbSet<PhanLoaiTapChi> PhanLoaiTapChis { get; set; }
        public virtual DbSet<QuaTrinhCongTac> QuaTrinhCongTacs { get; set; }
        public virtual DbSet<QuaTrinhDaoTao> QuaTrinhDaoTaos { get; set; }
        public virtual DbSet<SachGiaoTrinh> SachGiaoTrinhs { get; set; }
        public virtual DbSet<TinhTrangDeTai> TinhTrangDeTais { get; set; }
        public virtual DbSet<TrinhDoNgoaiNgu> TrinhDoNgoaiNgus { get; set; }
        public virtual DbSet<XepLoai> XepLoais { get; set; }
    }
}
