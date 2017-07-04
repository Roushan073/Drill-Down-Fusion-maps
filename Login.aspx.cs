using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    public enum MessageType { Success, Error, Info, Warning };
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), 
            "ShowMessage('" + Message + "','" + type + "');", true);
    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString);

        string checkUser = "select * from UserDetails where Username='" + tb_username.Text + "' and Password='" + tb_password.Text + "'";
        conn.Open();
        SqlCommand com = new SqlCommand(checkUser, conn);
        SqlDataAdapter sda = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count != 0)
        {
            //ShowMessage("Login Success !", MessageType.Success);
            FormsAuthentication.RedirectFromLoginPage(tb_username.Text, true);
            //Response.Redirect("Home.aspx");
        }
        else
        {
            ShowMessage("Invalid login credentials !", MessageType.Error);
            tb_username.Text = "";
        }

        conn.Close();



    }
}

/*
 if(tb_username.Text.Trim().Equals("admin") && tb_password.Text.Trim().Equals("admin"))
        {
            //Response.Redirect("Admin.aspx");
        }
        else
        {
            
        }
     
*/
