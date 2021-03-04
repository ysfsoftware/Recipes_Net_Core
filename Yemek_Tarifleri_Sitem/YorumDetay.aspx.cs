using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumID"];

            if(Page.IsPostBack==false)
            {

            
            SqlCommand cmd = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumİcerik,YemekAd from TabloYorumlar inner join TabloYemekler on TabloYorumlar.YemekID=TabloYemekler.YemekID where YorumID=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
                TextBox2.Text = dr[1].ToString();
                TextBox3.Text = dr[2].ToString();
                TextBox4.Text = dr[3].ToString();

            }
            bgl.baglanti().Close();
        }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update TabloYorumlar set Yorumİcerik=@p1,YorumOnay=@p2 where YorumID=@p3", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p2", "True");
            cmd.Parameters.AddWithValue("@p3", id);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("<script> alert('Yorum güncelleme işlemi başarıyla gerçekleşmiştir.') </script>");

        }
    }
}