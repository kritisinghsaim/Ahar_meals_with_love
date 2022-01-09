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

public partial class about_us_admin_home_sendmail : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
    string mailto = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["hemail"] != null)
        {
           
                mailto = Session["hemail"].ToString();
           
        }
        if (Session["uemail"] != null)
        {
           
                mailto = Session["uemail"].ToString();
           
        }

        recepient.Text = mailto;
       
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

    protected void sm_Click(object sender, EventArgs e)
    {
        try
        {
            SendingMail(mailto, "kumarvinay.vkm705013@gmail.com", "8210172041", "Pickup Request", msg.Text.ToString());
            Label1.Text = "Sent Successfully";
            Session.Remove("hemail");
            Session.Remove("uemail");
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
        
    }
}