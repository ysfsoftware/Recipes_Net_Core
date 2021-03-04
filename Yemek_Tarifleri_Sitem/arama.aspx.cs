using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class arama : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            string cumle = Request.QueryString["cumle"].ToString();

            SqlDataAdapter da = new SqlDataAdapter("Select * from TabloYemekler where YemekAd like '%" + cumle + "%'", bgl.baglanti());
            DataTable dt = new DataTable();
            da.Fill(dt);

            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            bgl.baglanti().Close();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}