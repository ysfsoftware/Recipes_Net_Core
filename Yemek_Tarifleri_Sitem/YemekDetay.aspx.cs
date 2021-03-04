using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["YemekID"];
            SqlCommand cmd = new SqlCommand("Select YemekAd from TabloYemekler where YemekID=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();

            }
            bgl.baglanti().Close();

            SqlCommand cmd2 = new SqlCommand("Select * from TabloYorumlar where YemekID=@p2", bgl.baglanti());
            cmd2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader dr2 = cmd2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into TabloYorumlar (YorumAdSoyad,YorumMail,Yorumİcerik,YemekID) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", yemekid);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}