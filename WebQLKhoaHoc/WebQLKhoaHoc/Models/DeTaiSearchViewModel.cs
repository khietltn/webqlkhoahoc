using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebQLKhoaHoc.Models
{
    public class DeTaiSearchViewModel
    {
       public string MaCapDeTai { get; set; }
        public string MaDonViQLThucHien { get; set; }
        public string MaLinhVuc { get; set; }
        public DateTime Fromdate { get; set; }
        public DateTime Todate { get; set; }
        public string SearchValue { get; set; }
    }
}