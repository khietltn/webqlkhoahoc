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
    public class AdminDSNguoiThamGiaDeTaiController : Controller
    {
        private QLKhoaHocEntities db = new QLKhoaHocEntities();

        // GET: AdminDSNguoiThamGiaDeTai
        public async Task<ActionResult> Index()
        {
            var dSNguoiThamGiaDeTais = db.DSNguoiThamGiaDeTais.Include(d => d.DeTai).Include(d => d.NhaKhoaHoc);
            return View(await dSNguoiThamGiaDeTais.ToListAsync());
        }

        // GET: AdminDSNguoiThamGiaDeTai/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DSNguoiThamGiaDeTai dSNguoiThamGiaDeTai = await db.DSNguoiThamGiaDeTais.FindAsync(id);
            if (dSNguoiThamGiaDeTai == null)
            {
                return HttpNotFound();
            }
            return View(dSNguoiThamGiaDeTai);
        }

        // GET: AdminDSNguoiThamGiaDeTai/Create
        public ActionResult Create()
        {
            ViewBag.MaDeTai = new SelectList(db.DeTais, "MaDeTai", "MaDeTaiHoSo");
            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo");
            return View();
        }

        // POST: AdminDSNguoiThamGiaDeTai/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "MaDeTai,MaNKH,LaChuNhiem")] DSNguoiThamGiaDeTai dSNguoiThamGiaDeTai)
        {
            if (ModelState.IsValid)
            {
                db.DSNguoiThamGiaDeTais.Add(dSNguoiThamGiaDeTai);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.MaDeTai = new SelectList(db.DeTais, "MaDeTai", "MaDeTaiHoSo", dSNguoiThamGiaDeTai.MaDeTai);
            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo", dSNguoiThamGiaDeTai.MaNKH);
            return View(dSNguoiThamGiaDeTai);
        }

        // GET: AdminDSNguoiThamGiaDeTai/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DSNguoiThamGiaDeTai dSNguoiThamGiaDeTai = await db.DSNguoiThamGiaDeTais.FindAsync(id);
            if (dSNguoiThamGiaDeTai == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaDeTai = new SelectList(db.DeTais, "MaDeTai", "MaDeTaiHoSo", dSNguoiThamGiaDeTai.MaDeTai);
            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo", dSNguoiThamGiaDeTai.MaNKH);
            return View(dSNguoiThamGiaDeTai);
        }

        // POST: AdminDSNguoiThamGiaDeTai/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "MaDeTai,MaNKH,LaChuNhiem")] DSNguoiThamGiaDeTai dSNguoiThamGiaDeTai)
        {
            if (ModelState.IsValid)
            {
                db.Entry(dSNguoiThamGiaDeTai).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.MaDeTai = new SelectList(db.DeTais, "MaDeTai", "MaDeTaiHoSo", dSNguoiThamGiaDeTai.MaDeTai);
            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo", dSNguoiThamGiaDeTai.MaNKH);
            return View(dSNguoiThamGiaDeTai);
        }

        // GET: AdminDSNguoiThamGiaDeTai/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DSNguoiThamGiaDeTai dSNguoiThamGiaDeTai = await db.DSNguoiThamGiaDeTais.FindAsync(id);
            if (dSNguoiThamGiaDeTai == null)
            {
                return HttpNotFound();
            }
            return View(dSNguoiThamGiaDeTai);
        }

        // POST: AdminDSNguoiThamGiaDeTai/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            DSNguoiThamGiaDeTai dSNguoiThamGiaDeTai = await db.DSNguoiThamGiaDeTais.FindAsync(id);
            db.DSNguoiThamGiaDeTais.Remove(dSNguoiThamGiaDeTai);
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
