using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class about_us_Pay_receipt : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["pay"] != null && Session["bdet"] != null)
        {
            List<string> payrev = (List<string>)Session["pay"];
            List<string> bdetrev = (List<string>)Session["bdet"];

            SqlConnection con = new SqlConnection(constr);
            string query = "insert into bdonat (name , email , mobile , dob , address  ,people,amount, date ) values ('" + bdetrev[0].ToString() + "','"+ bdetrev[1].ToString() + "','" + bdetrev[2].ToString() + "','" + bdetrev[3].ToString() + "','" + bdetrev[4].ToString() + "','" + payrev[1].ToString() + "','" + payrev[0].ToString() + "',GetDate())";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {

            }
            else
            {
            }

        }

        if (Session["pay"] != null)
        {
            List<string> payrev = (List<string>)Session["pay"];
            baddr.Text = payrev[2];
            service.Text = payrev[3];
            amount.Text = payrev[0];
            total.Text = payrev[0];


        }
        Session.RemoveAll();
    }
}