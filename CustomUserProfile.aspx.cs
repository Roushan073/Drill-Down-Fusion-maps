using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class CustomUserProfile : System.Web.UI.Page
{
    public string username = "", fullname = "", email = "", organisation = "", phone = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString);

            string getLoggedInUser = "select * from UserDetails where username='" + User.Identity.Name + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(getLoggedInUser, conn);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable loggedIn_user_dt = new DataTable();
            sda.Fill(loggedIn_user_dt);

            username = loggedIn_user_dt.Rows[0]["username"].ToString();
            fullname = loggedIn_user_dt.Rows[0]["fullname"].ToString();
            email = loggedIn_user_dt.Rows[0]["email"].ToString();
            organisation = loggedIn_user_dt.Rows[0]["organisation"].ToString();
            phone = loggedIn_user_dt.Rows[0]["phone"].ToString();
        } catch(Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}