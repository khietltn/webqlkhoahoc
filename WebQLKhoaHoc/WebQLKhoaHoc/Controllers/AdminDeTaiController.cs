using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebQLKhoaHoc;
using System.IO;

namespace WebQLKhoaHoc.Controllers
{
    public class AdminDeTaiController : Controller
    {
        private QLKhoaHocEntities db = new QLKhoaHocEntities();

        // GET: AdminDeTai
        public async Task<ActionResult> Index()
        {
            var deTais = db.DeTais.Include(d => d.CapDeTai).Include(d => d.LoaiHinhDeTai).Include(d => d.DonViChuTri).Include(d => d.DonViQL).Include(d => d.LinhVuc).Include(d => d.XepLoai).Include(d => d.TinhTrangDeTai).Include(d => d.PhanLoaiSP);
            return View(await deTais.ToListAsync());
        }

        // GET: AdminDeTai/Details/5
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

        // GET: AdminDeTai/Create
        public ActionResult Create()
        {
            ViewBag.MaCapDeTai = new SelectList(db.CapDeTais, "MaCapDeTai", "TenCapDeTai");
            ViewBag.MaLoaiDeTai = new SelectList(db.LoaiHinhDeTais, "MaLoaiDT", "TenLoaiDT");
            ViewBag.MaDVChuTri = new SelectList(db.DonViChuTris, "MaDVChuTri", "TenDVChuTri");
            ViewBag.MaDonViQLThucHien = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI");
            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc");
            ViewBag.MaXepLoai = new SelectList(db.XepLoais, "MaXepLoai", "TenXepLoai");
            ViewBag.MaTinhTrang = new SelectList(db.TinhTrangDeTais, "MaTinhTrang", "TenTinhTrang");
            ViewBag.MaPhanLoaiSP = new SelectList(db.PhanLoaiSPs, "MaPhanLoai", "TenPhanLoai");
            return View();
        }

        // POST: AdminDeTai/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(HttpPostedFileBase linkUpload,[Bind(Include = "MaDeTai,MaDeTaiHoSo,TenDeTai,MaLoaiDeTai,MaCapDeTai,MaDVChuTri,MaDonViQLThucHien,MaLinhVuc,MucTieuDeTai,NoiDungDeTai,KetQuaDeTai,NamBD,NamKT,MaXepLoai,MaTinhTrang,MaPhanLoaiSP,LienKetWeb")] DeTai deTai)
        {
            if (ModelState.IsValid)
            {
                db.DeTais.Add(deTai);
                await db.SaveChangesAsync();

                db.DeTais.Attach(deTai);
                if (linkUpload != null && linkUpload.ContentLength > 0)
                {
                    string filename = Path.GetFileNameWithoutExtension(linkUpload.FileName) + "_" + deTai.MaDeTai.ToString() + Path.GetExtension(linkUpload.FileName);
                    string path = Path.Combine(Server.MapPath("~/App_Data/uploads/detai_file"), filename);
                    linkUpload.SaveAs(path);
                    deTai.LinkFileUpload = filename;

                }
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.MaCapDeTai = new SelectList(db.CapDeTais, "MaCapDeTai", "TenCapDeTai", deTai.MaCapDeTai);
            ViewBag.MaLoaiDeTai = new SelectList(db.LoaiHinhDeTais, "MaLoaiDT", "TenLoaiDT", deTai.MaLoaiDeTai);
            ViewBag.MaDVChuTri = new SelectList(db.DonViChuTris, "MaDVChuTri", "TenDVChuTri", deTai.MaDVChuTri);
            ViewBag.MaDonViQLThucHien = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI", deTai.MaDonViQLThucHien);
            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc", deTai.MaLinhVuc);
            ViewBag.MaXepLoai = new SelectList(db.XepLoais, "MaXepLoai", "TenXepLoai", deTai.MaXepLoai);
            ViewBag.MaTinhTrang = new SelectList(db.TinhTrangDeTais, "MaTinhTrang", "TenTinhTrang", deTai.MaTinhTrang);
            ViewBag.MaPhanLoaiSP = new SelectList(db.PhanLoaiSPs, "MaPhanLoai", "TenPhanLoai", deTai.MaPhanLoaiSP);
            return View(deTai);
        }

        // GET: AdminDeTai/Edit/5
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
            ViewBag.MaCapDeTai = new SelectList(db.CapDeTais, "MaCapDeTai", "TenCapDeTai", deTai.MaCapDeTai);
            ViewBag.MaLoaiDeTai = new SelectList(db.LoaiHinhDeTais, "MaLoaiDT", "TenLoaiDT", deTai.MaLoaiDeTai);
            ViewBag.MaDVChuTri = new SelectList(db.DonViChuTris, "MaDVChuTri", "TenDVChuTri", deTai.MaDVChuTri);
            ViewBag.MaDonViQLThucHien = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI", deTai.MaDonViQLThucHien);
            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc", deTai.MaLinhVuc);
            ViewBag.MaXepLoai = new SelectList(db.XepLoais, "MaXepLoai", "TenXepLoai", deTai.MaXepLoai);
            ViewBag.MaTinhTrang = new SelectList(db.TinhTrangDeTais, "MaTinhTrang", "TenTinhTrang", deTai.MaTinhTrang);
            ViewBag.MaPhanLoaiSP = new SelectList(db.PhanLoaiSPs, "MaPhanLoai", "TenPhanLoai", deTai.MaPhanLoaiSP);
            return View(deTai);
        }

