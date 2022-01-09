using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class about_us_admin_home_vahicleentry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string inscmd = "insert into Vehicle_details(Vehicle_no,Owner_name,F_name,Uid_no,Contact,Email)values(@Vehicle_no,@Owner_name,@F_name,@Uid_no,@Contact,@Email)";
        SqlCommand insertuser = new SqlCommand(inscmd, con);
        insertuser.Parameters.AddWithValue("@Vehicle_no", TextBox1.Text);
        insertuser.Parameters.AddWithValue("@Owner_name", TextBox2.Text);
        insertuser.Parameters.AddWithValue("@F_name", TextBox3.Text);
        insertuser.Parameters.AddWithValue("@Uid_no", TextBox4.Text);
        insertuser.Parameters.AddWithValue("@Contact", TextBox5.Text);
        insertuser.Parameters.AddWithValue("@Email", TextBox6.Text);

        try
        {
            insertuser.ExecuteNonQuery();
            con.Close();
            plbl.Text = "Vahicle is registred successfuly";
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




