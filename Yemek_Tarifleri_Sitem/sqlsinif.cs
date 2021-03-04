using System;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    internal class sqlsinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source = LAPTOP-B0T59E4D;Initial Catalog=yemektarifi;Integrated Security = True");
            baglan.Open();
            return baglan;
        }
       
    }
}