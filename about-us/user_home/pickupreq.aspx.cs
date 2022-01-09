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
using System.Net.Mail;
using System.IO;


public partial class about_us_user_home_pickupreq : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btn_Click(object sender, EventArgs e)
    {
        if (Session["PassMultiVal"] != null)
        {
            List<string> rcval = (List<string>)Session["PassMultiVal"];

            string sql = "insert into upick values('" + rcval[1] + "','" + rcval[0] + "', '" + txtedet.Text.ToString() + "','" + txtaddress.Text.ToString() + "','" + txtdob.Text.ToString() + "','" + DropDownList2.Text.ToString() + "','" + txtquan.Text.ToString() + "' ,'" + txtctime.Text.ToString() + "','" + txtexp.Text.ToString() + "','" + areacode.Text.ToString() + "', 'Submitted')";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Label1.Text = " Thank you !! Your Request is sent";

                //    SendingMail(txtemail.Text.ToString(), "kumarvinay.vkm705013@gmail.com", "7050132917", "User Registration", "You have successfully registred");
                //    lblmsg.Text = "You have successfully registered";
                //    txtname.Text = "";
            }
            else
            {
                //    lblmsg.Text = "registration failed";
            }


        }
    }
}