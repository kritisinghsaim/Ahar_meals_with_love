using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class about_us_admin_home_hotelentry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string inscmd = "insert into hlog(hotelid,Name,fssai,Contact,Password,Email)values(@hotelid,@Name,@fssai,@Contact,@pass,@Email)";
        SqlCommand insertuser = new SqlCommand(inscmd, con);
        insertuser.Parameters.AddWithValue("@hotelid", TextBox1.Text);
        insertuser.Parameters.AddWithValue("@Name", TextBox2.Text);
        insertuser.Parameters.AddWithValue("@fssai", TextBox4.Text);
        insertuser.Parameters.AddWithValue("@Contact", TextBox5.Text);
        insertuser.Parameters.AddWithValue("@pass", txtpass.Text);
        insertuser.Parameters.AddWithValue("@Email", TextBox6.Text);

        try
        {
            insertuser.ExecuteNonQuery();
            con.Close();
            plbl.Text = "Hotel is registred successfuly";
            ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('Data Saved Successfully');"), true);
        }
        catch (Exception er)
        {
            Response.Write("something going wrong" + er.Message + "");
        }
        finally
        {

        }

    }
}




