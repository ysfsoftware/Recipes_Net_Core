using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["KategoriID"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand cmd = new SqlCommand("Select * from TabloKategoriler",bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();

            //Silme işlemi
            if (islem == "sil")
            {
                SqlCommand cmdsil = new SqlCommand("Delete from TabloKategoriler where KategoriID=@p1", bgl.baglanti());
                cmdsil.Parameters.AddWithValue("@p1", id);
                cmdsil.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("<script> alert('Kategori silme işlemi başarıyla gerçekleşmiştir.') </script>");
            }
            Panel2.Visible = false;
            Panel4.Visible = false;
        
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into TabloKategoriler (KategoriAd) values (@p1) ", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("<script> alert('Kategori ekleme başarıyla gerçekleşmiştir.') </script>");
        }
    }
}