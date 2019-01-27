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
    public class AdminDSNguoiThamGiaBaiBaoController : Controller
    {
        private QLKhoaHocEntities db = new QLKhoaHocEntities();

        // GET: AdminDSNguoiThamGiaBaiBao
        public async Task<ActionResult> Index()
        {
            var dSNguoiThamGiaBaiBaos = db.DSNguoiThamGiaBaiBaos.Include(d => d.BaiBao).Include(d => d.NhaKhoaHoc);
            return View(await dSNguoiThamGiaBaiBaos.ToListAsync());
        }

        // GET: AdminDSNguoiThamGiaBaiBao/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DSNguoiThamGiaBaiBao dSNguoiThamGiaBaiBao = await db.DSNguoiThamGiaBaiBaos.FindAsync(id);
            if (dSNguoiThamGiaBaiBao == null)
            {
                return HttpNotFound();
            }
            return View(dSNguoiThamGiaBaiBao);
        }

        // GET: AdminDSNguoiThamGiaBaiBao/Create
        public ActionResult Create()
        {
            ViewBag.MaBaiBao = new SelectList(db.BaiBaos, "MaBaiBao", "MaISSN");
            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo");
            return View();
        }

        // POST: AdminDSNguoiThamGiaBaiBao/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "MaBaiBao,MaNKH,LaTacGiaChinh")] DSNguoiThamGiaBaiBao dSNguoiThamGiaBaiBao)
        {
            if (ModelState.IsValid)
            {
                db.DSNguoiThamGiaBaiBaos.Add(dSNguoiThamGiaBaiBao);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.MaBaiBao = new SelectList(db.BaiBaos, "MaBaiBao", "MaISSN", dSNguoiThamGiaBaiBao.MaBaiBao);
            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo", dSNguoiThamGiaBaiBao.MaNKH);
            return View(dSNguoiThamGiaBaiBao);
        }

        // GET: AdminDSNguoiThamGiaBaiBao/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DSNguoiThamGiaBaiBao dSNguoiThamGiaBaiBao = await db.DSNguoiThamGiaBaiBaos.FindAsync(id);
            if (dSNguoiThamGiaBaiBao == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaBaiBao = new SelectList(db.BaiBaos, "MaBaiBao", "MaISSN", dSNguoiThamGiaBaiBao.MaBaiBao);
            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo", dSNguoiThamGiaBaiBao.MaNKH);
            return View(dSNguoiThamGiaBaiBao);
        }

        // POST: AdminDSNguoiThamGiaBaiBao/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "MaBaiBao,MaNKH,LaTacGiaChinh")] DSNguoiThamGiaBaiBao dSNguoiThamGiaBaiBao)
        {
            if (ModelState.IsValid)
            {
                db.Entry(dSNguoiThamGiaBaiBao).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.MaBaiBao = new SelectList(db.BaiBaos, "MaBaiBao", "MaISSN", dSNguoiThamGiaBaiBao.MaBaiBao);
            ViewBag.MaNKH = new SelectList(db.NhaKhoaHocs, "MaNKH", "MaNKHHoSo", dSNguoiThamGiaBaiBao.MaNKH);
            return View(dSNguoiThamGiaBaiBao);
        }

        // GET: AdminDSNguoiThamGiaBaiBao/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DSNguoiThamGiaBaiBao dSNguoiThamGiaBaiBao = await db.DSNguoiThamGiaBaiBaos.FindAsync(id);
            if (dSNguoiThamGiaBaiBao == null)
            {
                return HttpNotFound();
            }
            return View(dSNguoiThamGiaBaiBao);
        }

        // POST: AdminDSNguoiThamGiaBaiBao/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            DSNguoiThamGiaBaiBao dSNguoiThamGiaBaiBao = await db.DSNguoiThamGiaBaiBaos.FindAsync(id);
            db.DSNguoiThamGiaBaiBaos.Remove(dSNguoiThamGiaBaiBao);
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
