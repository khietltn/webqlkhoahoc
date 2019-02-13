using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using WebQLKhoaHoc;
using WebQLKhoaHoc.Models;
using PagedList.Mvc;
using PagedList;
using System.Text;
using System.IO;

namespace WebQLKhoaHoc.Controllers
{
    public class NhaKhoaHocsController : Controller
    {
        private QLKhoaHocEntities db = new QLKhoaHocEntities();
        private QLKHRepository repo = new QLKHRepository();

        // GET: NhaKhoaHocs
        public async Task<ActionResult> Index(int? Page_No)
        {

            ViewBag.MaCNDaoTao = new SelectList(db.ChuyenNganhs.ToList(), "MaChuyenNganh", "TenChuyenNganh");
            ViewBag.MaDonViQL = new SelectList(db.DonViQLs.ToList(), "MaDonVi", "TenDonVI");
            ViewBag.MaHocHam = new SelectList(db.HocHams.ToList(), "MaHocHam", "TenHocHam");
            ViewBag.MaHocVi = new SelectList(db.HocVis.ToList(), "MaHocVi", "TenHocVi");
            ViewBag.MaNgachVienChuc = new SelectList(db.NgachVienChucs.ToList(), "MaNgach", "TenNgach");
            var nhaKhoaHocs = db.NhaKhoaHocs.Include(n => n.ChuyenNganh).Include(n => n.DonViQL).Include(n => n.HocHam).Include(n => n.HocVi).Include(n => n.NgachVienChuc);
            var listNKH = nhaKhoaHocs.Concat(nhaKhoaHocs)
                                     .Concat(nhaKhoaHocs)
                                     .Concat(nhaKhoaHocs)
                                     .Concat(nhaKhoaHocs)
                                     .ToList();
            var lstNKH = new List<NhaKhoaHocViewModel>();
            for (int i = 0; i < listNKH.Count; i++)
            {
                NhaKhoaHocViewModel nkh = NhaKhoaHocViewModel.Mapping(listNKH[i]);
                lstNKH.Add(nkh);
            }

            int Size_Of_Page = 6;
			int No_Of_Page = (Page_No ?? 1);
            return View(lstNKH.ToPagedList(No_Of_Page, Size_Of_Page));
        }

        // GET: NhaKhoaHocs/Details/5
        public async Task<ActionResult> Details(int id)
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
            ViewBag.MaCNDaoTao = new SelectList(db.ChuyenNganhs, "MaChuyenNganh", "TenChuyenNganh");
            ViewBag.MaDonViQL = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI");
            ViewBag.MaHocHam = new SelectList(db.HocHams, "MaHocHam", "TenHocHam");
            ViewBag.MaHocVi = new SelectList(db.HocVis, "MaHocVi", "TenHocVi");
            ViewBag.MaNgachVienChuc = new SelectList(db.NgachVienChucs, "MaNgach", "TenNgach");
            NhaKhoaHocViewModel nkh = NhaKhoaHocViewModel.Mapping(nhaKhoaHoc);
            return View(nkh);
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