        // POST: AdminDeTai/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(HttpPostedFileBase linkUpload, [Bind(Include = "MaDeTai,MaDeTaiHoSo,TenDeTai,MaLoaiDeTai,MaCapDeTai,MaDVChuTri,MaDonViQLThucHien,MaLinhVuc,MucTieuDeTai,NoiDungDeTai,KetQuaDeTai,NamBD,NamKT,MaXepLoai,MaTinhTrang,MaPhanLoaiSP,LinkFileUpload")] DeTai deTai)
        {
            if (ModelState.IsValid)
            {
                db.Entry(deTai).State = EntityState.Modified;
                if (linkUpload != null && linkUpload.ContentLength > 0)
                {
                    string filename = Path.GetFileNameWithoutExtension(linkUpload.FileName) + "_" + deTai.MaDeTai.ToString() + Path.GetExtension(linkUpload.FileName);
                    string path = Path.Combine(Server.MapPath("~/App_Data/uploads/baibao_file"), filename);
                    if (!String.IsNullOrEmpty(deTai.LinkFileUpload))
                    {
                        string oldpath = Path.Combine(Server.MapPath("~/App_Data/uploads/baibao_file"), deTai.LinkFileUpload);
                        if (System.IO.File.Exists(oldpath))
                        {
                            System.IO.File.Delete(oldpath);
                        }
                    }
                    linkUpload.SaveAs(path);
                    deTai.LinkFileUpload = filename;
                }
                else
                {
                    deTai.LinkFileUpload = deTai.LinkFileUpload;
                }
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.MaCapDeTai = new SelectList(db.CapDeTais, "MaCapDeTai", "TenCapDeTai", deTai.MaCapDeTai);
            ViewBag.MaLoaiDeTai = new SelectList(db.LoaiHinhDeTais, "MaLoaiDT", "TenLoaiDT", deTai.MaLoaiDeTai);
            ViewBag.MaDVChuTri = new SelectList(db.DonViChuTris, "MaDVChuTri", "TenDVChuTri", deTai.MaDVChuTri);
            ViewBag.MaDonViQLThucHien = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI", deTai.MaDonViQLThucHien);
            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc", deTai.MaLinhVuc);
            ViewBag.MaXepLoai = new SelectList(db.XepLoais, "MaXepLoai", "TenXepLoai", deTai.MaXepLoai);
            ViewBag.MaTinhTrang = new SelectList(db.TinhTrangDeTais, "MaTinhTrang", "TenTinhTrang", deTai.MaTinhTrang);
            ViewBag.MaPhanLoaiSP = new SelectList(db.PhanLoaiSPs, "MaPhanLoai", "TenPhanLoai", deTai.MaPhanLoaiSP);
            return View(deTai);
        }

        // GET: AdminDeTai/Delete/5
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

        // POST: AdminDeTai/Delete/5
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
