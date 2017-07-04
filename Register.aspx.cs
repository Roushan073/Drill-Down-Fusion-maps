using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    public enum MessageType { Success, Error, Info, Warning };
    protected void Page_Load(object sender, EventArgs e)
    {
        if(User.Identity.IsAuthenticated)
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(),
            "ShowMessage('" + Message + "','" + type + "');", true);
    }

    protected void btn_register_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString);
        conn.Open();
        string checkUserName = "select count(*) from UserDetails where username='" + tb_username.Text + "'";
        SqlCommand com = new SqlCommand(checkUserName, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

        if (temp == 1)
        {
            ShowMessage("UserName already exists !", MessageType.Error);
            tb_username.Text = "";
            tb_fullname.Text = "";
            tb_email.Text = "";
            tb_organisation.Text = "";
            tb_phone.Text = "";
            tb_password.Text = "";
            conn.Close();
        }
        else
        {
            try
            {
                string insertQuery = "insert into UserDetails (username,fullname,email,organisation,phone,password) values (@name, @fullname, @email, @organisation, @phone, @password)";
                SqlCommand com2 = new SqlCommand(insertQuery, conn);
                com2.Parameters.AddWithValue("@name", tb_username.Text);
                com2.Parameters.AddWithValue("@fullname", tb_fullname.Text);
                com2.Parameters.AddWithValue("@email", tb_email.Text);
                com2.Parameters.AddWithValue("@organisation", tb_organisation.Text);
                com2.Parameters.AddWithValue("@phone", tb_phone.Text);
                com2.Parameters.AddWithValue("@password", tb_password.Text);

                com2.ExecuteNonQuery();
                Response.Redirect("Login.aspx");

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                conn.Close();
            }
        }
    }
}