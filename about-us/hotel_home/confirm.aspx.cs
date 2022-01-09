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

public partial class about_us_hotel_home_confirm : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
  
    List<string> rcval;
    string spath = "";

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["confirm"] != null)
        {

            rcval = (List<string>)Session["confirm"];
            uname.Text=rcval[0];
             uman.Text=rcval[1];
             umail.Text=rcval[2];
             uphone.Text=rcval[3];
              uaddress.Text=rcval[4];
             uarea.Text = rcval[5];
             uimg.ImageUrl = rcval[6];
        }

    }
    protected void btncon_Click(object sender, EventArgs e)
    {
       

        if (Session["confirm"] != null)
        {

 
            rcval = (List<string>)Session["confirm"];

            try
            {

                string qry = "update hRegistration set Name='" + rcval[0] + "',Manager='" + rcval[1] + "',Phone='" + rcval[3] + "' ,Address='" + rcval[4] + "',AreaCode='" + rcval[5] + "', Image='" + rcval[6] + "' where Email='" + rcval[2] + "'";
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand(qry, con);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Label9.Text = "You have successfully updated your profile!";
                  
                }

                else
                {
                    Label9.Text = "Registration failed";
                }
            }

            catch (Exception ex)
            {


                Label9.Text = ex.ToString();

            }



        }


       


    }


    protected void btncan_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("~/Files/") + Path.GetFileName(rcval[6]);
        if (File.Exists(path))
        {
            System.IO.File.Delete(path);
        }
      
        Session.Remove("confirm");
        Response.Redirect("uprofile.aspx");
       
       
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