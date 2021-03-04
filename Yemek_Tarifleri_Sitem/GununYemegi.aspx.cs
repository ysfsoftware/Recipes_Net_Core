using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class GununYemegi : System.Web.UI.Page

    {
        sqlsinif bgl = new sqlsinif();
    
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from TabloYemekler where durum=1",bgl.baglanti());
            SqlDataReader oku = cmd.ExecuteReader();
            DataList3.DataSource = oku;
            DataList3.DataBind();
        }

        
    }
}