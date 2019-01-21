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

namespace WebQLKhoaHoc.Controllers
{
    public class NhaKhoaHocsController : Controller
    {
        private QLKhoaHocEntities db = new QLKhoaHocEntities();

        // GET: NhaKhoaHocs
        public async Task<ActionResult> Index()
        {
            var nhaKhoaHocs = db.NhaKhoaHocs.Include(n => n.ChuyenNganh).Include(n => n.DonViQL).Include(n => n.HocHam).Include(n => n.HocVi).Include(n => n.NgachVienChuc);
            return View(await nhaKhoaHocs.ToListAsync());
        }

        // GET: NhaKhoaHocs/Details/5
        public async Task<ActionResult> Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NhaKhoaHoc nhaKhoaHoc = await db.NhaKhoaHocs.FindAsync(id);
            if (nhaKhoaHoc == null)
            {
                return HttpNotFound();
            }
            return View(nhaKhoaHoc);
        }

        // GET: NhaKhoaHocs/Create
        public ActionResult Create()
        {
            ViewBag.MaCNDaoTao = new SelectList(db.ChuyenNganhs, "MaChuyenNganh", "TenChuyenNganh");
            ViewBag.MaDonViQL = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI");
            ViewBag.MaHocHam = new SelectList(db.HocHams, "MaHocHam", "TenHocHam");
            ViewBag.MaHocVi = new SelectList(db.HocVis, "MaHocVi", "TenHocVi");
            ViewBag.MaNgachVienChuc = new SelectList(db.NgachVienChucs, "MaNgach", "TenNgach");
            return View();
        }

        // POST: NhaKhoaHocs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "MaNKH,MaNKHHoSo,HoNKH,TenNKH,GioiTinhNKH,NgaySinh,DiaChiLienHe,DienThoai,EmailLienHe,MaHocHam,MaHocVi,MaCNDaoTao,MaDonViQL,AnhDaiDien,MaNgachVienChuc")] NhaKhoaHoc nhaKhoaHoc)
        {
            if (ModelState.IsValid)
            {
                db.NhaKhoaHocs.Add(nhaKhoaHoc);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.MaCNDaoTao = new SelectList(db.ChuyenNganhs, "MaChuyenNganh", "TenChuyenNganh", nhaKhoaHoc.MaCNDaoTao);
            ViewBag.MaDonViQL = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI", nhaKhoaHoc.MaDonViQL);
            ViewBag.MaHocHam = new SelectList(db.HocHams, "MaHocHam", "TenHocHam", nhaKhoaHoc.MaHocHam);
            ViewBag.MaHocVi = new SelectList(db.HocVis, "MaHocVi", "TenHocVi", nhaKhoaHoc.MaHocVi);
            ViewBag.MaNgachVienChuc = new SelectList(db.NgachVienChucs, "MaNgach", "TenNgach", nhaKhoaHoc.MaNgachVienChuc);
            return View(nhaKhoaHoc);
        }

        // GET: NhaKhoaHocs/Edit/5
        public async Task<ActionResult> Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NhaKhoaHoc nhaKhoaHoc = await db.NhaKhoaHocs.FindAsync(id);
            if (nhaKhoaHoc == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaCNDaoTao = new SelectList(db.ChuyenNganhs, "MaChuyenNganh", "TenChuyenNganh", nhaKhoaHoc.MaCNDaoTao);
            ViewBag.MaDonViQL = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI", nhaKhoaHoc.MaDonViQL);
            ViewBag.MaHocHam = new SelectList(db.HocHams, "MaHocHam", "TenHocHam", nhaKhoaHoc.MaHocHam);
            ViewBag.MaHocVi = new SelectList(db.HocVis, "MaHocVi", "TenHocVi", nhaKhoaHoc.MaHocVi);
            ViewBag.MaNgachVienChuc = new SelectList(db.NgachVienChucs, "MaNgach", "TenNgach", nhaKhoaHoc.MaNgachVienChuc);
            return View(nhaKhoaHoc);
        }

        // POST: NhaKhoaHocs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "MaNKH,MaNKHHoSo,HoNKH,TenNKH,GioiTinhNKH,NgaySinh,DiaChiLienHe,DienThoai,EmailLienHe,MaHocHam,MaHocVi,MaCNDaoTao,MaDonViQL,AnhDaiDien,MaNgachVienChuc")] NhaKhoaHoc nhaKhoaHoc)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nhaKhoaHoc).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.MaCNDaoTao = new SelectList(db.ChuyenNganhs, "MaChuyenNganh", "TenChuyenNganh", nhaKhoaHoc.MaCNDaoTao);
            ViewBag.MaDonViQL = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI", nhaKhoaHoc.MaDonViQL);
            ViewBag.MaHocHam = new SelectList(db.HocHams, "MaHocHam", "TenHocHam", nhaKhoaHoc.MaHocHam);
            ViewBag.MaHocVi = new SelectList(db.HocVis, "MaHocVi", "TenHocVi", nhaKhoaHoc.MaHocVi);
            ViewBag.MaNgachVienChuc = new SelectList(db.NgachVienChucs, "MaNgach", "TenNgach", nhaKhoaHoc.MaNgachVienChuc);
            return View(nhaKhoaHoc);
        }

        // GET: NhaKhoaHocs/Delete/5
        public async Task<ActionResult> Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NhaKhoaHoc nhaKhoaHoc = await db.NhaKhoaHocs.FindAsync(id);
            if (nhaKhoaHoc == null)
            {
                return HttpNotFound();
            }
            return View(nhaKhoaHoc);
        }

        // POST: NhaKhoaHocs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(string id)
        {
            NhaKhoaHoc nhaKhoaHoc = await db.NhaKhoaHocs.FindAsync(id);
            db.NhaKhoaHocs.Remove(nhaKhoaHoc);
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
