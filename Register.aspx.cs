using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnTheWay
{
    public partial class Register : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();
            string insertQuery = "insert into [User](first_name,last_name, email, password)values (@firstname,@lastname, @email, @password)";
            SqlCommand cmd = new SqlCommand(insertQuery, con);
            cmd.Parameters.AddWithValue("@firstname", firstName.Text);
            cmd.Parameters.AddWithValue("@lastname", lastName.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('user is registered successfully)</script>");

            con.Close();
        }
    }
}