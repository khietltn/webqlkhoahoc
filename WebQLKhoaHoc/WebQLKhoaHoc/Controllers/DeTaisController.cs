﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using PagedList;
using WebGrease.Css.Extensions;
using WebQLKhoaHoc;
using WebQLKhoaHoc.Models;
using System.IO;
using System.Data.Entity.Migrations;
using Newtonsoft.Json;

namespace WebQLKhoaHoc.Controllers
{
    public class DeTaisController : Controller
    {
        private QLKhoaHocEntities db = new QLKhoaHocEntities();
        private QLKHRepository QLKHrepo = new QLKHRepository();
        // GET: DeTais
        public async Task<ActionResult> Index(int? Page_No, [Bind(Include = "MaCapDeTai,MaDonViQLThucHien,MaLinhVuc,Fromdate,Todate,SearchValue")] DeTaiSearchViewModel detai,int? nkhId)
        {
            ViewBag.MaCapDeTai = new SelectList(db.CapDeTais, "MaCapDeTai", "TenCapDeTai");
            ViewBag.MaDonViQLThucHien = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI");
            ViewBag.MaLinhVuc = new SelectList(QLKHrepo.GetListMenuLinhVuc(), "Id", "TenLinhVuc");
           
            var detais = db.DeTais.Include(d => d.CapDeTai).Include(d => d.LoaiHinhDeTai).Include(d => d.DonViChuTri).Include(d => d.DonViQL).Include(d => d.LinhVuc).Include(d => d.XepLoai).Include(d => d.TinhTrangDeTai).Include(d => d.PhanLoaiSP).Include(d => d.DSNguoiThamGiaDeTais).ToList();

           
            if (nkhId == null){                
                if (!String.IsNullOrEmpty(detai.MaDonViQLThucHien))
                {
                    detais = detais.Where(p => p.MaDonViQLThucHien.ToString() == detai.MaDonViQLThucHien).ToList();
                }

                if (!String.IsNullOrEmpty(detai.MaLinhVuc))
                {
                    if (detai.MaLinhVuc[0] == 'a')
                        detais = detais.Where(p =>
                            p.MaLinhVuc.ToString() == detai.MaLinhVuc.Substring(1, detai.MaLinhVuc.Length - 1)).ToList();
                    else
                        detais = detais.Where(p => p.LinhVuc.MaNhomLinhVuc.ToString() == detai.MaLinhVuc).ToList();
                }
                if (detai.Fromdate > DateTime.MinValue)
                {
                    detais = detais.Where(p => p.NamBD >= detai.Fromdate).ToList();
                }
                if (detai.Todate > DateTime.MinValue)
                {
                    detais = detais.Where(p => p.NamKT <= detai.Todate).ToList();
                }
                if (!String.IsNullOrEmpty(detai.SearchValue))
                {
                    detais = detais.Where(p => p.TenDeTai.ToLower().Contains(detai.SearchValue.ToLower())).ToList();
                }

                /* Nếu Thời gian search được nhập thì mới đỏ vào view bag */
                if (detai.Fromdate > DateTime.MinValue && detai.Todate > DateTime.MinValue) {
                    ViewBag.Fromdate = detai.Fromdate.ToShortDateString();
                    ViewBag.Todate = detai.Todate.ToShortDateString();
                }
                ViewBag.SearchValue = detai.SearchValue;
                
            }
            else{
                if (Session["user"] == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest, "User Unidentified");
                }
                UserLoginViewModel nd = (UserLoginViewModel)Session["user"];
                var madetais = db.DSNguoiThamGiaDeTais.Where(p => p.MaNKH == nd.MaNKH).Select(p => p.MaDeTai).ToList();

                detais = detais.Where(p => madetais.Contains(p.MaDeTai)).ToList();
            }

            detais = detais.Concat(detais)
                .Concat(detais)
                .Concat(detais)
                .Concat(detais)
                .Concat(detais)
                .Concat(detais)
                .ToList();
            int Size_Of_Page = 6;
            int No_Of_Page = (Page_No ?? 1);
            return View(detais.ToPagedList(No_Of_Page, Size_Of_Page));
        }




