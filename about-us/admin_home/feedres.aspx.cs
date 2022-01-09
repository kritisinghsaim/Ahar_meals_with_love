using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class about_us_admin_home_feedres : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        //string qry = "select * from feedback";
        //SqlConnection c1 = new SqlConnection(constr);
        //SqlCommand cmd = new SqlCommand(qry, c1);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.CommandText = "select * from uregistration";
        //cmd.Connection = c1;
        //c1.Open();
        //if (!IsPostBack)
        //{
        //    criteria.Items.Add("Select");
        //    criteria.Items.Add("Email");
        //    criteria.Items.Add("Phone");
        //    criteria.Items.Add("Area Code");

        //}

        //try
        //{
        //    GridView1.EmptyDataText = "No Records Found!";
        //    GridView1.DataSource = cmd.ExecuteReader();
        //    GridView1.DataBind();
        //}
        //catch (Exception ex)
        //{
        //    throw ex;
        //}
        //finally
        //{
        //    c1.Close();
        //    c1.Dispose();
        //}
    }
    protected void show_Click(object sender, EventArgs e)
    {
        Bind();
    }

    protected void Bind()
    {

        GridView1.DataBind();
    }
}