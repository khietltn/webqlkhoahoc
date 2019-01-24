﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebQLKhoaHoc.Models
{
    public class QLKHRepository
    {
        private QLKhoaHocEntities db = new QLKhoaHocEntities();

        public QLKHRepository()
        {

        }

        public IList<LinhVucViewMenuModel> GetListMenuLinhVuc()
        {
            IList<LinhVucViewMenuModel> lstLinhVuc = new List<LinhVucViewMenuModel>();
            var lstNhomLinhVuc = db.NhomLinhVucs.ToList();
            foreach (var nhomlinhvuc in lstNhomLinhVuc )
            {
                lstLinhVuc.Add(new LinhVucViewMenuModel
                {
                    Id = nhomlinhvuc.MaNhomLinhVuc.ToString(),
                    TenLinhVuc = nhomlinhvuc.TenNhomLinhVuc.ToString()
                });
                foreach (var linhvuc in nhomlinhvuc.LinhVucs.ToList())
                {
                    lstLinhVuc.Add(new LinhVucViewMenuModel
                    {
                        Id = "a" + linhvuc.MaLinhVuc.ToString(),
                        TenLinhVuc = "---" + linhvuc.TenLinhVuc.ToString()
                    });
                }
            }

            return lstLinhVuc;
        }

    }
}