        public async Task<ActionResult> Create()
        {
            var lstAllNKH = db.NhaKhoaHocs.Where(p => p.MaNKH != 1).Select(p => new
            {
                p.MaNKH,
                TenNKH = p.HoNKH + " " + p.TenNKH
            }).ToList();

            
            ViewBag.MaCapDeTai = new SelectList(db.CapDeTais, "MaCapDeTai", "TenCapDeTai");
            ViewBag.MaLoaiDeTai = new SelectList(db.LoaiHinhDeTais, "MaLoaiDT", "TenLoaiDT");
            ViewBag.MaDVChuTri = new SelectList(db.DonViChuTris, "MaDVChuTri", "TenDVChuTri");
            ViewBag.MaDonViQLThucHien = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI");
            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc");
            ViewBag.MaXepLoai = new SelectList(db.XepLoais, "MaXepLoai", "TenXepLoai");
            ViewBag.MaTinhTrang = new SelectList(db.TinhTrangDeTais, "MaTinhTrang", "TenTinhTrang");
            ViewBag.MaPhanLoaiSP = new SelectList(db.PhanLoaiSPs, "MaPhanLoai", "TenPhanLoai");
            ViewBag.DSNguoiThamGiaDeTai = new MultiSelectList(lstAllNKH.Concat(lstAllNKH), "MaNKH", "TenNKH");

            return View();
        }



        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(List<string> DSNguoiThamGiaDT, [Bind(Include = "MaDeTai,MaDeTaiHoSo,TenDeTai,MaLoaiDeTai,MaCapDeTai,MaDVChuTri,MaDonViQLThucHien,MaLinhVuc,MucTieuDeTai,NoiDungDeTai,KetQuaDeTai,NamBD,NamKT,KinhPhi,MaXepLoai,MaTinhTrang,MaPhanLoaiSP,LienKetWeb")] DeTai deTai, HttpPostedFileBase linkUpload, string KinhPhiMoi)
        {
            if (ModelState.IsValid)
            {
                /* file upload*/
                if (linkUpload != null && linkUpload.ContentLength > 0)
                {
                    string filename = Path.GetFileName(linkUpload.FileName);
                    string path = Path.Combine(Server.MapPath("~/App_Data/uploads/detai_file"), filename);
                    linkUpload.SaveAs(path);
                    deTai.LinkFileUpload = filename;

                }

                db.DeTais.Add(deTai);
                db.SaveChanges();
                var id = deTai.MaDeTai;

                if (KinhPhiMoi != null)
                {
                    List<string[]> kinhphimoi = JsonConvert.DeserializeObject<List<string[]>>(KinhPhiMoi);
                    foreach (var x in kinhphimoi)
                    {
                        KinhPhiDeTai kinhphi_x = new KinhPhiDeTai
                        {
                            MaDeTai = id,
                            LoaiKinhPhi = x[0],
                            NamTiepNhan = DateTime.Parse(x[1]),
                            SoTien = Int32.Parse(x[2]),
                            LoaiTien = x[3]
                        };
                        db.KinhPhiDeTais.Add(kinhphi_x);
                        db.SaveChanges();
                    }
                }

                
                return RedirectToAction("Index");
            }
            else
            {
                var errors = ModelState.Values.SelectMany(v => v.Errors);
                var lstAllNKH = db.NhaKhoaHocs.Where(p => p.MaNKH != 1).Select(p => new
                {
                    p.MaNKH,
                    TenNKH = p.HoNKH + " " + p.TenNKH
                }).ToList();


                ViewBag.MaCapDeTai = new SelectList(db.CapDeTais, "MaCapDeTai", "TenCapDeTai");
                ViewBag.MaLoaiDeTai = new SelectList(db.LoaiHinhDeTais, "MaLoaiDT", "TenLoaiDT");
                ViewBag.MaDVChuTri = new SelectList(db.DonViChuTris, "MaDVChuTri", "TenDVChuTri");
                ViewBag.MaDonViQLThucHien = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI");
                ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc");
                ViewBag.MaXepLoai = new SelectList(db.XepLoais, "MaXepLoai", "TenXepLoai");
                ViewBag.MaTinhTrang = new SelectList(db.TinhTrangDeTais, "MaTinhTrang", "TenTinhTrang");
                ViewBag.MaPhanLoaiSP = new SelectList(db.PhanLoaiSPs, "MaPhanLoai", "TenPhanLoai");
                ViewBag.DSNguoiThamGiaDeTai = new MultiSelectList(lstAllNKH.Concat(lstAllNKH), "MaNKH", "TenNKH");

                return View();
            }

        }
        // GET: DeTais/Details/5
   
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DeTai deTai = await db.DeTais.FindAsync(id);

