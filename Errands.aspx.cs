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
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
               
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
                if (Convert.ToInt32(dt.Rows[0]["poster_uid"]) == Convert.ToInt32(Session["id"]))
                {
                    Response.Write("<script>alert('You need helpers!')</script>");
                   
                }
                
                using(SqlCommand cmd = new SqlCommand(help, con))
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