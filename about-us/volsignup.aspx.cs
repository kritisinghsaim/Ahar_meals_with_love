using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;

public partial class about_us_volsignup : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        otp.Visible = false;
        otplbl.Visible = false;
        Button1.Visible = false;
    }
    protected void regbtn_Click(object sender, EventArgs e)
    {


        regbtn.Visible = false;
        int otp1 = new Random().Next(10000, 99999);

        //duplicate user check

        string usercheck = "select * from vReg where Email='" + email.Text.ToString() + "'";
        SqlConnection con1 = new SqlConnection(constr);
        SqlCommand cmd1 = new SqlCommand(usercheck, con1);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            lblmsg.Text = "user already exists";
            lblmsg.ForeColor = Color.Red;
            regbtn.Visible = true;
        }
        else
        {
            otp.Visible = true;
            otplbl.Visible = true;
            Button1.Visible = true;

            string qry = "insert into vreg values('" + email.Text.ToString() + "','" + otp1 + "')";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand(qry, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblmsg.Text = "OTP has been sent to your email id";
                SendingMail(email.Text.ToString(), "kumarvinay.vkm705013@gmail.com", "8210172041", "OTP Registration", "your one time password is " + otp1);

            }

            else
            {
                lblmsg.Text = "there is some error please contact admin";
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry1 = "select * from vreg where Email='" + email.Text.ToString() + "' and OTP='" + otp.Text + "'";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd1 = new SqlCommand(qry1, con);

        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataTable dt = new DataTable();
        int check = 0;
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            otp.Visible = false;
            otplbl.Visible = false;
            lblmsg.Text = "otp verified";
            lblmsg.ForeColor = Color.LawnGreen;
            check = 1;

        }
        else
        {
            lblmsg.Text = "otp invalid";
            lblmsg.ForeColor = Color.Red;
        }




        con.Close();
        con = new SqlConnection(constr);
        con.Open();
        string qry2 = "insert into vRegistration (Email) values ('" + email.Text.ToString() + "')";
        SqlCommand cmd2 = new SqlCommand(qry2, con);

        if (check == 1)
        {
            int i = cmd2.ExecuteNonQuery();
            if (i > 0)

            {
                lblmsg2.Text = "you have successfully registered";
                SendingMail(email.Text.ToString(), "kumarvinay.vkm705013@gmail.com", "8210172041", "Registration", "You have successfully registered!!");




                //session creation
                Session["umail"] = email.Text.ToString();
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "redirectJS", " setTimeout(function(){window.location.replace('vol_home/chpass.aspx')}, 2000);", true);


            }
            else
            {
                lblmsg2.Text = "registration failed";
            }

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
}




