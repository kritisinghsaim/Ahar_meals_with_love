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
using System.Net.Mail;

public partial class about_us_forgot : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        otp.Visible = false;
        otplbl.Visible = false;
        btnotp.Visible = false;
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            string userlogin = "select * from uRegistration where Email='" + txtemail.Text.ToString().Trim() + "'";
            SqlConnection con1 = new SqlConnection(constr);
            SqlCommand cmd1 = new SqlCommand(userlogin, con1);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            int code = 0;
            if (dt.Rows.Count > 0)
            {

                con1.Close();
                string verify = "select otp from ureg where Email='" + txtemail.Text.ToString().Trim() + "'";
                con1 = new SqlConnection(constr);
                cmd1 = new SqlCommand(verify, con1);
                con1.Open();
                SqlDataReader dr = cmd1.ExecuteReader();

                if (dr.Read())
                {
                    code = Convert.ToInt32(dr["OTP"].ToString());
                }

                SendingMail(txtemail.Text.ToString(), "kumarvinay.vkm705013@gmail.com", "8210172041", "Password Reset", "Your verification code for password reset is " + code);
                msglbl.Text = "Please provide OTP sent to Email for verification! ";
                msglbl.ForeColor = Color.Red;
                otp.Visible = true;
                otplbl.Visible = true;
                btnotp.Visible = true;
                btnlogin.Visible = false;
            }
            else
            {
                msglbl.Text = "User Does Not Exist!";
                msglbl.ForeColor = Color.Red;
            }
        }
        catch (Exception ex)
        {
            msglbl.Text = ex.ToString();
            msglbl.ForeColor = Color.Red;
        }
    }


    public string SendingMail(string mailTo, string from, string pass, string subject, string body)
    {
        string msg = string.Empty;
        if (mailTo != "")
        {

            MailMessage message = new MailMessage();
            SmtpClient smtpClient = new SmtpClient();

            try
            {
                MailAddress fromAddress = new MailAddress(from);
                message.From = fromAddress;
                message.To.Add(mailTo);

                message.Subject = subject;
                message.IsBodyHtml = true;
                message.Body = body;
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.Credentials = new System.Net.NetworkCredential(from, pass);
                smtpClient.Send(message);
                msg = "true";

            }
            catch (Exception ex)
            {
                throw ex;
                // msg = ex.Message;
            }
        }
        return msg;

    }




    protected void btnotp_ServerClick(object sender, EventArgs e)
    {
        string userlogin = "select otp from ureg where Email='" + txtemail.Text.ToString().Trim() + "'";
        SqlConnection con1 = new SqlConnection(constr);
        SqlCommand cmd1 = new SqlCommand(userlogin, con1);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataTable dt = new DataTable();
        da.Fill(dt);
        int code = 0;
        if (dt.Rows.Count > 0)
        {
            code = Convert.ToInt32(dt.Rows[0]["OTP"].ToString());
            if (code == Convert.ToInt32(otp.Text))
            {
                Session["umail"] = txtemail.Text.ToString();
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "redirectJS", " setTimeout(function(){window.location.replace('user_home/chpass.aspx')}, 1000);", true);
            }
        }

    }
}