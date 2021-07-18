using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.ModelBinding;

namespace OnTheWay
{
    public partial class Errands : System.Web.UI.Page
    {
        public int current_poster;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["type"] = "Errands";
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
                string selectQuery = "SELECT * from [Post] where types= 'Errands' and status=1";
                
                SqlCommand cmd = new SqlCommand(selectQuery, con);
                //cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                ErrandsList.DataSource = cmd.ExecuteReader();
                ErrandsList.DataBind();
                //SqlDataAdapter sda = new SqlDataAdapter(cmd);
                //DataTable dt = new DataTable();
                //sda.Fill(dt);
               
            }
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string insertQuery = "insert into [Post](title, content, types, poster_uid,poster_uname, status, creation_date) values (@title,@content, @types, @poster_uid,@poster_uname, @status, @creation_date)";
            SqlCommand cmd = new SqlCommand(insertQuery, con);
            if (txtTitle.Text == "" || txtContent.Text == "")
            {
                Response.Write("<script>alert('Please fill in the title and description to make your requirement clear. Thank you!')</script>");
            }
            else
            {
                cmd.Parameters.AddWithValue("@title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@content", txtContent.Text);
                cmd.Parameters.AddWithValue("@types", Session["type"]);
                cmd.Parameters.AddWithValue("@poster_uid", Session["id"]);
                cmd.Parameters.AddWithValue("@poster_uname", Session["uname"]);
                cmd.Parameters.AddWithValue("@status", "1");
                cmd.Parameters.AddWithValue("@creation_date", DateTime.Today.ToString("dd-MM-yyyy"));
                cmd.ExecuteNonQuery();
                //DateTime.Now.ToString("dd-mm-yyyy")

                con.Close();
                Response.Redirect("~/Errands.aspx");
            }

        }

        protected void ErrandsList_ItemCommand(object sender, ListViewCommandEventArgs e)
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
                string check = "SELECT poster_uid from [Post] where post_id= @post_id ";


                DataTable dt = new DataTable();

                using (SqlCommand cmd = new SqlCommand(check, con))
                {
                    cmd.Parameters.AddWithValue("@post_id", post_id);
                    cmd.ExecuteNonQuery();

                    SqlDataAdapter sda = new SqlDataAdapter(cmd);

                    sda.Fill(dt);
                }

                System.Diagnostics.Debug.WriteLine(Convert.ToInt32(dt.Rows[0]["poster_uid"]));
                System.Diagnostics.Debug.WriteLine(string.Compare(Convert.ToString(dt.Rows[0]["poster_uid"]), Convert.ToString(Session["id"])));
                // if (Convert.ToString(dt.Rows[0]["poster_uid"]) == Convert.ToString(Session["id"]))
                if ((string.Compare(Convert.ToString(dt.Rows[0]["poster_uid"]), Convert.ToString(Session["id"]))==0))
                {
                    Response.Write("<script>alert('You need helpers! Please help others!')</script>");

                }

                else {

             

                    SqlCommand cmd = new SqlCommand(help, con);
                         cmd.Parameters.AddWithValue("@post_id", post_id);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    PostListView();
                    Response.Redirect("Mission.aspx");


                }











            }
        }
    }
}