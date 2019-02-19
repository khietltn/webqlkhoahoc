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
    public class BaiBaosController : Controller
    {
        private QLKhoaHocEntities db = new QLKhoaHocEntities();
        private QLKHRepository QLKHrepo = new QLKHRepository();

        // GET: BaiBaos
        public async Task<ActionResult> Index(int? Page_No, [Bind(Include = "MaLinhVuc,MaPhanLoaiTapChi,MaLoaiTapChi,MaCapTapChi,CQXuatBan,Fromdate,Todate,SearchValue")] BaiBaoSearchViewModel baibao, int? nkhId)
        {

            var baibaos = db.BaiBaos.Include(b => b.CapTapChi).Include(b => b.PhanLoaiTapChi).Include(b => b.LinhVucs).Include(b => b.DSNguoiThamGiaBaiBaos).ToList();

            if (nkhId == null)
            {
                if (!String.IsNullOrEmpty(baibao.MaLinhVuc))
                {
                    if (baibao.MaLinhVuc[0] == 'a')
                        baibaos = baibaos.Where(p => p.LinhVucs.Any(t => t.MaLinhVuc.ToString() == baibao.MaLinhVuc.Substring(1, baibao.MaLinhVuc.Length - 1))).ToList();
                    else
                        baibaos = baibaos.Where(p => p.LinhVucs.Any(t => t.MaNhomLinhVuc.ToString() == baibao.MaLinhVuc)).ToList();
                }
                if (!String.IsNullOrEmpty(baibao.MaPhanLoaiTapChi))
                {
                    baibaos = baibaos.Where(p => p.MaLoaiTapChi.ToString() == baibao.MaPhanLoaiTapChi).ToList();
                }

                if (!String.IsNullOrEmpty(baibao.MaLoaiTapChi))
                {
                    if (baibao.MaLoaiTapChi == "0")
                        baibaos = baibaos.Where(p => p.LaTrongNuoc == false).ToList();
                    else
                        baibaos = baibaos.Where(p => p.LaTrongNuoc == true).ToList();
                }

                if (baibao.Fromdate > DateTime.MinValue)
                {
                    baibaos = baibaos.Where(p => p.NamDangBao.Value.Year >= baibao.Fromdate.Year).ToList();
                }
                if (baibao.Todate > DateTime.MinValue)
                {
                    baibaos = baibaos.Where(p => p.NamDangBao.Value.Year <= baibao.Todate.Year).ToList();
                }
                if (!String.IsNullOrEmpty(baibao.CQXuatBan))
                {
                    baibaos = baibaos.Where(p => p.CQXuatBan.Contains(baibao.CQXuatBan)).ToList();
                }
                if (!String.IsNullOrEmpty(baibao.SearchValue))
                {
                    baibaos = baibaos.Where(p => p.TenBaiBao.Contains(baibao.SearchValue)).ToList();
                }
            }
            else
            {
                if (Session["user"] == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest, "User Unidentified");
                }
                UserLoginViewModel nd = (UserLoginViewModel)Session["user"];

                var mabaibaos = db.DSNguoiThamGiaBaiBaos.Where(p => p.MaNKH == 1).Select(p => p.MaBaiBao).ToList();
                baibaos = baibaos.Where(p => mabaibaos.Contains(p.MaBaiBao)).ToList();
            }



            var listBB = baibaos.Concat(baibaos)
                                .Concat(baibaos)
                                .Concat(baibaos)
                                .Concat(baibaos)
                                .Concat(baibaos)
                                .Concat(baibaos)
                                .Concat(baibaos)
                                .Concat(baibaos)
                                .Concat(baibaos)
                                .Concat(baibaos)
                                .Concat(baibaos)
                                .ToList();

            ViewBag.MaLinhVuc = new SelectList(QLKHrepo.GetListMenuLinhVuc(), "Id", "TenLinhVuc");
            ViewBag.Fromdate = baibao.Fromdate.ToShortDateString();
            ViewBag.Todate = baibao.Todate.ToShortDateString();
            ViewBag.MaCapTapChi = new SelectList(db.CapTapChis, "MaCapTapChi", "TenCapTapChi");
            ViewBag.MaPhanLoaiTapChi = new SelectList(db.PhanLoaiTapChis, "MaLoaiTapChi", "TenLoaiTapChi");
            ViewBag.MaLoaiTapChi = new List<SelectListItem>
            {
                new SelectListItem { Text = "Trong Nước", Value = "1"},
                new SelectListItem { Text = "Ngoài Nước", Value ="0"},
            };
            ViewBag.CQXuatBan = baibao.CQXuatBan;
            ViewBag.SearchValue = baibao.SearchValue;


            int Size_Of_Page = 6;
            int No_Of_Page = (Page_No ?? 1);
            return View(listBB.ToPagedList(No_Of_Page, Size_Of_Page));
        }


        // GET: BaiBaos/baibaols/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BaiBao baiBao = await db.BaiBaos.FindAsync(id);
            if (baiBao == null)
            {
                return HttpNotFound();
            }
            return View(baiBao);
        }

        // GET: BaiBaos/Create
        public ActionResult Create()
        {
            ViewBag.MaCapTapChi = new SelectList(db.CapTapChis, "MaCapTapChi", "TenCapTapChi");
            ViewBag.MaLoaiTapChi = new SelectList(db.PhanLoaiTapChis, "MaLoaiTapChi", "TenLoaiTapChi");
            return View();
        }

        // POST: BaiBaos/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more baibaols see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "MaBaiBao,MaISSN,TenBaiBao,LaTrongNuoc,CQXuatBan,MaLoaiTapChi,MaCapTapChi,NamDangBao,TapPhatHanh,SoPhatHanh,TrangBaiBao,LienKetWeb,LinkFileUpLoad")] BaiBao baiBao)
        {
            if (ModelState.IsValid)
            {
                db.BaiBaos.Add(baiBao);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.MaCapTapChi = new SelectList(db.CapTapChis, "MaCapTapChi", "TenCapTapChi", baiBao.MaCapTapChi);
            ViewBag.MaLoaiTapChi = new SelectList(db.PhanLoaiTapChis, "MaLoaiTapChi", "TenLoaiTapChi", baiBao.MaLoaiTapChi);
            return View(baiBao);
        }

        // GET: BaiBaos/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BaiBao baiBao = await db.BaiBaos.FindAsync(id);
            if (baiBao == null)
            {
                return HttpNotFound();
            }

            var lstAllNKH = db.NhaKhoaHocs.Where(p => p.MaNKH != 1).Select(p => new
            {
                p.MaNKH,
                TenNKH = p.HoNKH + " " + p.TenNKH
            }).ToList();

           

            var tacgiaphu = db.NhaKhoaHocs.Where(p => p.DSNguoiThamGiaBaiBaos.Any(d => d.MaBaiBao == baiBao.MaBaiBao && d.LaTacGiaChinh == false)).Select(p => p.MaNKH).ToList();

            ViewBag.MaCapTapChi = new SelectList(db.CapTapChis, "MaCapTapChi", "TenCapTapChi", baiBao.MaCapTapChi);
            ViewBag.MaLoaiTapChi = new SelectList(db.PhanLoaiTapChis, "MaLoaiTapChi", "TenLoaiTapChi", baiBao.MaLoaiTapChi);
            ViewBag.DSNguoiThamGiaBaiBao = new MultiSelectList(lstAllNKH, "MaNKH","TenNKH",tacgiaphu);
            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc", baiBao.LinhVucs);
            ViewBag.NguonGoc = new List<SelectListItem> {
                new SelectListItem { Text = "Trong nước" , Value = "true"},
                new SelectListItem { Text = "Ngoài nước" , Value = "false"}
            };
            return View(baiBao);
        }

        // POST: BaiBaos/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more baibaols see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(DSNguoiThamGiaBaiBao DSNguoiThamGiaBaiBao ,[Bind(Include = "MaBaiBao,MaISSN,TenBaiBao,LaTrongNuoc,CQXuatBan,MaLoaiTapChi,MaCapTapChi,NamDangBao,TapPhatHanh,SoPhatHanh,TrangBaiBao,LienKetWeb")] BaiBao baiBao,HttpPostedFileBase linkUpload)
        {            
            if (ModelState.IsValid)
            {
                db.Entry(baiBao).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            foreach (ModelState modelState in ViewData.ModelState.Values)
            {
                foreach (ModelError error in modelState.Errors)
                {
                   var  message = error.ErrorMessage;
                }
            }
            ViewBag.MaCapTapChi = new SelectList(db.CapTapChis, "MaCapTapChi", "TenCapTapChi", baiBao.MaCapTapChi);
            ViewBag.MaLoaiTapChi = new SelectList(db.PhanLoaiTapChis, "MaLoaiTapChi", "TenLoaiTapChi", baiBao.MaLoaiTapChi);
            return View(baiBao);
        }

        // GET: BaiBaos/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BaiBao baiBao = await db.BaiBaos.FindAsync(id);
            if (baiBao == null)
            {
                return HttpNotFound();
            }
            return View(baiBao);
        }

        // POST: BaiBaos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            BaiBao baiBao = await db.BaiBaos.FindAsync(id);
            db.BaiBaos.Remove(baiBao);
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
