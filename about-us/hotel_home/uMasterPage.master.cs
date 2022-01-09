﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class wasco_user_home_uMasterPage : System.Web.UI.MasterPage
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)

    {   
        List<string> rcval=(List<string>)Session["PassMultiVal"];
        string ipath = "";
        
        //displaying username in user dashboard
        if (Session["PassMultiVal"] != null)
        {
            smail.Text =" "+ rcval[0];
                  lbluname.Text = "Welcome " + rcval[1];
               string userselect = "select * from hRegistration where Email='" + rcval[0] + "'";
            SqlConnection con1 = new SqlConnection(constr);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(userselect, con1);
            SqlDataReader dr = cmd1.ExecuteReader();
           
            if (dr.Read())
            {
                
                    ipath = dr["Image"].ToString();
                if(ipath!=null)
                {
                    uavatar.ImageUrl = ipath;
                }
                else
                {
                    uavatar.ImageUrl = "user.png";
                }

            }



        }
        
         if (Session["umail"] != null)
        {
            lbluname.Text = "Welcome " + Session["umail"].ToString();
            smail.Text =" "+ Session["umail"].ToString();
        }
    //    else
    //    {
    //        Response.Redirect("../logout.aspx");
    //    }
    }
}
