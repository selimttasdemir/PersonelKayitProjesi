using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PersonelKayıtProjesi
{
    public partial class personel_ekleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Veritabani veritabani = new Veritabani();
            veritabani.BaglantiAc();
        }
    }
}