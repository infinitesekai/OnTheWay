using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnTheWay
{
    public partial class RequestPop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitBtn_Click(object sender, EventArgs e)
        {

            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string insertQuery = "insert into [Post](title, content, types, poster_uid,poster_uname, status, creation_date) values (@title,@content, @types, @poster_uid,@poster_uname, @status, @creation_date)";
            SqlCommand cmd = new SqlCommand(insertQuery, con);
            cmd.Parameters.AddWithValue("@title", txtTitle.Text);
            cmd.Parameters.AddWithValue("@content", txtContent.Text);
            cmd.Parameters.AddWithValue("@types", Session["type"]);
            cmd.Parameters.AddWithValue("@poster_uid", Session["id"]);
            cmd.Parameters.AddWithValue("@poster_uname", Session["uname"]);
            cmd.Parameters.AddWithValue("@status", "1");
            cmd.Parameters.AddWithValue("@creation_date", DateTime.Now);
            cmd.ExecuteNonQuery();
            //DateTime.Now.ToString("dd-mm-yyyy")

            con.Close();
        }
    }

    
}