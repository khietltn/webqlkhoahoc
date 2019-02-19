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
using System.Data.Entity.Migrations;

namespace WebQLKhoaHoc.Controllers
{
    public class SachGiaoTrinhsController : Controller
    {
        private QLKhoaHocEntities db = new QLKhoaHocEntities();
        private QLKHRepository QLKHrepo = new QLKHRepository();

        // GET: SachGiaoTrinhs
        public async Task<ActionResult> Index(int? Page_No, [Bind(Include = "MaLoai,MaNXB,MaLinhVuc,SearchValue")] SachGiaoTrinhSearchViewModel sachGiaoTrinh, int? nkhId)
        {
            ViewBag.MaLinhVuc = new SelectList(QLKHrepo.GetListMenuLinhVuc(), "Id", "TenLinhVuc");
            ViewBag.MaNXB = new SelectList(db.NhaXuatBans, "MaNXB", "TenNXB");
            ViewBag.MaLoai = new SelectList(db.PhanLoaiSaches, "MaLoai", "TenLoai");
            var sachGiaoTrinhs = db.SachGiaoTrinhs.Include(s => s.LinhVuc).Include(s => s.NhaXuatBan).Include(s => s.PhanLoaiSach).Include(s => s.DSTacGias).ToList();

            if (nkhId == null)
            {
                if (!String.IsNullOrEmpty(sachGiaoTrinh.MaLoai))
                {
                    sachGiaoTrinhs = sachGiaoTrinhs.Where(p => p.MaLoai.ToString() == sachGiaoTrinh.MaLoai).ToList();
                }
                if (!String.IsNullOrEmpty(sachGiaoTrinh.MaNXB))
                {
                    sachGiaoTrinhs = sachGiaoTrinhs.Where(p => p.MaLoai.ToString() == sachGiaoTrinh.MaNXB).ToList();
                }
                if (!String.IsNullOrEmpty(sachGiaoTrinh.MaLinhVuc))
                {
                    if (sachGiaoTrinh.MaLinhVuc[0] == 'a')
                        sachGiaoTrinhs = sachGiaoTrinhs.Where(p =>
                            p.MaLinhVuc.ToString() == sachGiaoTrinh.MaLinhVuc.Substring(1, sachGiaoTrinh.MaLinhVuc.Length - 1)).ToList();
                    else
                        sachGiaoTrinhs = sachGiaoTrinhs.Where(p => p.LinhVuc.MaNhomLinhVuc.ToString() == sachGiaoTrinh.MaLinhVuc).ToList();
                }
                if (!String.IsNullOrEmpty(sachGiaoTrinh.SearchValue))
                {
                    sachGiaoTrinhs = sachGiaoTrinhs.Where(p => p.TenSach.ToLower().Contains(sachGiaoTrinh.SearchValue.ToLower())).ToList();
                }
                ViewBag.SearchValue = sachGiaoTrinh.SearchValue;

            }
            else
            {
                if (Session["user"] == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest, "User Unidentified");
                }
                UserLoginViewModel nd = (UserLoginViewModel)Session["user"];
                var maSachs = db.DSTacGias.Where(p => p.MaNKH == nd.MaNKH).Select(p => p.MaSach).ToList();

                sachGiaoTrinhs = sachGiaoTrinhs.Where(p => maSachs.Contains(p.MaSach)).ToList();
            }

            sachGiaoTrinhs = sachGiaoTrinhs.Concat(sachGiaoTrinhs)
                .Concat(sachGiaoTrinhs)
                .Concat(sachGiaoTrinhs)
                .Concat(sachGiaoTrinhs)
                .Concat(sachGiaoTrinhs)
                .Concat(sachGiaoTrinhs)
                .ToList();
            int Size_Of_Page = 6;
            int No_Of_Page = (Page_No ?? 1);
            return View(sachGiaoTrinhs.ToPagedList(No_Of_Page, Size_Of_Page));
        }

