using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;    
namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekID"];
           
            if (Page.IsPostBack == false)
            {


                SqlCommand cmd = new SqlCommand("Select * from TabloYemekler where YemekId=@p1 ", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();


                if (Page.IsPostBack == false)
                {
                    //KATEGORİ LİSTESİ 
                    SqlCommand cmd1 = new SqlCommand("Select * from TabloKategoriler", bgl.baglanti());
                    SqlDataReader dr1 = cmd1.ExecuteReader();


                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "KategoriID";
                    DropDownList1.DataSource = dr1;
                    DropDownList1.DataBind();
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/RESİMLER/"+FileUpload1.FileName));

            SqlCommand cmd = new SqlCommand("update TabloYemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,KategoriID=@p4,YemekResim=@p6 where YemekID=@p5",bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3",TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@p5", id);
            cmd.Parameters.AddWithValue("@p6", "~/RESİMLER/" + FileUpload1.FileName);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //TUM YEMEKLERİ FALSE YAPMA
            SqlCommand cmd = new SqlCommand("update TabloYemekler set Durum=0", bgl.baglanti());
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();

            //GUNUN YEMEGİ İCİN ID'YE GORE DURUMU TRUE YAPMA
            SqlCommand cmd2 = new SqlCommand("update TabloYemekler set Durum=1 where YemekID=@p1", bgl.baglanti());
            cmd2.Parameters.AddWithValue("@p1", id);
            cmd2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}