        public async Task<ActionResult> Search(int? Page_No,string MaHocHam,string MaHocVi)
        {
            var nhaKhoaHocs = db.NhaKhoaHocs.Include(n => n.ChuyenNganh).Include(n => n.DonViQL).Include(n => n.HocHam).Include(n => n.HocVi).Include(n => n.NgachVienChuc).ToList();
          
            if (!String.IsNullOrEmpty(MaHocHam))
            {
                nhaKhoaHocs = nhaKhoaHocs.Where(p => p.MaHocHam.ToString() == MaHocHam).ToList();
            }
            if (!String.IsNullOrEmpty(MaHocVi))
            {
                nhaKhoaHocs = nhaKhoaHocs.Where(p => p.MaHocVi.ToString() == MaHocVi).ToList();
            }

            ViewBag.MaCNDaoTao = new SelectList(db.ChuyenNganhs, "MaChuyenNganh", "TenChuyenNganh");
            ViewBag.MaDonViQL = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI");
            ViewBag.MaHocHam = new SelectList(db.HocHams, "MaHocHam", "TenHocHam");
            ViewBag.MaHocVi = new SelectList(db.HocVis, "MaHocVi", "TenHocVi");
            ViewBag.MaNgachVienChuc = new SelectList(db.NgachVienChucs, "MaNgach", "TenNgach");
           

            int Size_Of_Page = 6;
            int No_Of_Page = (Page_No ?? 1);
            var lstNKH = new List<NhaKhoaHocViewModel>();
            for (int i = 0; i < nhaKhoaHocs.Count; i++)
            {
                NhaKhoaHocViewModel nkh = NhaKhoaHocViewModel.Mapping(nhaKhoaHocs[i]);
                lstNKH.Add(nkh);
            }

            return View("Index", lstNKH.ToPagedList(No_Of_Page, Size_Of_Page));
        }
        //public async Task<ActionResult> Search(int? Page_No)
        //{
        //    ViewBag.MaCNDaoTao = new SelectList(db.ChuyenNganhs.ToList(), "MaChuyenNganh", "TenChuyenNganh");
        //    ViewBag.MaDonViQL = new SelectList(db.DonViQLs.ToList(), "MaDonVi", "TenDonVI");
        //    ViewBag.MaHocHam = new SelectList(db.HocHams.ToList(), "MaHocHam", "TenHocHam");
        //    ViewBag.MaHocVi = new SelectList(db.HocVis.ToList(), "MaHocVi", "TenHocVi");
        //    ViewBag.MaNgachVienChuc = new SelectList(db.NgachVienChucs.ToList(), "MaNgach", "TenNgach");
        //    var nhaKhoaHocs = db.NhaKhoaHocs.Include(n => n.ChuyenNganh).Include(n => n.DonViQL).Include(n => n.HocHam).Include(n => n.HocVi).Include(n => n.NgachVienChuc);
        //    var listNKH = nhaKhoaHocs.Concat(nhaKhoaHocs)
        //        .Concat(nhaKhoaHocs)
        //        .Concat(nhaKhoaHocs)
        //        .Concat(nhaKhoaHocs)
        //        .ToList();
        //    var lstNKH = new List<NhaKhoaHocViewModel>();
        //    for (int i = 0; i < listNKH.Count; i++)
        //    {
        //        NhaKhoaHocViewModel nkh = NhaKhoaHocViewModel.Mapping(listNKH[i]);
        //        lstNKH.Add(nkh);
        //    }

        //    int Size_Of_Page = 6;
        //    int No_Of_Page = (Page_No ?? 1);
        //    return View("Index", lstNKH.ToPagedList(No_Of_Page, Size_Of_Page));
        //}
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Search(int? Page_No,[Bind(Include = "MaDonVi,MaNgach,MaHocHam,MaHocVi,MaCNDaoTao,SearchValue")] NhaKhoaHocSearchViewModel nhaKhoaHoc)
        {
            var nhaKhoaHocs = db.NhaKhoaHocs.Include(n => n.ChuyenNganh).Include(n => n.DonViQL).Include(n => n.HocHam).Include(n => n.HocVi).Include(n => n.NgachVienChuc).ToList();
            if (!String.IsNullOrEmpty(nhaKhoaHoc.MaCNDaoTao))
            {
                nhaKhoaHocs = nhaKhoaHocs.Where(p => p.MaCNDaoTao.ToString() == nhaKhoaHoc.MaCNDaoTao).ToList();
            }
            if (!String.IsNullOrEmpty(nhaKhoaHoc.MaDonVi))
            {
                nhaKhoaHocs = nhaKhoaHocs.Where(p => p.MaDonViQL.ToString() == nhaKhoaHoc.MaDonVi).ToList();
            }
            if (!String.IsNullOrEmpty(nhaKhoaHoc.MaHocHam))
            {
                nhaKhoaHocs = nhaKhoaHocs.Where(p => p.MaHocHam.ToString() == nhaKhoaHoc.MaHocHam).ToList();
            }
            if (!String.IsNullOrEmpty(nhaKhoaHoc.MaHocVi))
            {
                nhaKhoaHocs = nhaKhoaHocs.Where(p => p.MaHocVi.ToString() == nhaKhoaHoc.MaHocVi).ToList();
            }
            if (!String.IsNullOrEmpty(nhaKhoaHoc.MaNgach))
            {
                nhaKhoaHocs = nhaKhoaHocs.Where(p => p.MaNgachVienChuc.ToString() == nhaKhoaHoc.MaNgach).ToList();
            }
            if (!String.IsNullOrEmpty(nhaKhoaHoc.SearchValue))
            {
                nhaKhoaHocs = nhaKhoaHocs.Where(p => p.TenNKH.Contains(nhaKhoaHoc.SearchValue)).ToList();
            }
            ViewBag.MaCNDaoTao = new SelectList(db.ChuyenNganhs, "MaChuyenNganh", "TenChuyenNganh");
            ViewBag.MaDonViQL = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI");
            ViewBag.MaHocHam = new SelectList(db.HocHams, "MaHocHam", "TenHocHam");
            ViewBag.MaHocVi = new SelectList(db.HocVis, "MaHocVi", "TenHocVi");
            ViewBag.MaNgachVienChuc = new SelectList(db.NgachVienChucs, "MaNgach", "TenNgach");
            ViewBag.SearchValue = nhaKhoaHoc.SearchValue;

            int Size_Of_Page = 6;
            int No_Of_Page = (Page_No ?? 1);
            var lstNKH = new List<NhaKhoaHocViewModel>();
            for (int i = 0; i < nhaKhoaHocs.Count; i++)
            {
                NhaKhoaHocViewModel nkh = NhaKhoaHocViewModel.Mapping(nhaKhoaHocs[i]);
                lstNKH.Add(nkh);
            }

            return View("Index", lstNKH.ToPagedList(No_Of_Page, Size_Of_Page));
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
        public async Task<ActionResult> Edit(int id)
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
            NhaKhoaHocViewModel nkh = NhaKhoaHocViewModel.Mapping(nhaKhoaHoc);
             return View(nkh);
        }

