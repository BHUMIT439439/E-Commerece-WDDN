using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using Microsoft.AspNet.Identity;

namespace Ecommerce
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userid.Text = System.Web.HttpContext.Current.User.Identity.GetUserId().ToString();


		}

        protected void Button1_Click(Object sender, EventArgs e)
        {
                Button btn = (Button)sender;

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFilename=C:\Users\ASUS\Documents\WDDN Project\E-Commerece-WDDN\Ecommerce\Ecommerce\App_Data\aspnet-Ecommerce-20210902094040.mdf;Initial Catalog=aspnet-Ecommerce-20210902094040;Integrated Security=True");
                con.Open();

                string uid = System.Web.HttpContext.Current.User.Identity.GetUserId();
                string pid = btn.CommandArgument.ToString();

                string myQuery = "DELETE TOP(1) FROM CartTable Where ProductID='"+pid+"' AND CustomerID='"+uid+"'";

                SqlCommand cmd = new SqlCommand(myQuery, con);
                cmd.ExecuteNonQuery();

                con.Close();
            Response.Redirect("/Cart");
         }
    }
}