using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Yemek_Tarifleri_Sitem
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from TabloKategoriler",bgl.baglanti());
            SqlDataReader oku = cmd.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

          
        }

        protected void btnara_Click(object sender, EventArgs e)
        {
            Response.Redirect("arama.aspx?cumle=" + txtcumle.Text.Trim());
        }
    }
}