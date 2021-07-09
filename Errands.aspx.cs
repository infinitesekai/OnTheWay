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
            }
        }

        protected void ShowBtn_Click(object sender, EventArgs e)
        {

        }
        
        protected void HelpBtn_Click(object sender, EventArgs e)
        {

        }
        protected void RefreshPage_Click(object sender, EventArgs e)
        {
            Server.Transfer("Errands.aspx");
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
                string help = "update [Post] set status=2, helper_uid='" + Session["id"] + "',helper_uname='"+Session["uname"]+"' where post_id= @post_id ";


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