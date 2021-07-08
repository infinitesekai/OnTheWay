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

                SqlCommand cmd = new SqlCommand("GetAllPost", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                requestList.DataSource = cmd.ExecuteReader();
                requestList.DataBind();
            }
        }

        //public IQueryable<Post> GetPosts(
        //                    [QueryString("type")] string type)

        //{
        //    var _db = new OnTheWay.Models.PostContext();
        //    IQueryable<Post> query = _db.Posts;

        //    if (type!=null)
        //    {
        //        query = query.Where(p => p.type == "Errands");
        //    }
        //    return query;
        //}
        protected void ShowBtn_Click(object sender, EventArgs e)
        {

        }
        
        protected void HelpBtn_Click(object sender, EventArgs e)
        {

        }
       
    }
}