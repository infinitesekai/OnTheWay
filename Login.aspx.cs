using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnTheWay
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();
            string insertQuery = "select * from [User] where email=@email and password=@password";
            SqlCommand cmd = new SqlCommand(insertQuery, con);
            cmd.Parameters.AddWithValue("@email", login_email.Text);
            cmd.Parameters.AddWithValue("@password", login_password.Text);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);


            cmd.ExecuteNonQuery();
            if (dt.Rows.Count > 0)
            {
                Session["id"] = Convert.ToInt32(dt.Rows[0]["id"]);
                System.Diagnostics.Debug.WriteLine(Session["id"]);
                Server.Transfer("homepage.aspx");
                


            }
            else
            {
                Response.Write("<script>alert('user login fail')</script>");

            }

            //Response.Write("<script>alert('user login successfully)</script>");

            con.Close();
        }

        protected void Btn_newregister_Click(object sender, EventArgs e)
        {


            Response.Redirect("~/Register.aspx");

        }
    }
}