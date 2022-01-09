using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class about_us_admin_home_aMasterPage : System.Web.UI.MasterPage
{

    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        List<string> rcval = (List<string>)Session["AdminLog"];
      

        //displaying username in user dashboard
        if (Session["AdminLog"] != null)
        {
           
           
            lbluname.Text = "Welcome " +rcval[0]+"___"+ rcval[1];

        }
    }
}
