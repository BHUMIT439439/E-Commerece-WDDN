using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;
using iTextSharp.text.html.simpleparser;
using Microsoft.AspNet.Identity;

namespace Ecommerce
{
    public partial class Bill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            userid.Text = System.Web.HttpContext.Current.User.Identity.GetUserId().ToString();
            string name = Request.QueryString["name"].ToString();
            string address = Request.QueryString["address"].ToString();
            string mobileno = Request.QueryString["mobileno"].ToString();
            Name.Text = name;
            Address.Text = address;
            MobileNo.Text = mobileno;
            date.Text = DateTime.Today.ToString("dd/MM/yyyy");
        }
        protected void Button1_Click(Object sender, EventArgs e)
        {
            Button btn = (Button)sender;

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFilename=C:\Users\ASUS\Documents\WDDN Project\E-Commerece-WDDN\Ecommerce\Ecommerce\App_Data\aspnet-Ecommerce-20210902094040.mdf;Initial Catalog=aspnet-Ecommerce-20210902094040;Integrated Security=True");
            con.Open();

            string uid = System.Web.HttpContext.Current.User.Identity.GetUserId();

            string myQuery = "DELETE FROM CartTable Where CustomerID='" + uid + "'";

            SqlCommand cmd = new SqlCommand(myQuery, con);
            cmd.ExecuteNonQuery();

            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(),
               "alert",
               "alert('Your Order will be Delivered Soon.');window.location ='../';",
               true);
        }
    }
}