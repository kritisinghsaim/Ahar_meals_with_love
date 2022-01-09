using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pay_payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["pay"] != null)
        {
            List<string> payrev = (List<string>)Session["pay"];
            baddr.Text = payrev[2];
            service.Text = payrev[3];
            amount.Text = payrev[0];
            total.Text = payrev[0];

        }

           }
}