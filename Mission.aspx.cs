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
    public partial class Mission : System.Web.UI.Page
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
                con.Open();

                string getMission = "select * from [Post] where helper_uid= '" + Session["id"] + "' and status= 2 ";
                string getCompletedMission = "select * from [Post] where helper_uid= '" + Session["id"] + "' and status= 3 ";

                using (SqlCommand cmd = new SqlCommand(getMission, con))
                {
                    //Command 1
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        MissionList.DataSource = reader;
                        MissionList.DataBind();
                    }
                }

                using (SqlCommand cmd = new SqlCommand(getCompletedMission, con))
                {
                    //Command 2
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        CompletedmissionList.DataSource = reader;
                        CompletedmissionList.DataBind();
                    }
                }
                con.Close();


            }
        }


        protected void MissionList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            int post_id = Convert.ToInt32(e.CommandArgument);
            switch (e.CommandName)
            {
                
                case ("cancel"):
                    cancelMission(post_id);
                    break;

                case ("complete"):
                    completeMission(post_id);
                    break;

            }
        }

        void cancelMission(int post_id)
        {

            string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                string cancelMission = "update [Post] set status=1, helper_uid=NULL where post_id= @post_id ";


                using (SqlCommand cmd = new SqlCommand(cancelMission, con))
                {
                    cmd.Parameters.AddWithValue("@post_id", post_id);
                    cmd.ExecuteNonQuery();
                }

                con.Close();
                PostListView();
                Response.Redirect("Mission.aspx");

            }
        }

        void completeMission(int post_id)
        {

            string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                string completeMission = "update [Post] set status=3 where post_id= @post_id ";


                using (SqlCommand cmd = new SqlCommand(completeMission, con))
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