        // POST: NhaKhoaHocs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(HttpPostedFileBase fileUpload, [Bind(Include = "MaNKH,MaNKHHoSo,HoNKH,TenNKH,GioiTinhNKH,NgaySinh,DiaChiLienHe,DienThoai,EmailLienHe,MaHocHam,MaHocVi,MaCNDaoTao,MaDonViQL,AnhDaiDien,MaNgachVienChuc")] NhaKhoaHoc nhaKhoaHoc)
        {
           
            if (ModelState.IsValid)
            {
                // Edit list dropdown
                var selectedValue1 = Int32.Parse(Request.Form["MaHH1"].ToString());
                var selectedValue2 = Int32.Parse(Request.Form["MaHH2"].ToString());
                var selectedValue3 = Int32.Parse(Request.Form["MaHH3"].ToString());
                var selectedValue4 = Int32.Parse(Request.Form["MaHH4"].ToString());
                var selectedValue5 = Int32.Parse(Request.Form["MaHH5"].ToString());

                nhaKhoaHoc.MaHocHam = selectedValue1;
                nhaKhoaHoc.MaHocVi = selectedValue2;
                nhaKhoaHoc.MaCNDaoTao = selectedValue3;
                nhaKhoaHoc.MaDonViQL = selectedValue4;
                nhaKhoaHoc.MaNgachVienChuc = selectedValue5;

                // upload image
                if (repo.HasFile(fileUpload))
                {
                    string mimeType = fileUpload.ContentType;
                    Stream fileStream = fileUpload.InputStream;
                    string fileName = Path.GetFileName(fileUpload.FileName);
                    int fileLength = fileUpload.ContentLength;
                    byte[] fileData = new byte[fileLength];
                    nhaKhoaHoc.AnhCaNhan = fileData;
                    fileStream.Read(fileData, 0, fileLength);
                }

                db.Entry(nhaKhoaHoc).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.MaCNDaoTao = new SelectList(db.ChuyenNganhs, "MaChuyenNganh", "TenChuyenNganh", nhaKhoaHoc.MaCNDaoTao);
            ViewBag.MaDonViQL = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI", nhaKhoaHoc.MaDonViQL);
            ViewBag.MaHocHam = new SelectList(db.HocHams, "MaHocHam", "TenHocHam", nhaKhoaHoc.MaHocHam);
            ViewBag.MaHocVi = new SelectList(db.HocVis, "MaHocVi", "TenHocVi", nhaKhoaHoc.MaHocVi);
            ViewBag.MaNgachVienChuc = new SelectList(db.NgachVienChucs, "MaNgach", "TenNgach", nhaKhoaHoc.MaNgachVienChuc);
            NhaKhoaHocViewModel nkh = NhaKhoaHocViewModel.Mapping(nhaKhoaHoc);
            return View(nkh);
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