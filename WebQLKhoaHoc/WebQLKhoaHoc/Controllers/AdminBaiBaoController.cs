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
    public class AdminBaiBaoController : Controller
    {
        private QLKhoaHocEntities db = new QLKhoaHocEntities();

        // GET: AdminBaiBao
        public async Task<ActionResult> Index()
        {
            var baiBaos = db.BaiBaos.Include(b => b.CapTapChi).Include(b => b.PhanLoaiTapChi);
            return View(await baiBaos.ToListAsync());
        }

        // GET: AdminBaiBao/Details/5
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

        // GET: AdminBaiBao/Create
        public ActionResult Create()
        {
            ViewBag.MaCapTapChi = new SelectList(db.CapTapChis, "MaCapTapChi", "TenCapTapChi");
            ViewBag.MaLoaiTapChi = new SelectList(db.PhanLoaiTapChis, "MaLoaiTapChi", "TenLoaiTapChi");
            return View();
        }

        // POST: AdminBaiBao/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(HttpPostedFileBase linkUpload,[Bind(Include = "MaBaiBao,MaISSN,TenBaiBao,LaTrongNuoc,CQXuatBan,MaLoaiTapChi,MaCapTapChi,NamDangBao,TapPhatHanh,SoPhatHanh,TrangBaiBao,LienKetWeb")] BaiBao baiBao)
        {
            if (ModelState.IsValid)
            {
                db.BaiBaos.Add(baiBao);
                await db.SaveChangesAsync();

                db.BaiBaos.Attach(baiBao);
                if (linkUpload != null && linkUpload.ContentLength > 0)
                {
                    string filename = Path.GetFileNameWithoutExtension(linkUpload.FileName) + "_" + baiBao.MaBaiBao.ToString() + Path.GetExtension(linkUpload.FileName);
                    string path = Path.Combine(Server.MapPath("~/App_Data/uploads/baibao_file"), filename);
                    linkUpload.SaveAs(path);
                    baiBao.LinkFileUpLoad = filename;

                }
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.MaCapTapChi = new SelectList(db.CapTapChis, "MaCapTapChi", "TenCapTapChi", baiBao.MaCapTapChi);
            ViewBag.MaLoaiTapChi = new SelectList(db.PhanLoaiTapChis, "MaLoaiTapChi", "TenLoaiTapChi", baiBao.MaLoaiTapChi);
            return View(baiBao);
        }

        // GET: AdminBaiBao/Edit/5
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
            ViewBag.MaCapTapChi = new SelectList(db.CapTapChis, "MaCapTapChi", "TenCapTapChi", baiBao.MaCapTapChi);
            ViewBag.MaLoaiTapChi = new SelectList(db.PhanLoaiTapChis, "MaLoaiTapChi", "TenLoaiTapChi", baiBao.MaLoaiTapChi);
            return View(baiBao);
        }

        // POST: AdminBaiBao/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(HttpPostedFileBase linkUpload,[Bind(Include = "MaBaiBao,MaISSN,TenBaiBao,LaTrongNuoc,CQXuatBan,MaLoaiTapChi,MaCapTapChi,NamDangBao,TapPhatHanh,SoPhatHanh,TrangBaiBao,LienKetWeb,LinkFileUpLoad")] BaiBao baiBao)
        {
            if (ModelState.IsValid)
            {
                db.Entry(baiBao).State = EntityState.Modified;
                await db.SaveChangesAsync();

                if (linkUpload != null && linkUpload.ContentLength > 0)
                {
                    string filename = Path.GetFileNameWithoutExtension(linkUpload.FileName) + "_" + baiBao.MaBaiBao.ToString() + Path.GetExtension(linkUpload.FileName);
                    string path = Path.Combine(Server.MapPath("~/App_Data/uploads/baibao_file"), filename);
                    if (!String.IsNullOrEmpty(baiBao.LinkFileUpLoad))
                    {
                        string oldpath = Path.Combine(Server.MapPath("~/App_Data/uploads/baibao_file"), baiBao.LinkFileUpLoad);
                        if (System.IO.File.Exists(oldpath))
                        {
                            System.IO.File.Delete(oldpath);
                        }
                    }
                    linkUpload.SaveAs(path);
                    baiBao.LinkFileUpLoad = filename;
                }
                return RedirectToAction("Index");
            }
            ViewBag.MaCapTapChi = new SelectList(db.CapTapChis, "MaCapTapChi", "TenCapTapChi", baiBao.MaCapTapChi);
            ViewBag.MaLoaiTapChi = new SelectList(db.PhanLoaiTapChis, "MaLoaiTapChi", "TenLoaiTapChi", baiBao.MaLoaiTapChi);
            return View(baiBao);
        }

        // GET: AdminBaiBao/Delete/5
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


            var baibaodetai = db.DSBaiBaoDeTais.Where(p => p.MaBaiBao == id).ToList();
            foreach (var item in baibaodetai)
            {
                db.DSBaiBaoDeTais.Remove(item);
                db.SaveChanges();
            }

            var nguoithamgia = db.DSNguoiThamGiaBaiBaos.Where(p => p.MaBaiBao == id).ToList();
            foreach (var item in nguoithamgia)
            {
                db.DSNguoiThamGiaBaiBaos.Remove(item);
            }

            var linhvuc = baiBao.LinhVucs.ToList();
            foreach (var item in linhvuc)
            {
                baiBao.LinhVucs.Remove(item);
            }

           
            db.BaiBaos.Remove(baiBao);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        // POST: AdminBaiBao/Delete/5
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
