using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class about_us_bshop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
           List<string> values = new List<string>();
        values.Add(lblpay.Text.ToString());
        values.Add(DropDownList2.SelectedValue.ToString());
        values.Add(lbladd.Text.ToString());
        values.Add(lblser.Text.ToString());

        Session["pay"] = values;
        Response.Redirect("pay/payment.aspx");


    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(DropDownList2.SelectedValue=="100")
        {
            lblpay.Text = "3500";
        }
        else if (DropDownList2.SelectedValue == "200")
        {
            lblpay.Text = "7000";
        }
        else if (DropDownList2.SelectedValue == "300")
        {
            lblpay.Text = "10500";
        }
        else 
        {
            lblpay.Text = "Please select amount";
        }
    }
}