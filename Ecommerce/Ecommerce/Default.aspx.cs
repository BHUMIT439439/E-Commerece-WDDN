using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Ecommerce
{
    public partial class _Default : Page
    {
        public string item;
        protected void Page_Load(object sender, EventArgs e)
        {
            Console.WriteLine("hello");
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFilename=C: \Users\ASUS\Documents\WDDN Project\E - Commerece - WDDN\Ecommerce\Ecommerce\App_Data\aspnet - Ecommerce - 20210902094040.mdf;Initial Catalog=aspnet-Ecommerce-20210902094040;Integrated Security=True";
            try
            {
                using(con)
                {
                    string command = "select * from product";
                    SqlCommand cmd = new SqlCommand(command,con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                }
            }
            catch(Exception err)
            {
                Label1.Text = "Error";

            }
        }
    }
}