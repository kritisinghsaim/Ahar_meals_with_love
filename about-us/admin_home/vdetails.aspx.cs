using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class about_us_admin_home_vdetails : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();


    protected void Page_Load(object sender, EventArgs e)
    {
        string qry = "select [ID],[Email],[Name], [Gender], [Phone], [Address],[Aadhar],[availstat] from vregistration";

        SqlConnection c1 = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(qry, c1);
        c1.Open();
       
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