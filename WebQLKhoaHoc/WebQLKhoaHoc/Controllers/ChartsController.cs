using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLKhoaHoc.Models;

namespace WebQLKhoaHoc.Controllers
{
    public class ChartsController : Controller
    {
        private QLKhoaHocEntities db = new QLKhoaHocEntities();
        // GET: Charts
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ThongKe(string unit)
        {
            if(unit == "total")
            {
                return RedirectToAction("totalCharts");
            }
            else if(unit == "degree")
            {
                return RedirectToAction("degreeCharts");
            }
            else
            {
                return RedirectToAction("quantumCharts");
            }
        }

        public ActionResult totalCharts()
        {
            List<totalChartViewModel> res = new List<totalChartViewModel>();
            List<DonViQL> listDVQL = db.DonViQLs.ToList();
            foreach (var item in listDVQL)
            {
                int nGSDD = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocHam == 3).ToList().Count();
                int nGS = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocHam == 2).ToList().Count();
                int nPGS = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocHam == 1).ToList().Count();
                int nTSKH = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocVi == 7).ToList().Count();
                int nTS = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocVi == 6).ToList().Count();
                int nThS = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocVi == 5).ToList().Count();
                int nGV = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && (p.MaNgachVienChuc == 1 || p.MaNgachVienChuc == 2)).ToList().Count();
                int nNCV = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaNgachVienChuc == 10).ToList().Count();

                totalChartViewModel totalchart = totalChartViewModel.Mapping(item.MaDonVi,nGSDD, nGS, nPGS, nTSKH, nTS, nThS, nGV, nNCV);
                res.Add(totalchart);
            }
            return View(res);
        }

        public ActionResult degreeCharts()
        {
            List<degreeChartViewModel> res = new List<degreeChartViewModel>();
            List<DonViQL> listDVQL = db.DonViQLs.ToList();
            foreach (var item in listDVQL)
            {
                int nTSKH = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocVi == 7).ToList().Count();
                int nSTS = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocVi == 8).ToList().Count();
                int nTS = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocVi == 6).ToList().Count();
                int nThS = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocVi == 5).ToList().Count();
                int nDH = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocVi == 4).ToList().Count();
                int nCN = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocVi == 10).ToList().Count();
                int nCD = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocVi == 3).ToList().Count();
                int nTC = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocVi == 2).ToList().Count();
                int nPT = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocVi == 1).ToList().Count();
                int nOther = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaHocVi == 9).ToList().Count();

                degreeChartViewModel degreeChart = degreeChartViewModel.Mapping(item.MaDonVi, nTSKH, nSTS, nTS, nThS, nDH, nCN, nCD, nTC,nPT,nOther);
                res.Add(degreeChart);
            }
            return View(res);
        }
        public ActionResult quantumCharts()
        {
            List<quantumChartViewModel> res = new List<quantumChartViewModel>();
            List<DonViQL> listDVQL = db.DonViQLs.ToList();
            foreach (var item in listDVQL)
            {
                    // lấy số giao sư của khoa
                 int nGV = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaNgachVienChuc == 1).ToList().Count();
                 int nGVC = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaNgachVienChuc == 2).ToList().Count();
                 int nGVCC = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaNgachVienChuc == 3).ToList().Count();
                 int nGVTH = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaNgachVienChuc == 4).ToList().Count();
                 int nCV = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaNgachVienChuc == 5).ToList().Count();
                 int nCVC = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaNgachVienChuc == 6).ToList().Count();
                 int nTVV = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaNgachVienChuc == 7).ToList().Count();
                 int nKTV = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaNgachVienChuc == 8).ToList().Count();
                 int nKTVCC = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaNgachVienChuc == 9).ToList().Count();
                 int nNCV = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaNgachVienChuc == 10).ToList().Count();
                 int nKTOAN = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaNgachVienChuc == 11).ToList().Count();
                 int nKTVC = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaNgachVienChuc == 12).ToList().Count();
                 int nNVVT = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaNgachVienChuc == 13).ToList().Count();
                 int nCS = db.NhaKhoaHocs.Where(p => p.MaDonViQL == item.MaDonVi && p.MaNgachVienChuc == 14).ToList().Count();
                    // cộng dồn số lượng
                 quantumChartViewModel quantumChart = quantumChartViewModel.Mapping(item.MaDonVi, nGV, nGVC, nGVCC, nGVTH, nCV, nCVC, nTVV, nKTV, nKTVCC, nNCV,nKTOAN,nKTVC,nNVVT,nCS);
                res.Add(quantumChart);
            }
            return View(res);
        }

        // chart about books/documents
        public ActionResult book()
        {
            //ViewBag.DVQL = new SelectList(db.DonViQLs, "MaDonVi", "TenDonVI");
            return View();
        }

        [HttpPost]
        public ActionResult book(string unit,DateTime? from_date, DateTime? to_date)
        {
            List<DSTacGia> dSTacGias = db.DSTacGias.Where(p => p.LaChuBien == true).ToList();
            List<NhaKhoaHoc> nhaKhoaHocs = new List<NhaKhoaHoc>();
            if (unit == "0")
            {
                nhaKhoaHocs = db.NhaKhoaHocs.ToList();
            }
            else
            {
                nhaKhoaHocs = db.NhaKhoaHocs.Where(p => p.MaDonViQL == Int32.Parse(unit)).ToList();
            }
            List<SachGiaoTrinh> sachGiaoTrinhs = new List<SachGiaoTrinh>();
            if (from_date != null && to_date != null)
            {
                sachGiaoTrinhs = db.SachGiaoTrinhs.Where(p => p.NamXuatBan >= from_date && p.NamXuatBan <= to_date).ToList();
            }
            else if (from_date == null && to_date != null)
            {
                sachGiaoTrinhs = db.SachGiaoTrinhs.Where(p => p.NamXuatBan <= to_date).ToList();
            }
            else if (from_date != null && to_date == null)
            {
                sachGiaoTrinhs = db.SachGiaoTrinhs.Where(p => p.NamXuatBan >= from_date).ToList();
            }
            else
            {
                sachGiaoTrinhs = db.SachGiaoTrinhs.ToList();
            }

            List<DSTacGia> tacgias = new List<DSTacGia>();
            // find all books of scientists 
            for (int i = 0; i < dSTacGias.ToList().Count(); i++)
            {
                for (int j = 0; j < nhaKhoaHocs.ToList().Count(); j++)
                {
                    if (dSTacGias[i].MaNKH== nhaKhoaHocs[j].MaNKH)
                    {
                        tacgias.Add(dSTacGias[i]);
                        break;
                    }
                }
            }
            //var tacgias = (from nkh in nhaKhoaHocs
            //               join tg  in dSTacGias
            //               on nkh.MaNKH equals tg.MaNKH
            //               select new
            //               {
            //                   tg.MaSach,
            //                   tg.MaNKH
            //               }).ToList();

            //var sachs = (from sach in sachGiaoTrinhs
            //             join tgs in tacgias
            //             on sach.MaSach equals tgs.MaSach
            //             select new
            //             {
            //                 sach.MaSach,
            //                 sach.MaLoai,
            //                 sach.TenSach
            //             }).ToList();
            List<SachGiaoTrinh> giaoTrinhs = new List<SachGiaoTrinh>();

            for (int i = 0; i < sachGiaoTrinhs.ToList().Count(); i++)
            {
                for (int j = 0; j < tacgias.ToList().Count(); j++)
                {
                    if (sachGiaoTrinhs[i].MaSach == tacgias[j].MaSach)
                    {
                        giaoTrinhs.Add(sachGiaoTrinhs[i]);
                    }
                }
            }
            // phân loại sách từng loại

            int ngiaoTrinh = giaoTrinhs.Where(p => p.MaLoai == 2).ToList().Count();
            int nChuyenKhao = giaoTrinhs.Where(p => p.MaLoai == 1).ToList().Count();
            int nThamKhao = giaoTrinhs.Where(p => p.MaLoai == 3).ToList().Count();
            int nKhac = giaoTrinhs.Where(p => p.MaLoai == 4).ToList().Count();

            ViewBag.giaoTrinh = ngiaoTrinh;
            ViewBag.chuyenKhao = nChuyenKhao;
            ViewBag.thamKhao = nThamKhao;
            ViewBag.Khac = nKhac;
            ViewBag.unit = unit;
            ViewBag.fromdate = from_date;
            ViewBag.todate = to_date;
            return View();
        }


        // about article
        public ActionResult article()
        {
            return View();
        }

        [HttpPost]
        public ActionResult article(string unit, DateTime? from_date, DateTime? to_date)
        {
            List<DSNguoiThamGiaBaiBao> dSNguoiThamGias = db.DSNguoiThamGiaBaiBaos.ToList();
            List<NhaKhoaHoc> nhaKhoaHocs = new List<NhaKhoaHoc>();
            if (unit == "0")
            {
                nhaKhoaHocs = db.NhaKhoaHocs.ToList();
            }
            else
            {
                nhaKhoaHocs = db.NhaKhoaHocs.Where(p => p.MaDonViQL == Int32.Parse(unit)).ToList();
            }
            List<BaiBao> baiBaos = new List<BaiBao>();
            if (from_date != null && to_date != null)
            {
                baiBaos = db.BaiBaos.Where(p => p.NamDangBao >= from_date && p.NamDangBao <= to_date).ToList();
            }
            else if (from_date == null && to_date != null)
            {
                baiBaos = db.BaiBaos.Where(p => p.NamDangBao <= to_date).ToList();
            }
            else if (from_date != null && to_date == null)
            {
                baiBaos = db.BaiBaos.Where(p => p.NamDangBao >= from_date).ToList();
            }
            else
            {
                baiBaos = db.BaiBaos.ToList();
            }

            List<DSNguoiThamGiaBaiBao> dSNguoiThamGiaBaiBaos = new List<DSNguoiThamGiaBaiBao>();
            // find all article of scientists 
            for (int i = 0; i < dSNguoiThamGias.Count(); i++)
            {
                for (int j = 0; j < nhaKhoaHocs.Count(); j++)
                {
                    if (dSNguoiThamGias[i].MaNKH == nhaKhoaHocs[j].MaNKH)
                    {
                        dSNguoiThamGiaBaiBaos.Add(dSNguoiThamGias[i]);
                        break;
                    }
                }
            }

            List<BaiBao> articles = new List<BaiBao>();

            for (int i = 0; i < baiBaos.Count(); i++)
            {
                for (int j = 0; j < dSNguoiThamGiaBaiBaos.Count(); j++)
                {
                    if (baiBaos[i].MaBaiBao == dSNguoiThamGiaBaiBaos[j].MaBaiBao)
                    {
                        articles.Add(baiBaos[i]);
                        break;
                    }
                }
            }

            // phân loại trong và ngoai nước
            List<BaiBao> articles_in = articles.Where(p => p.LaTrongNuoc == true).ToList();
            List<BaiBao> articles_out = articles.Where(p => p.LaTrongNuoc == false).ToList();

            int narticle_in_HDCDGS = articles_in.Where(p => p.MaCapTapChi == 2).ToList().Count();
            int narticle_in_Khac = articles_in.Where(p => p.MaCapTapChi == 4).ToList().Count();

            int narticle_ISI = articles_out.Where(p => p.MaCapTapChi == 1).ToList().Count();
            int narticle_SCOPUS = articles_out.Where(p => p.MaCapTapChi == 3).ToList().Count();
            int narticle_ESCI = articles_out.Where(p => p.MaCapTapChi == 5).ToList().Count();
            int narticle_out_Khac = articles_out.Where(p => p.MaCapTapChi == 4).ToList().Count();

            ViewBag.nHDCDGS = narticle_in_HDCDGS;
            ViewBag.nKhac_in = narticle_in_Khac;
            ViewBag.nISI = narticle_ISI;
            ViewBag.nSCOPUS = narticle_SCOPUS;
            ViewBag.nESCI = narticle_ESCI;
            ViewBag.nKhac_out = narticle_out_Khac;

            ViewBag.unit = unit;
            ViewBag.fromdate = from_date;
            ViewBag.todate = to_date;
            return View();
        }
    }
}