using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace PersonelKayıtProjesi
{
    public struct UserInfo
    {
        public UserInfo(string user, string password)
        {
            this.user_name = user;
            this.password = password;
        }
        public string user_name;
        public string password;
    }
    public partial class index : System.Web.UI.Page
    {
    
        protected void Page_Load(object sender, EventArgs e)
        {
         
         

        }

    }
}