using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
                
            }
            else
            {
                Label1.Text = "26";
                Response.Redirect("/Account/login?msg=You are not logged in!!");
                
            }
        }
    }
}