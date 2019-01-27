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
    public class AdminDSTacGiaController : Controller
    {
        private QLKhoaHocEntities db = new QLKhoaHocEntities();

        // GET: AdminDSTacGia
        public async Task<ActionResult> Index()
        {
            var dSTacGias = db.DSTacGias.Include(d => d.NhaKhoaHoc).Include(d => d.SachGiaoTrinh);
            return View(await dSTacGias.ToListAsync());
        }

        // GET: AdminDSTacGia/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DSTacGia dSTacGia = await db.DSTacGias.FindAsync(id);
            if (dSTacGia == null)
            {
                return HttpNotFound();
            }
            return View(dSTacGia);
        }

        // GET: AdminDSTacGia/Create
        public ActionResult Create()
        {
            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo");
            ViewBag.MaSach = new SelectList(db.SachGiaoTrinhs, "MaSach", "MaISBN");
            return View();
        }

        // POST: AdminDSTacGia/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "MaSach,MaNKH,LaChuBien")] DSTacGia dSTacGia)
        {
            if (ModelState.IsValid)
            {
                db.DSTacGias.Add(dSTacGia);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo", dSTacGia.MaNKH);
            ViewBag.MaSach = new SelectList(db.SachGiaoTrinhs, "MaSach", "MaISBN", dSTacGia.MaSach);
            return View(dSTacGia);
        }

        // GET: AdminDSTacGia/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DSTacGia dSTacGia = await db.DSTacGias.FindAsync(id);
            if (dSTacGia == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo", dSTacGia.MaNKH);
            ViewBag.MaSach = new SelectList(db.SachGiaoTrinhs, "MaSach", "MaISBN", dSTacGia.MaSach);
            return View(dSTacGia);
        }

        // POST: AdminDSTacGia/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "MaSach,MaNKH,LaChuBien")] DSTacGia dSTacGia)
        {
            if (ModelState.IsValid)
            {
                db.Entry(dSTacGia).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo", dSTacGia.MaNKH);
            ViewBag.MaSach = new SelectList(db.SachGiaoTrinhs, "MaSach", "MaISBN", dSTacGia.MaSach);
            return View(dSTacGia);
        }

        // GET: AdminDSTacGia/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DSTacGia dSTacGia = await db.DSTacGias.FindAsync(id);
            if (dSTacGia == null)
            {
                return HttpNotFound();
            }
            return View(dSTacGia);
        }

        // POST: AdminDSTacGia/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            DSTacGia dSTacGia = await db.DSTacGias.FindAsync(id);
            db.DSTacGias.Remove(dSTacGia);
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
