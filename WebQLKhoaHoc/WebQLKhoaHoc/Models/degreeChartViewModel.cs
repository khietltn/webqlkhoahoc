using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Ajax.Utilities;

namespace WebQLKhoaHoc.Models
{
    public class degreeChartViewModel
    {
        public string MaDVQL { get; set; }
        public int TSKH { get; set; }
        public int SauTS { get; set; }
        public int TS { get; set; }
        public int ThS { get; set; }
        public int DH { get; set; }
        public int CN { get; set; }
        public int CD { get; set; }
        public int TC { get; set; }
        public int PT { get; set; }
        public int Other { get; set; }

        public static degreeChartViewModel Mapping(string madvql,int tskh,int sauts,int ts,int ths,int dh,int cn,int cd,int tc,int pt,int other)
        {
            degreeChartViewModel degreevm = new degreeChartViewModel();
            degreevm.MaDVQL = madvql ?? String.Format("0");
            degreevm.TSKH = tskh;
            degreevm.SauTS = sauts;
            degreevm.TS = ts;
            degreevm.ThS = ths;
            degreevm.DH = dh;
            degreevm.CN = cn;
            degreevm.CD = cd;
            degreevm.TC = tc;
            degreevm.PT = pt;
            degreevm.Other = other;

            return degreevm;
        }
    }
}