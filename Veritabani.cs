using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.SessionState;

namespace PersonelKayıtProjesi
{
    public class Veritabani
    {
        SqlConnection baglanti;
        bool baglanti_acikmi = false;
        //Baglantıyı kontrol eder ,eğer kapalı ise açar 
        bool baglanti_kapatilsinmi = true;
        public void BaglantiAc()
        {
            if (baglanti_acikmi == false)
            {
                baglanti = new SqlConnection("Data Source=.; database=PersonelKayitOtomasyonu; uid=sa; pwd='Speedy.157'");
                baglanti_acikmi = true;
                baglanti.Open();
            }
           
        }

        public bool KullanicigirisYap(string kullanici_ad, string sifre, ref HttpSessionState state)
        {

            BaglantiAc();
            string komut = "select * from tblAdmin where kullaniciadi = " + kullanici_ad + " and sifre =" + sifre;
            SqlDataAdapter adapter = new SqlDataAdapter(komut, baglanti);
            DataTable table = new DataTable();
            adapter.Fill(table);
            state["user_s"] = new UserInfo(kullanici_ad, sifre);
            return table.Rows.Count > 0;

        }
        public void Kapat()
        {
            baglanti.Close();
            baglanti_acikmi = false; 
        }
        public bool KullaniciGirisyaptimi(HttpSessionState state)
        {
            return state["user_s"] != null;
        }


    }
}