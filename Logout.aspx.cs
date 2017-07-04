using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!User.Identity.IsAuthenticated)
        {
            Response.Write("<h1>You are not logged in ...</h1>");
        }
        else
        {
            FormsAuthentication.SignOut();
            Response.Redirect("HomePage.aspx");
        }
    }
}