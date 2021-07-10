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
    public partial class Cleaning : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["type"] = "Cleaning";
            if (!IsPostBack)
            {
                PostListView();
            }
        }
        private void PostListView()
        {
            string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string selectQuery = "SELECT * from [Post] where types= 'Cleaning' and status=1";

                SqlCommand cmd = new SqlCommand(selectQuery, con);
                //cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                CleaningList.DataSource = cmd.ExecuteReader();
                CleaningList.DataBind();
            }
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
            Response.Redirect("~/Cleaning.aspx");

        }
        
        protected void CleaningList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

            switch (e.CommandName)
            {
                case ("help"):
                    int post_id = Convert.ToInt32(e.CommandArgument);
                    Help(post_id);
                    break;

            }
        }

        void Help(int post_id)
        {

            string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                string help = "update [Post] set status=2, helper_uid='" + Session["id"] + "',helper_uname='" + Session["uname"] + "' where post_id= @post_id ";


                using (SqlCommand cmd = new SqlCommand(help, con))
                {
                    cmd.Parameters.AddWithValue("@post_id", post_id);
                    cmd.ExecuteNonQuery();
                }

                con.Close();
                PostListView();
                Response.Redirect("Mission.aspx");

            }
        }
    }
}