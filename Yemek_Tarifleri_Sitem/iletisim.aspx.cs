using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class iletisim : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into TabloMesajlarr(mesajgonderen,mesajbaslik,mesajmail,mesajicerik) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", TextBox4.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("<script> alert('Mesajınız Gönderilmiştir.') </script>");
        }
    }
}