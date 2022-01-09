using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class about_us_contact : System.Web.UI.Page

{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string strQuery = "insert into Contact values('" + name.Text.ToString() + "','" + cont.Text.ToString() + "','" + message.Text.ToString() + "',GetDate())";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand(strQuery);
        cmd.Connection = con;
        //con.Open();
        try
        {

            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Label1.Text = "Thank You for contacting us , our team will be heading to you shortly! ";

            }

            else
            {
                Label1.Text = "there is some error please contact admin";
            }



        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            con.Close();
            con.Dispose();
        }




    }
}



