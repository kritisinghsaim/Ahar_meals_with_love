using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class about_us_hotel_home_feedstat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void fbtn_Click(object sender, EventArgs e)
    {
        Bind();
    }
    protected void Bind()
    {
       
        GridView1.DataBind();
    }
}