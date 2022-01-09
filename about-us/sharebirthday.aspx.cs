using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class about_us_sharebirthday : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
           List<string> values = new List<string>();
            values.Add(txtname.Text.ToString());
            values.Add(txtemail.Text.ToString());
            values.Add(txtmob.Text.ToString());
            values.Add(txtdob.Text.ToString());
            values.Add(txtadd.Text.ToString());
     

            Session["bdet"] = values;

            Response.Redirect("bshop.aspx");

       
    }
}




