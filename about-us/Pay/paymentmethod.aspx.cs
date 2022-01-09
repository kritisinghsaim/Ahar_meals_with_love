using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Configuration;

public partial class about_us_Pay_paymentmethod : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        banksDDL();
        if (IsPostBack)
        {

            if (pmethod.SelectedValue == "Net Banking")
            {
                banks.Visible = true;
               
            }
            

        }
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        if (pmethod.SelectedValue == "Debit/Credit Card")
        {
            Response.Redirect("gateway.aspx?meth=dc");
        }
        else if (pmethod.SelectedValue == "Net Banking")
        {
            Response.Redirect("gateway.aspx?meth=nb");
        }
    }


    private void banksDDL()
    {
        string qry = "select ID, Bank from Netbanking";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();

        banks.DataSource = dt;

        banks.DataValueField = "Bank";
        banks.DataTextField = "Bank";
        banks.DataBind();
        banks.Items.Insert(0, new ListItem("Select", "NA"));
    }


}