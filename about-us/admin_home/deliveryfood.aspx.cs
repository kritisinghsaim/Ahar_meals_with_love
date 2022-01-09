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
using System.IO;
using System.Net.Mail;

public partial class about_us_admin_home_deliveryfood : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
    string mailveh = "";
    string mailvto = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }


  
    protected void userpic_Click(object sender, EventArgs e)
    {
        Button1.Visible = true;
        lblvol.Visible = true;
        txtvol.Visible = true;
        btnvol.Visible = true;
        lblvahi.Visible = true;
        txtvahi.Visible = true;
        btnvahi.Visible = true;
        string qry = "select * from aharspot where ID='" + txtupic.Text.ToString().Trim() + "'";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)  
        {
            pnluser.Visible = true;
            lblaadd.Text = dt.Rows[0]["address"].ToString();
            lblacat.Text = dt.Rows[0]["category"].ToString();
            lblatype.Text = dt.Rows[0]["type"].ToString();
            lblapeo.Text = dt.Rows[0]["nopeople"].ToString();
             }
        else
        {
            //GridView1.DataSource = null;
            //GridView1.DataBind();
        }

    }

  
    protected void vol_Click(object sender, EventArgs e)
    {
        string qry = "select * from vregistration where ID='" + txtvol.Text.ToString().Trim() + "'";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Pnbvoli.Visible = true;
            lblvname.Text = dt.Rows[0]["name"].ToString();
            lblgen.Text = dt.Rows[0]["gender"].ToString();
            lblvemail.Text = dt.Rows[0]["email"].ToString();
            lblcon.Text = dt.Rows[0]["phone"].ToString();
            Session["vemail"] = dt.Rows[0]["Email"].ToString();
        }
        else
        {
            //GridView1.DataSource = null;
            //GridView1.DataBind();
        }

    }

    protected void vehi_Click(object sender, EventArgs e)
    {
        string qry = "select * from Vehicle_details where ID='" + txtvahi.Text.ToString().Trim() + "'";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Pnbvehi.Visible = true;
            lblown.Text = dt.Rows[0]["owner_name"].ToString();
            lblvno.Text = dt.Rows[0]["Vehicle_no"].ToString();
            lblvconac.Text = dt.Rows[0]["contact"].ToString();

            lblvehemail.Text = dt.Rows[0]["email"].ToString();
            Session["vahemail"] = dt.Rows[0]["email"].ToString();
        }
        else
        {
            //GridView1.DataSource = null;
            //GridView1.DataBind();
        }

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["vahemail"] != null)
        {
            mailveh = Session["vahemail"].ToString();
            SendingMail(mailveh, "kumarvinay.vkm705013@gmail.com", "8210172041", "Food Delivery", "You have to go to deliver the food. The vahicle no is" +lblvno.Text.ToString() + ". Furter details will give to you in our office");
        }
        if (Session["vemail"] != null)
        {
            mailvto = Session["vemail"].ToString();
            SendingMail(mailvto, "kumarvinay.vkm705013@gmail.com", "8210172041", "Food Delivery", "You have to go to deliver the food with " + lblvname.Text.ToString() + ". Furter details will give to you in our office");
        }
        Session.Remove("vahemail");
        Session.Remove("vemail");
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


    protected void volstat_SelectedIndexChanged(object sender, EventArgs e)
    {
        string qry = "update vregistration set availstat='" + volstat.SelectedItem.Text + "' where ID='" + txtvol.Text.ToString().Trim() + "'";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {

        }

        else
        {
        }
    }
}