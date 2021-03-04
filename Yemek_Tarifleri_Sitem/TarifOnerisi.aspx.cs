using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class TarifOnerisi : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into tabloTarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)",bgl.baglanti());
           
            cmd.Parameters.AddWithValue("@t1", txtbxTarifAd.Text);
            cmd.Parameters.AddWithValue("@t2", txtbxMalzemeler.Text);
            cmd.Parameters.AddWithValue("@t3", txtbxYapilis.Text);
            cmd.Parameters.AddWithValue("@t4", fileuploadResim.FileName);
            cmd.Parameters.AddWithValue("@t5", txtbxTarifOneren.Text);
            cmd.Parameters.AddWithValue("@t6", txtbxMail.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("<script> alert('Tarifiniz Alınmışır.') </script>");

        }
    }
}