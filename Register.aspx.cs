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
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();
            string checkuser = "select * from [User] where email=  '"+ email.Text + "'";
            SqlCommand cmd1 = new SqlCommand(checkuser, con);
            SqlDataReader sReader = cmd1.ExecuteReader();
            

            string insertQuery = "insert into [User](first_name,last_name, email, password)values (@firstname,@lastname, @email, @password)";
            SqlCommand cmd2 = new SqlCommand(insertQuery, con);

            

       
                if(sReader.HasRows)
                {
                    errorMessage.Text = "User already exists.";
                    con.Close();
            }
                else
                {
                    
                    con.Close();
                    con.Open();
                    cmd2.Parameters.AddWithValue("@firstname", firstName.Text);
                    cmd2.Parameters.AddWithValue("@lastname", lastName.Text);
                    cmd2.Parameters.AddWithValue("@email", email.Text);
                    cmd2.Parameters.AddWithValue("@password", password.Text);
                    cmd2.ExecuteNonQuery();
                    Response.Write("<script>alert('user is registered successfully)</script>");
                    Response.Redirect("~/Login.aspx");
                 }
            

            con.Close();
        }
    }
}