using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class Bill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name =Request.QueryString["name"].ToString();
            string address = Request.QueryString["address"].ToString();
            string mobileno=Request.QueryString["mobileno"].ToString();
            Label1.Text = name;
            date.Text = DateTime.Today.ToString("dd/MM/yyyy");
            Address.Text = address;
        }
    }
}