            if (deTai == null)
            {
                return HttpNotFound();
            }
            return View(deTai);
        }
        
        public async Task<ActionResult> ScriptingPage(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DeTai deTai = await db.DeTais.FindAsync(id);
            if(deTai == null)
            {
                return HttpNotFound();
            }
            return View(deTai);
        }

        // GET: DeTais/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DeTai deTai = await db.DeTais.FindAsync(id);
            if (deTai == null)
            {
                return HttpNotFound();
            }

            var lstAllNKH = db.NhaKhoaHocs.Where(p => p.MaNKH != 1).Select(p => new
            {
                p.MaNKH,
                TenNKH = p.HoNKH + " " + p.TenNKH
            }).ToList();

            var lstNKH = db.NhaKhoaHocs.Where(p => p.DSNguoiThamGiaDeTais.Any(d => d.MaDeTai == deTai.MaDeTai && d.LaChuNhiem == false)).Select(p => p.MaNKH).ToList();
            ViewBag.MaCapDeTai = new SelectList(db.CapDeTais, "MaCapDeTai", "TenCapDeTai", deTai.MaCapDeTai);
            ViewBag.MaLoaiDeTai = new SelectList(db.LoaiHinhDeTais, "MaLoaiDT", "TenLoaiDT", deTai.MaLoaiDeTai);
            ViewBag.MaDVChuTri = new SelectList(db.DonViChuTris, "MaDVChuTri", "TenDVChuTri", deTai.MaDVChuTri);
            ViewBag.MaDonViQLThucHien = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI", deTai.MaDonViQLThucHien);
            ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc", deTai.MaLinhVuc);
            ViewBag.MaXepLoai = new SelectList(db.XepLoais, "MaXepLoai", "TenXepLoai", deTai.MaXepLoai);
            ViewBag.MaTinhTrang = new SelectList(db.TinhTrangDeTais, "MaTinhTrang", "TenTinhTrang", deTai.MaTinhTrang);
            ViewBag.MaPhanLoaiSP = new SelectList(db.PhanLoaiSPs, "MaPhanLoai", "TenPhanLoai", deTai.MaPhanLoaiSP);
            ViewBag.DSNguoiThamGiaDeTai = new MultiSelectList(lstAllNKH.Concat(lstAllNKH), "MaNKH","TenNKH",lstNKH);
            return View(deTai);
        }

        // POST: DeTais/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(List<string> DSNguoiThamGiaDT,[Bind(Include = "MaDeTai,MaDeTaiHoSo,TenDeTai,MaLoaiDeTai,MaCapDeTai,MaDVChuTri,MaDonViQLThucHien,MaLinhVuc,MucTieuDeTai,NoiDungDeTai,KetQuaDeTai,NamBD,NamKT,KinhPhi,MaXepLoai,MaTinhTrang,MaPhanLoaiSP,LienKetWeb")] DeTai deTai, HttpPostedFileBase linkUpload,string KinhPhiXoa,string KinhPhiMoi)
        {
           
            if (ModelState.IsValid)
            {
                if (linkUpload != null && linkUpload.ContentLength > 0)
                {
                    string filename = Path.GetFileName(linkUpload.FileName);
                    string path = Path.Combine(Server.MapPath("~/App_Data/uploads/detai_file"), filename);
                    linkUpload.SaveAs(path);
                    deTai.LinkFileUpload = filename;

                }
                /* phần xử lý thêm xóa sửa của kinh phí đề tài */               

                db.Entry(deTai).State = EntityState.Modified;
                if (KinhPhiXoa != null && KinhPhiMoi != null)
                {
                    
                    if (KinhPhiXoa != null)
                    {
                        List<int> kinhphixoa = JsonConvert.DeserializeObject<List<int>>(KinhPhiXoa);
                        db.KinhPhiDeTais.Where(p => kinhphixoa.Contains(p.MaPhi)).ForEach(p => db.KinhPhiDeTais.Remove(p));                       
                    }
                    if (KinhPhiMoi != null)
                    {
                        List<string[]> kinhphimoi = JsonConvert.DeserializeObject<List<string[]>>(KinhPhiMoi);
                        foreach (var x in kinhphimoi)
                        {
                            KinhPhiDeTai kinhphi_x = new KinhPhiDeTai
                            {
                                MaDeTai = Int32.Parse(x[0]),
                                LoaiKinhPhi = x[1],
                                NamTiepNhan = DateTime.Parse(x[2]),
                                SoTien = Int32.Parse(x[3]),
                                LoaiTien = x[4]
                            };
                            db.KinhPhiDeTais.Add(kinhphi_x);
                        }
                    }                  
                }

                //db.DSNguoiThamGiaDeTais.Where(p => p.MaDeTai == deTai.MaDeTai && p.LaChuNhiem == false).ForEach(x => db.DSNguoiThamGiaDeTais.Remove(x));
                foreach (var mankh in DSNguoiThamGiaDT)
                {
                    DSNguoiThamGiaDeTai nguoiTGDT = new DSNguoiThamGiaDeTai
                    {
                        LaChuNhiem = false,
                        MaDeTai =  deTai.MaDeTai,
                        MaNKH = Int32.Parse(mankh)
                    };
                    db.DSNguoiThamGiaDeTais.AddOrUpdate(nguoiTGDT);
                }
                
                await db.SaveChangesAsync();           
                return RedirectToAction("Index");
            }
            else
            {
                ViewBag.MaCapDeTai = new SelectList(db.CapDeTais, "MaCapDeTai", "TenCapDeTai", deTai.MaCapDeTai);
                ViewBag.MaLoaiDeTai = new SelectList(db.LoaiHinhDeTais, "MaLoaiDT", "TenLoaiDT", deTai.MaLoaiDeTai);
                ViewBag.MaDVChuTri = new SelectList(db.DonViChuTris, "MaDVChuTri", "TenDVChuTri", deTai.MaDVChuTri);
                ViewBag.MaDonViQLThucHien = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI", deTai.MaDonViQLThucHien);
                ViewBag.MaLinhVuc = new SelectList(db.LinhVucs, "MaLinhVuc", "TenLinhVuc", deTai.MaLinhVuc);
                ViewBag.MaXepLoai = new SelectList(db.XepLoais, "MaXepLoai", "TenXepLoai", deTai.MaXepLoai);
                ViewBag.MaTinhTrang =
                    new SelectList(db.TinhTrangDeTais, "MaTinhTrang", "TenTinhTrang", deTai.MaTinhTrang);
                ViewBag.MaPhanLoaiSP = new SelectList(db.PhanLoaiSPs, "MaPhanLoai", "TenPhanLoai", deTai.MaPhanLoaiSP);
                return View(deTai);
            }

            
        }

        // GET: DeTais/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DeTai deTai = await db.DeTais.FindAsync(id);
            if (deTai == null)
            {
                return HttpNotFound();
            }
            return View(deTai);
        }

        // POST: DeTais/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            DeTai deTai = await db.DeTais.FindAsync(id);
            db.DeTais.Remove(deTai);
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
