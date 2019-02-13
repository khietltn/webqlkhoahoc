using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using PagedList;
using WebGrease.Css.Extensions;
using WebQLKhoaHoc;
using WebQLKhoaHoc.Models;

namespace WebQLKhoaHoc.Controllers
{
    public class DeTaisController : Controller
    {
        private QLKhoaHocEntities db = new QLKhoaHocEntities();
        private QLKHRepository QLKHrepo = new QLKHRepository();
        // GET: DeTais
        public async Task<ActionResult> Index(int? Page_No)
        {
            ViewBag.MaCapDeTai = new SelectList(db.CapDeTais, "MaCapDeTai", "TenCapDeTai");
            ViewBag.MaDonViQLThucHien = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI");
            ViewBag.MaLinhVuc = new SelectList(QLKHrepo.GetListMenuLinhVuc(), "Id", "TenLinhVuc");
            var deTais = db.DeTais.Include(d => d.CapDeTai).Include(d => d.LoaiHinhDeTai).Include(d => d.DonViChuTri).Include(d => d.DonViQL).Include(d => d.LinhVuc).Include(d => d.XepLoai).Include(d => d.TinhTrangDeTai).Include(d => d.PhanLoaiSP).Include(d => d.DSNguoiThamGiaDeTais);
            var listDT = deTais.Concat(deTais)
                               .Concat(deTais)
                               .Concat(deTais)
                               .Concat(deTais)
                               .Concat(deTais)
                               .Concat(deTais)
                               .ToList();

            int Size_Of_Page = 6;
            int No_Of_Page = (Page_No ?? 1);
            return View(listDT.ToPagedList(No_Of_Page, Size_Of_Page));
        }

        public async Task<ActionResult> Search(int? Page_No)
        {
            ViewBag.MaCapDeTai = new SelectList(db.CapDeTais, "MaCapDeTai", "TenCapDeTai");
            ViewBag.MaDonViQLThucHien = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI");
            ViewBag.MaLinhVuc = new SelectList(QLKHrepo.GetListMenuLinhVuc(), "Id", "TenLinhVuc");
            var deTais = db.DeTais.Include(d => d.CapDeTai).Include(d => d.LoaiHinhDeTai).Include(d => d.DonViChuTri).Include(d => d.DonViQL).Include(d => d.LinhVuc).Include(d => d.XepLoai).Include(d => d.TinhTrangDeTai).Include(d => d.PhanLoaiSP).Include(d => d.DSNguoiThamGiaDeTais);
            var listDT = deTais.Concat(deTais)
                .Concat(deTais)
                .Concat(deTais)
                .Concat(deTais)
                .Concat(deTais)
                .Concat(deTais)
                .ToList();

            int Size_Of_Page = 6;
            int No_Of_Page = (Page_No ?? 1);
            return View("Index",listDT.ToPagedList(No_Of_Page, Size_Of_Page));
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Search(int? Page_No, [Bind(Include = "MaCapDeTai,MaDonViQLThucHien,MaLinhVuc,Fromdate,Todate,SearchValue")] DeTaiSearchViewModel detai)
        {
            var detais = db.DeTais.Include(d => d.CapDeTai).Include(d => d.LoaiHinhDeTai).Include(d => d.DonViChuTri).Include(d => d.DonViQL).Include(d => d.LinhVuc).Include(d => d.XepLoai).Include(d => d.TinhTrangDeTai).Include(d => d.PhanLoaiSP).ToList();

            if (!String.IsNullOrEmpty(detai.MaDonViQLThucHien))
            {
                detais = detais.Where(p => p.MaDonViQLThucHien.ToString() == detai.MaDonViQLThucHien).ToList();
            }
            if (!String.IsNullOrEmpty(detai.MaLinhVuc))
            {
                if (detai.MaLinhVuc[0] == 'a')
                    detais = detais.Where(p =>
                        p.MaLinhVuc.ToString() == detai.MaLinhVuc.Substring(1, detai.MaLinhVuc.Length - 1)).ToList();
                else
                    detais = detais.Where(p => p.LinhVuc.MaNhomLinhVuc.ToString() == detai.MaLinhVuc).ToList();
            }
            if (detai.Fromdate > DateTime.MinValue)
            {
                detais = detais.Where(p => p.NamBD >= detai.Fromdate).ToList();
            }
            if (detai.Todate > DateTime.MinValue)
            {
                detais = detais.Where(p => p.NamKT <= detai.Todate).ToList();
            }
            if (!String.IsNullOrEmpty(detai.SearchValue))
            {
                detais = detais.Where(p => p.TenDeTai.Contains(detai.SearchValue)).ToList();
            }
            ViewBag.Fromdate = detai.Fromdate.ToShortDateString();
            ViewBag.Todate = detai.Todate.ToShortDateString();
            ViewBag.MaCapDeTai = new SelectList(db.CapDeTais, "MaCapDeTai", "TenCapDeTai");
            ViewBag.MaDonViQLThucHien = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI");
            ViewBag.MaLinhVuc = new SelectList(QLKHrepo.GetListMenuLinhVuc(), "Id", "TenLinhVuc");
            ViewBag.SearchValue = detai.SearchValue;
            int Size_Of_Page = 6;
            int No_Of_Page = (Page_No ?? 1);
            return View("Index", detais.ToPagedList(No_Of_Page, Size_Of_Page));
        }

        // GET: DeTais/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DeTai deTai = await db.DeTais.FindAsync(id);
            if (deTai == null)
            {
                return HttpNotFound();
            }
            return View(deTai);
        }
   
