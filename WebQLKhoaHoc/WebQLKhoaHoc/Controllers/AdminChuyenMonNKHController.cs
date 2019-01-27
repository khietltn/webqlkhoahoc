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
    public class AdminChuyenMonNKHController : Controller
    {
        private QLKhoaHocEntities db = new QLKhoaHocEntities();

        // GET: AdminChuyenMonNKH
        public async Task<ActionResult> Index()
        {
            var chuyenMonNKHs = db.ChuyenMonNKHs.Include(c => c.ChuyenMon).Include(c => c.NhaKhoaHoc);
            return View(await chuyenMonNKHs.ToListAsync());
        }

        // GET: AdminChuyenMonNKH/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChuyenMonNKH chuyenMonNKH = await db.ChuyenMonNKHs.FindAsync(id);
            if (chuyenMonNKH == null)
            {
                return HttpNotFound();
            }
            return View(chuyenMonNKH);
        }

        // GET: AdminChuyenMonNKH/Create
        public ActionResult Create()
        {
            ViewBag.MaChuyenMon = new SelectList(db.ChuyenMons, "MaChuyenMon", "TenChuyenMon");
            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo");
            return View();
        }

        // POST: AdminChuyenMonNKH/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "MaNKH,MaChuyenMon,NgayCapNhat")] ChuyenMonNKH chuyenMonNKH)
        {
            if (ModelState.IsValid)
            {
                db.ChuyenMonNKHs.Add(chuyenMonNKH);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.MaChuyenMon = new SelectList(db.ChuyenMons, "MaChuyenMon", "TenChuyenMon", chuyenMonNKH.MaChuyenMon);
            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo", chuyenMonNKH.MaNKH);
            return View(chuyenMonNKH);
        }

        // GET: AdminChuyenMonNKH/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChuyenMonNKH chuyenMonNKH = await db.ChuyenMonNKHs.FindAsync(id);
            if (chuyenMonNKH == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaChuyenMon = new SelectList(db.ChuyenMons, "MaChuyenMon", "TenChuyenMon", chuyenMonNKH.MaChuyenMon);
            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo", chuyenMonNKH.MaNKH);
            return View(chuyenMonNKH);
        }

        // POST: AdminChuyenMonNKH/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "MaNKH,MaChuyenMon,NgayCapNhat")] ChuyenMonNKH chuyenMonNKH)
        {
            if (ModelState.IsValid)
            {
                db.Entry(chuyenMonNKH).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.MaChuyenMon = new SelectList(db.ChuyenMons, "MaChuyenMon", "TenChuyenMon", chuyenMonNKH.MaChuyenMon);
            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo", chuyenMonNKH.MaNKH);
            return View(chuyenMonNKH);
        }

        // GET: AdminChuyenMonNKH/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChuyenMonNKH chuyenMonNKH = await db.ChuyenMonNKHs.FindAsync(id);
            if (chuyenMonNKH == null)
            {
                return HttpNotFound();
            }
            return View(chuyenMonNKH);
        }

        // POST: AdminChuyenMonNKH/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            ChuyenMonNKH chuyenMonNKH = await db.ChuyenMonNKHs.FindAsync(id);
            db.ChuyenMonNKHs.Remove(chuyenMonNKH);
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
