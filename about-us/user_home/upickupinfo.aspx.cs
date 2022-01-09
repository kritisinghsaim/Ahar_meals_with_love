using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class about_us_user_home_upickupinfo : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();


    protected void Page_Load(object sender, EventArgs e)
    {
        List<string> rcval = (List<string>)Session["PassMultiVal"];
        //string userselect = "select * from uRegistration where Email='" + rcval[0] + "'";

        string qry = "select [ID],[Email],[Uname],[Eventdetail],[venue],[date],[quantity],[status] from upick where Email='" + rcval[0] + "'"; 

        SqlConnection c1 = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(qry, c1);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.CommandText = "select * from uregistration";
        //cmd.Connection = c1;
        c1.Open();
        //if (!IsPostBack)
        //{
        //    criteria.Items.Add("Select");
        //    criteria.Items.Add("Email");
        //    criteria.Items.Add("Phone");
        //    criteria.Items.Add("Area Code");

        //}

        try
        {
            users.EmptyDataText = "No Records Found!";
            users.DataSource = cmd.ExecuteReader();
            users.DataBind();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            c1.Close();
            c1.Dispose();
        }



    }


}