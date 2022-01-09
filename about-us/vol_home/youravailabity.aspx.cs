using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.IO;
using System.Drawing;

public partial class about_us_vol_home_youravailabity : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
    List<string> rcval;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {



        if (Session["PassMultiVal"] != null)
        {
            List<string> rcval = (List<string>)Session["PassMultiVal"];
           
            try
            {

                string qry = "update vRegistration set availstat='" +avail.Text.ToString()+ "' where Email='" + rcval[0] + "'";
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand(qry, con);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    lbl.Text = "Your availablity status is updated!";
                   
                }

                else
                {
                    lbl.Text = "Something getting Wrong";
                }
            }

            catch (Exception ex)
            {


                lbl.Text = ex.ToString();

            }



        }





    }

}