using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlsinif snf = new sqlsinif();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["KategoriID"];
            SqlCommand cmd = new SqlCommand("Select * from TabloYemekler where KategoriID=@p1", snf.baglanti());
            cmd.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}