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
using WebQLKhoaHoc;
using WebQLKhoaHoc.Models;

namespace WebQLKhoaHoc.Controllers
{
    public class SachGiaoTrinhsController : Controller
    {
        private QLKhoaHocEntities db = new QLKhoaHocEntities();
        private QLKHRepository QLKHrepo = new QLKHRepository();

        // GET: SachGiaoTrinhs
        public async Task<ActionResult> Index(int? Page_No)
        {
            ViewBag.MaLinhVuc = new SelectList(QLKHrepo.GetListMenuLinhVuc(), "Id", "TenLinhVuc");
            ViewBag.MaNXB = new SelectList(db.NhaXuatBans, "MaNXB", "TenNXB");
            ViewBag.MaLoai = new SelectList(db.PhanLoaiSaches, "MaLoai", "TenLoai");
            var sachGiaoTrinhs = db.SachGiaoTrinhs.Include(s => s.LinhVuc).Include(s => s.NhaXuatBan).Include(s => s.PhanLoaiSach);
            var listDT = sachGiaoTrinhs.Concat(sachGiaoTrinhs)
                           .Concat(sachGiaoTrinhs)
                           .Concat(sachGiaoTrinhs)
                           .Concat(sachGiaoTrinhs)
                           .Concat(sachGiaoTrinhs)
                           .Concat(sachGiaoTrinhs)
                           .ToList();

            int Size_Of_Page = 6;
            int No_Of_Page = (Page_No ?? 1);
            return View(listDT.ToPagedList(No_Of_Page, Size_Of_Page));
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Search(int? Page_No, [Bind(Include = "MaLinhVuc,MaLoai,MaNXB,SearchValue")] SachGiaoTrinhSearchViewModel sachgiaotrinh)
        {
            var sachGiaoTrinhs = db.SachGiaoTrinhs.Include(s => s.LinhVuc).Include(s => s.NhaXuatBan).Include(s => s.PhanLoaiSach).ToList();

            if (!String.IsNullOrEmpty(sachgiaotrinh.MaLoai))
            {
                sachGiaoTrinhs = sachGiaoTrinhs.Where(p => p.MaLoai.ToString() == sachgiaotrinh.MaLoai).ToList();
            }
            if (!String.IsNullOrEmpty(sachgiaotrinh.MaLinhVuc))
            {
                if (sachgiaotrinh.MaLinhVuc[0] == 'a')
                    sachGiaoTrinhs = sachGiaoTrinhs.Where(p =>
                        p.MaLinhVuc.ToString() == sachgiaotrinh.MaLinhVuc.Substring(1, sachgiaotrinh.MaLinhVuc.Length - 1)).ToList();
                else
                    sachGiaoTrinhs = sachGiaoTrinhs.Where(p => p.LinhVuc.MaNhomLinhVuc.ToString() == sachgiaotrinh.MaLinhVuc).ToList();
            }
           
            if (!String.IsNullOrEmpty(sachgiaotrinh.SearchValue))
            {
                sachGiaoTrinhs = sachGiaoTrinhs.Where(p => p.TenSach.Contains(sachgiaotrinh.SearchValue)).ToList();
            }

            ViewBag.MaLinhVuc = new SelectList(QLKHrepo.GetListMenuLinhVuc(), "Id", "TenLinhVuc");
            ViewBag.MaNXB = new SelectList(db.NhaXuatBans, "MaNXB", "TenNXB");
            ViewBag.MaLoai = new SelectList(db.PhanLoaiSaches, "MaLoai", "TenLoai");
            ViewBag.SearchValue = sachgiaotrinh.SearchValue;
            int Size_Of_Page = 6;
            int No_Of_Page = (Page_No ?? 1);
            return View("Index", sachGiaoTrinhs.ToPagedList(No_Of_Page, Size_Of_Page));
        }

        // GET: SachGiaoTrinhs/sachgiaotrinhls/5
        public async Task<ActionResult> sachgiaotrinhls(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SachGiaoTrinh sachGiaoTrinh = await db.SachGiaoTrinhs.FindAsync(id);
            if (sachGiaoTrinh == null)
            {
                return HttpNotFound();
            }
            return View(sachGiaoTrinh);
        }

        // GET: SachGiaoTrinhs/Create
        public ActionResult Create()
        {
            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc");
            ViewBag.MaNXB = new SelectList(db.NhaXuatBans, "MaNXB", "TenNXB");
            ViewBag.MaLoai = new SelectList(db.PhanLoaiSaches, "MaLoai", "TenLoai");
            return View();
        }

        // POST: SachGiaoTrinhs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more sachgiaotrinhls see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "MaSach,MaISBN,TenSach,MaLoai,MaLinhVuc,MaNXB,NamXuatBan")] SachGiaoTrinh sachGiaoTrinh)
        {
            if (ModelState.IsValid)
            {
                db.SachGiaoTrinhs.Add(sachGiaoTrinh);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc", sachGiaoTrinh.MaLinhVuc);
            ViewBag.MaNXB = new SelectList(db.NhaXuatBans, "MaNXB", "TenNXB", sachGiaoTrinh.MaNXB);
            ViewBag.MaLoai = new SelectList(db.PhanLoaiSaches, "MaLoai", "TenLoai", sachGiaoTrinh.MaLoai);
            return View(sachGiaoTrinh);
        }

        // GET: SachGiaoTrinhs/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SachGiaoTrinh sachGiaoTrinh = await db.SachGiaoTrinhs.FindAsync(id);
            if (sachGiaoTrinh == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc", sachGiaoTrinh.MaLinhVuc);
            ViewBag.MaNXB = new SelectList(db.NhaXuatBans, "MaNXB", "TenNXB", sachGiaoTrinh.MaNXB);
            ViewBag.MaLoai = new SelectList(db.PhanLoaiSaches, "MaLoai", "TenLoai", sachGiaoTrinh.MaLoai);
            return View(sachGiaoTrinh);
        }

        // POST: SachGiaoTrinhs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more sachgiaotrinhls see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "MaSach,MaISBN,TenSach,MaLoai,MaLinhVuc,MaNXB,NamXuatBan")] SachGiaoTrinh sachGiaoTrinh)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sachGiaoTrinh).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc", sachGiaoTrinh.MaLinhVuc);
            ViewBag.MaNXB = new SelectList(db.NhaXuatBans, "MaNXB", "TenNXB", sachGiaoTrinh.MaNXB);
            ViewBag.MaLoai = new SelectList(db.PhanLoaiSaches, "MaLoai", "TenLoai", sachGiaoTrinh.MaLoai);
            return View(sachGiaoTrinh);
        }

        // GET: SachGiaoTrinhs/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SachGiaoTrinh sachGiaoTrinh = await db.SachGiaoTrinhs.FindAsync(id);
            if (sachGiaoTrinh == null)
            {
                return HttpNotFound();
            }
            return View(sachGiaoTrinh);
        }

        // POST: SachGiaoTrinhs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            SachGiaoTrinh sachGiaoTrinh = await db.SachGiaoTrinhs.FindAsync(id);
            db.SachGiaoTrinhs.Remove(sachGiaoTrinh);
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
