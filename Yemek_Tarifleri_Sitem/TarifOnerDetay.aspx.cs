using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Common;

namespace Yemek_Tarifleri_Sitem
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifID"];

            if (Page.IsPostBack == false)
            {


                SqlCommand cmd = new SqlCommand("Select * from TabloTarifler where TarifID=@p1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[5].ToString();
                    TextBox5.Text = dr[6].ToString();
                }
                bgl.baglanti().Close();

                //KATEGORİ LİSTESİ 
                SqlCommand cmd1 = new SqlCommand("Select * from TabloKategoriler", bgl.baglanti());
                SqlDataReader dr1 = cmd1.ExecuteReader();


                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriID";
                DropDownList1.DataSource = dr1;
                DropDownList1.DataBind();
            }
        }

        
       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            {
                //GÜNCELLEME
                SqlCommand cmd = new SqlCommand("update TabloTarifler set TarifDurum=1 where TarifID=@p1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1", id);
                cmd.ExecuteNonQuery();
                bgl.baglanti().Close();

                //YEMEGİ ANA SAYFAYA EKLEME
                SqlCommand cmd2 = new SqlCommand("insert into TabloYemekler (YemekAd,YemekMalzeme,YemekTarif,KategoriID) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
                cmd2.Parameters.AddWithValue("@p1", TextBox1.Text);
                cmd2.Parameters.AddWithValue("@p2", TextBox2.Text);
                cmd2.Parameters.AddWithValue("@p3", TextBox3.Text);
                cmd2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
                cmd2.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
        }
    }
}