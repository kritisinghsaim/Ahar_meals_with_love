using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class about_us_admin_home_addaharspot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string inscmd = "insert into aharspot(category,type,address,nopeople)values(@cat,@type,@add,@nopeo)";
        SqlCommand insertuser = new SqlCommand(inscmd, con);
        insertuser.Parameters.AddWithValue("@cat", Cateogry.Text);
        insertuser.Parameters.AddWithValue("@type", type.Text);
        insertuser.Parameters.AddWithValue("@add", TextBox5.Text);
        insertuser.Parameters.AddWithValue("@nopeo", TextBox4.Text);
      
        try
        {
            insertuser.ExecuteNonQuery();
            con.Close();
            plbl.Text = "Ahar spot is registered successfuly";
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









