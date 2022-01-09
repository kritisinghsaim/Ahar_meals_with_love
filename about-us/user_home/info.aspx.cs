using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class about_us_user_home_info : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    public void AddDynamicLabels()
    {

        SqlConnection con = new SqlConnection(constr);
        string query = "SELECT * from info order by Date DESC";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(reader);
        con.Close();

        foreach (DataRow row in dt.Rows)
        {
            //pnlKPI.InnerHtml = "<div><div>";

            Response.Write("<div class='alert alert-success'>");
            Response.Write("<h4>" + row.Field<string>(4) + "<p class='small'>" + row.Field<string>(1) + "</p></h4>");
          
            Response.Write("<p style='color:#28262c;'>" + row.Field<string>(2) + "</p>");
            Response.Write("<a>" + row.Field<string>(3) + "</a>");
            Response.Write("</div>");

        }
    }


    
}