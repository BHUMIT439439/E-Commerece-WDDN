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
    public partial class _Default : System.Web.UI.Page
    {
        public string item;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click(Object sender, EventArgs e)
        {
            bool isUserAuthenticated = System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
            if(isUserAuthenticated)
            {
                Button btn = (Button)sender;

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFilename=C:\Users\ASUS\Documents\WDDN Project\E-Commerece-WDDN\Ecommerce\Ecommerce\App_Data\aspnet-Ecommerce-20210902094040.mdf;Initial Catalog=aspnet-Ecommerce-20210902094040;Integrated Security=True");
                con.Open();

                string uid = System.Web.HttpContext.Current.User.Identity.GetUserId();
                string pid = btn.CommandArgument.ToString();

                string myQuery = "insert into CartTable(productid,customerid) values('" + pid + "','" + uid+"')";

                SqlCommand cmd = new SqlCommand(myQuery, con);
                cmd.ExecuteNonQuery();

                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                "alert",
                "alert('Successfully product added in to cart');window.location ='';",
                true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                "alert",
                "alert('First you have to logged in and then you can put product in cart');window.location ='/Account/login.aspx';",
                true);
                //Response.Redirect("/Account/login?msg=You are not logged in!!");
                
            }
        }
    }
}