﻿using System;
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
    public partial class MyRequest : System.Web.UI.Page
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

                string getToCompleteRequest = "(select * from [Post] where poster_uid= '" + Session["id"] + "' and status=1) union " +
                                                 "(select * from [Post] where poster_uid= '" + Session["id"] + "' and status=2)   ";
                string getCompletedRequest = "select * from [Post] where poster_uid= '" + Session["id"] + "' and status= 3 ";

                using (SqlCommand cmd = new SqlCommand(getToCompleteRequest, con))
                {
                    //Command 1
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        ToCompleterequestList.DataSource = reader;
                        ToCompleterequestList.DataBind();
                    }
                }

                using (SqlCommand cmd = new SqlCommand(getCompletedRequest, con))
                {
                    //Command 2
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        CompletedrequestList.DataSource = reader;
                        CompletedrequestList.DataBind();
                    }
                }
                con.Close();


            }
        }


       

        protected void ToCompleterequestList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

            switch (e.CommandName)
            {
                case ("delete"):
                    int post_id = Convert.ToInt32(e.CommandArgument);
                    deleteRequest(post_id);
                    break;
           
            }
        }

        void deleteRequest(int post_id)
        {

            string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                string deleteRequest = "delete from [Post] where post_id= @post_id ";


                using (SqlCommand cmd = new SqlCommand(deleteRequest, con))
                {
                    cmd.Parameters.AddWithValue("@post_id", post_id);
                    cmd.ExecuteNonQuery();
                }

                con.Close();
                PostListView();
                Response.Redirect("MyRequest.aspx");

            }
        }

    }
}