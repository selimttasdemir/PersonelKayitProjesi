using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace PersonelKayıtProjesi
{
    public partial class Site1 : System.Web.UI.MasterPage
    {

        public void linkpasif()
        {
            lnkperbul.Enabled = false;
            lnkperguncelle.Enabled = false;
            lnkperkayit.Enabled = false;
            lnkperlistele.Enabled = false;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Veritabani veritabani = new Veritabani();
            if (veritabani.KullaniciGirisyaptimi(Session) == false)
            {
                linkpasif();
            }

        }
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (txtKullanici.Text == "" || txtSifre.Text == "")
            {
                lblMesaj.Text = "Kullanıcı adı veya şifrenizi giriniz";
            }
            else
            {

                string sorgu = "select * from tblAdmin where kullaniciadi=@p1 and sifre=@p2";
                baglanti.Open();
                SqlCommand cmd = new SqlCommand(sorgu, baglanti);
                cmd.Parameters.AddWithValue("@p1", txtKullanici.Text);
                cmd.Parameters.AddWithValue("@p2", txtSifre.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lnkperbul.Enabled = true;
                    lnkperguncelle.Enabled = true;
                    lnkperkayit.Enabled = true;
                    lnkperlistele.Enabled = true;
                }
                else
                {
                    Response.Write("<script>confirm('Kullanıcı Adı YADA Şifre Hatalı !')</script>");
                }
                baglanti.Close();

            }
        }
    }
}