        // GET: SachGiaoTrinhs/sachgiaotrinhls/5
        public async Task<ActionResult> Details(int? id)
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
            var lstAllNKH = db.NhaKhoaHocs.Where(p => p.MaNKH != 1).Select(p => new
            {
                p.MaNKH,
                TenNKH = p.HoNKH + " " + p.TenNKH
            }).ToList();

            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc");
            ViewBag.MaNXB = new SelectList(db.NhaXuatBans, "MaNXB", "TenNXB");
            ViewBag.MaLoai = new SelectList(db.PhanLoaiSaches, "MaLoai", "TenLoai");
            ViewBag.DSTacGia = new MultiSelectList(lstAllNKH.Concat(lstAllNKH), "MaNKH", "TenNKH");
            return View();
        }

        // POST: SachGiaoTrinhs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more sachgiaotrinhls see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(List<string> DSTacGia, [Bind(Include = "MaSach,MaISBN,TenSach,MaLoai,MaLinhVuc,MaNXB,NamXuatBan")] SachGiaoTrinh sachGiaoTrinh)
        {
            if (ModelState.IsValid)
            {
                foreach (var mankh in DSTacGia)
                {
                    DSTacGia tacGia = new DSTacGia
                    {
                        LaChuBien = false,
                        MaSach = sachGiaoTrinh.MaSach,
                        MaNKH = Int32.Parse(mankh)
                    };
                    db.DSTacGias.Add(tacGia);
                    db.SaveChanges();
                }
                db.SachGiaoTrinhs.Add(sachGiaoTrinh);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            

            var lstAllNKH = db.NhaKhoaHocs.Where(p => p.MaNKH != 1).Select(p => new
            {
                p.MaNKH,
                TenNKH = p.HoNKH + " " + p.TenNKH
            }).ToList();
            var tacgiaphu = db.NhaKhoaHocs.Where(p => p.DSTacGias.Any(d => d.MaSach == sachGiaoTrinh.MaSach && d.LaChuBien == false)).Select(p => p.MaNKH).ToList();

            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc", sachGiaoTrinh.MaLinhVuc);
            ViewBag.MaNXB = new SelectList(db.NhaXuatBans, "MaNXB", "TenNXB", sachGiaoTrinh.MaNXB);
            ViewBag.MaLoai = new SelectList(db.PhanLoaiSaches, "MaLoai", "TenLoai", sachGiaoTrinh.MaLoai);
            ViewBag.DSTacGia = new MultiSelectList(lstAllNKH.Concat(lstAllNKH), "MaNKH", "TenNKH", tacgiaphu);
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

            var lstAllNKH = db.NhaKhoaHocs.Where(p => p.MaNKH != 1).Select(p => new
            {
                p.MaNKH,
                TenNKH = p.HoNKH + " " + p.TenNKH
            }).ToList();
            var tacgiaphu = db.NhaKhoaHocs.Where(p => p.DSTacGias.Any(d => d.MaSach == sachGiaoTrinh.MaSach && d.LaChuBien == false)).Select(p => p.MaNKH).ToList();

            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc", sachGiaoTrinh.MaLinhVuc);
            ViewBag.MaNXB = new SelectList(db.NhaXuatBans, "MaNXB", "TenNXB", sachGiaoTrinh.MaNXB);
            ViewBag.MaLoai = new SelectList(db.PhanLoaiSaches, "MaLoai", "TenLoai", sachGiaoTrinh.MaLoai);
            ViewBag.DSTacGia = new MultiSelectList(lstAllNKH.Concat(lstAllNKH), "MaNKH", "TenNKH", tacgiaphu);
            return View(sachGiaoTrinh);
        }

        // POST: SachGiaoTrinhs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more sachgiaotrinhls see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(List<string> DSTacGia, [Bind(Include = "MaSach,MaISBN,TenSach,MaLoai,MaLinhVuc,MaNXB,NamXuatBan")] SachGiaoTrinh sachGiaoTrinh)
        {
            if (ModelState.IsValid)
            {
                foreach (var mankh in DSTacGia)
                {
                    DSTacGia tacGia = new DSTacGia
                    {
                        LaChuBien = false,
                        MaSach = sachGiaoTrinh.MaSach,
                        MaNKH = Int32.Parse(mankh)
                    };
                    db.DSTacGias.AddOrUpdate(tacGia);
                }
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            var lstAllNKH = db.NhaKhoaHocs.Where(p => p.MaNKH != 1).Select(p => new
            {
                p.MaNKH,
                TenNKH = p.HoNKH + " " + p.TenNKH
            }).ToList();
            var tacgiaphu = db.NhaKhoaHocs.Where(p => p.DSTacGias.Any(d => d.MaSach == sachGiaoTrinh.MaSach && d.LaChuBien == false)).Select(p => p.MaNKH).ToList();

            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc", sachGiaoTrinh.MaLinhVuc);
            ViewBag.MaNXB = new SelectList(db.NhaXuatBans, "MaNXB", "TenNXB", sachGiaoTrinh.MaNXB);
            ViewBag.MaLoai = new SelectList(db.PhanLoaiSaches, "MaLoai", "TenLoai", sachGiaoTrinh.MaLoai);
            ViewBag.DSTacGia = new MultiSelectList(lstAllNKH.Concat(lstAllNKH), "MaNKH", "TenNKH", tacgiaphu);
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
