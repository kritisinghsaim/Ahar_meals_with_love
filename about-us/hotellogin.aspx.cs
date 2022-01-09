
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Security.Cryptography;
using System.IO;
using System.Text;

public partial class about_us_hotellogin : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
 
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }






    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            string userlogin = "select * from hlog where hotelid='" + txtemail.Text.ToString().Trim() + "' and Password='" + txtpassword.Text.ToString().Trim() + "'";
            SqlConnection con1 = new SqlConnection(constr);
            SqlCommand cmd1 = new SqlCommand(userlogin, con1);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {//session creation
                List<string> values = new List<string>();
                values.Add(dt.Rows[0]["Email"].ToString());
             values.Add(dt.Rows[0]["hotelid"].ToString());
                Session["PassMultiVal"] = values;
                Response.Redirect("hotel_home/userdashboard.aspx");
            }

            else
            {
                msglbl.Text = "invalid userid or password";
                msglbl.ForeColor = Color.Red;
            }

        }
        catch (Exception ex)
        {
            msglbl.Text = "invalid userid or password";
            msglbl.ForeColor = Color.Red;
        }
    }


}


