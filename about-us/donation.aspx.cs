using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class about_us_donation : System.Web.UI.Page
{
    string hh ="ahar";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        List<string> values = new List<string>();
        values.Add(txtmoney.Text.ToString());
        values.Add(hh.ToString());
        values.Add(lbladd.Text.ToString());
        values.Add(lblser.Text.ToString());

        Session["pay"] = values;
        Response.Redirect("pay/payment.aspx");


    }
}