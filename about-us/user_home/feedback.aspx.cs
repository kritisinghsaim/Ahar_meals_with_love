using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class about_us_user_home_feedback : System.Web.UI.Page

{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            reason.Items.Add("Select");
            reason.Items.Add("Feedback");
            reason.Items.Add("Suggestions");
            reason.Items.Add("Complaint");
        }
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        List<string> rcval = (List<string>)Session["PassMultiVal"];

        string qry1 = "select ID from uRegistration where Email='" + rcval[0] + "'";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd1 = new SqlCommand(qry1, con);
        SqlDataReader dr = cmd1.ExecuteReader();
        int userid = 0;
        if (dr.Read())
        {
            userid = dr.GetInt32(0);
        }
        int ticket;
        if (reason.Text.ToString() == "Complaint")
        {
            ticket = new Random().Next(100000, 999999);
        }
        else
        {
            ticket = 0;
        }

        if (Session["PassMultiVal"] != null)
        {
           
            //Add Entry to DataBase
            string strQuery = "insert into feedback values('" + reason.Text.ToString() + "','" + complain.Text.ToString() + "','" + detail.Text.ToString() + "'," + userid +","+ ticket+ ", 'Submitted' )";
            con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Connection = con;
            //con.Open();
            try
            {

                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    if(ticket!=0)
                    {
                        Label1.Text = "Successfully submitted! Your Ticket# - "+ticket+". Use this number to check complaint status <a href='feedstat.aspx'>here</a>.";
                    }
                    else
                    {
                        Label1.Text = "Successfully submitted!";
                    }

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
              
            {
                con.Close();
                con.Dispose();
            }

        }//session check
    }
    protected void reason_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (reason.Text.ToString() == "Suggestions" || reason.Text.ToString() == "Feedback")
        {
            complain.Enabled = false;
        }
        else
        {
            complain.Enabled = true;
        }
    }
}