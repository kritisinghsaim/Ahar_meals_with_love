using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class about_us_admin_home_postinfo : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);
        string query = "insert into info (Subject, Details, Link, Date) values ('"+subject.Text.ToString()+"','"+description.Text.ToString()+"','"+link.Text.ToString()+"',GetDate())";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Label1.Text = "Information added.";
        }
        else
        {
            Label1.Text = "Error occured. Please try again!";
        }
    }
}