        // GET: DeTais/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DeTai deTai = await db.DeTais.FindAsync(id);
            if (deTai == null)
            {
                return HttpNotFound();
            }
            var lstAllNKH = db.NhaKhoaHocs.Where(p => p.MaNKH !=1).Select(p => new
            {
                p.MaNKH,
                TenNKH = p.HoNKH + " " + p.TenNKH
            }).ToList();
            var lstNKH = db.NhaKhoaHocs.Where(p => p.DSNguoiThamGiaDeTais.Any(d => d.MaDeTai == deTai.MaDeTai && d.LaChuNhiem == false)).Select(p => p.MaNKH).ToList();
            ViewBag.MaCapDeTai = new SelectList(db.CapDeTais, "MaCapDeTai", "TenCapDeTai", deTai.MaCapDeTai);
            ViewBag.MaLoaiDeTai = new SelectList(db.LoaiHinhDeTais, "MaLoaiDT", "TenLoaiDT", deTai.MaLoaiDeTai);
            ViewBag.MaDVChuTri = new SelectList(db.DonViChuTris, "MaDVChuTri", "TenDVChuTri", deTai.MaDVChuTri);
            ViewBag.MaDonViQLThucHien = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI", deTai.MaDonViQLThucHien);
            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc", deTai.MaLinhVuc);
            ViewBag.MaXepLoai = new SelectList(db.XepLoais, "MaXepLoai", "TenXepLoai", deTai.MaXepLoai);
            ViewBag.MaTinhTrang = new SelectList(db.TinhTrangDeTais, "MaTinhTrang", "TenTinhTrang", deTai.MaTinhTrang);
            ViewBag.MaPhanLoaiSP = new SelectList(db.PhanLoaiSPs, "MaPhanLoai", "TenPhanLoai", deTai.MaPhanLoaiSP);
            ViewBag.DSNguoiThamGiaDeTai = new MultiSelectList(lstAllNKH, "MaNKH","TenNKH",lstNKH);
            return View(deTai);
        }

        // POST: DeTais/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(List<string> DSNguoiThamGiaDT,[Bind(Include = "MaDeTai,MaDeTaiHoSo,TenDeTai,MaLoaiDeTai,MaCapDeTai,MaDVChuTri,MaDonViQLThucHien,MaLinhVuc,MucTieuDeTai,NoiDungDeTai,KetQuaDeTai,NamBD,NamKT,MaXepLoai,MaTinhTrang,MaPhanLoaiSP,KinhPhi,LienKetWeb,LinkFileUpload")] DeTai deTai)
        {
            if (ModelState.IsValid)
            {

                db.Entry(deTai).State = EntityState.Modified;
                db.DSNguoiThamGiaDeTais.Where(p => p.MaDeTai == deTai.MaDeTai && p.LaChuNhiem == false).ForEach(x => db.DSNguoiThamGiaDeTais.Remove(x));
                foreach (var mankh in DSNguoiThamGiaDT)
                {
                    DSNguoiThamGiaDeTai nguoiTGDT = new DSNguoiThamGiaDeTai
                    {
                        LaChuNhiem = false,
                        MaDeTai =  deTai.MaDeTai,
                        MaNKH = Int32.Parse(mankh)
                    };
                    db.DSNguoiThamGiaDeTais.Add(nguoiTGDT);
                }

                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            else
            {
                ViewBag.MaCapDeTai = new SelectList(db.CapDeTais, "MaCapDeTai", "TenCapDeTai", deTai.MaCapDeTai);
                ViewBag.MaLoaiDeTai = new SelectList(db.LoaiHinhDeTais, "MaLoaiDT", "TenLoaiDT", deTai.MaLoaiDeTai);
                ViewBag.MaDVChuTri = new SelectList(db.DonViChuTris, "MaDVChuTri", "TenDVChuTri", deTai.MaDVChuTri);
                ViewBag.MaDonViQLThucHien = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI", deTai.MaDonViQLThucHien);
                ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc", deTai.MaLinhVuc);
                ViewBag.MaXepLoai = new SelectList(db.XepLoais, "MaXepLoai", "TenXepLoai", deTai.MaXepLoai);
                ViewBag.MaTinhTrang =
                    new SelectList(db.TinhTrangDeTais, "MaTinhTrang", "TenTinhTrang", deTai.MaTinhTrang);
                ViewBag.MaPhanLoaiSP = new SelectList(db.PhanLoaiSPs, "MaPhanLoai", "TenPhanLoai", deTai.MaPhanLoaiSP);
                return View(deTai);
            }

            
        }

        // GET: DeTais/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DeTai deTai = await db.DeTais.FindAsync(id);
            if (deTai == null)
            {
                return HttpNotFound();
            }
            return View(deTai);
        }

        // POST: DeTais/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            DeTai deTai = await db.DeTais.FindAsync(id);
            db.DeTais.Remove(deTai);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
