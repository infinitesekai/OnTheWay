using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace OnTheWay
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
                string selectQuery = "SELECT top 3 [post_id], [title], [content], [poster_uid], [helper_uid], [status], [creation_date], [poster_uname], [helper_uname] from [Post] where status=1 order by post_id desc";

                SqlCommand cmd = new SqlCommand(selectQuery, con);
                //cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                LatestRequestList.DataSource = cmd.ExecuteReader();
                LatestRequestList.DataBind();
            }
        }

        protected void LatestRequestList_ItemCommand(object sender, ListViewCommandEventArgs e)
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
                if ((string.Compare(Convert.ToString(dt.Rows[0]["poster_uid"]), Convert.ToString(Session["id"])) == 0))
                {
                    Response.Write("<script>alert('You need helpers! Please help others!')</script>");

                }

                else
                {



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