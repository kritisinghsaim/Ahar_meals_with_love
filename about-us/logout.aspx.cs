using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //code to remove session, that is log out and go back to home
        Session.RemoveAll();
        Response.Redirect("../home.aspx");
    }
}