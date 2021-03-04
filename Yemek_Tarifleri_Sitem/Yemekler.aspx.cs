using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                id = Request.QueryString["YemekID"];
                islem = Request.QueryString["islem"];
                //KATEGORİ LİSTESİ 
                SqlCommand cmd1 = new SqlCommand("Select * from TabloKategoriler", bgl.baglanti());
                SqlDataReader dr1 = cmd1.ExecuteReader();


                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriID";
                DropDownList1.DataSource = dr1;
                DropDownList1.DataBind();
            }
            //YEMEK LİSTESİ
            Panel2.Visible = false;
            Panel4.Visible = false;
            SqlCommand cmd = new SqlCommand("Select * from TabloYemekler", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();

            if(islem == "sil")
                    {
                SqlCommand cmd3 = new SqlCommand("Delete from TabloYemekler where YemekID=@p1", bgl.baglanti());
                cmd3.Parameters.AddWithValue("@p1", id);
                cmd3.ExecuteNonQuery();
                bgl.baglanti().Close();

                SqlCommand cmd2 = new SqlCommand("update TabloKategoriler set KategoriAdet=KategoriAdet-1 where KategoriID=@p1 ", bgl.baglanti());
                cmd2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
                cmd2.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("<script> alert('Yemek silme işlemi başarıyla gerçekleşmiştir.') </script>");
            }
            



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


            //YEMEK EKLEME
            SqlCommand cmd = new SqlCommand("insert into TabloYemekler (YemekAd,YemekMalzeme,YemekTarif,KategoriID) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("<script> alert('Yemek ekleme işlemi başarıyla gerçekleşmiştir.') </script>");

            //KATEGORİ SAYISINI ARTIRMA

            SqlCommand cmd2 = new SqlCommand("update TabloKategoriler set KategoriAdet=KategoriAdet+1 where KategoriID=@p1 ",bgl.baglanti());
            cmd2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            cmd2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}