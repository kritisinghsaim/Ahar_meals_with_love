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

public partial class about_us_admin_home_newpickup : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
    string mailveh = "";
    string mailvto = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

  
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        lblupic.Visible = true;
        txtupic.Visible = true;
        btnuserpic.Visible = true;
        lblhpic.Visible = false;
        txthpic.Visible = false;
        btnhpic.Visible = false ;
        lblvol.Visible = false;
        txtvol.Visible = false;
        btnvol.Visible = false;
        lblvahi.Visible = false;
        txtvahi.Visible = false;
        btnvahi.Visible = false;
        pnluser.Visible = false;
        Pnlhotel.Visible = false;
        Pnbvoli.Visible = false;
        Pnbvoli.Visible = false;
        Pnbvehi.Visible = false;
        Button1.Visible = true;

    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        lblhpic.Visible = true;
        txthpic.Visible = true;
        btnhpic.Visible = true;
        lblupic.Visible = false;
        txtupic.Visible = false;
        btnuserpic.Visible = false;
        lblvol.Visible = false;
        txtvol.Visible = false;
        btnvol.Visible = false;
        lblvahi.Visible = false;
        txtvahi.Visible = false;
        btnvahi.Visible = false;

        pnluser.Visible = false;
        Pnlhotel.Visible = false;
        Pnbvoli.Visible = false;
        Pnbvoli.Visible = false;
        Pnbvehi.Visible = false;
        Button1.Visible = true;


    }

    protected void userpic_Click(object sender, EventArgs e)
    {
        lblvol.Visible = true;
        txtvol.Visible = true;
        btnvol.Visible = true;
        lblvahi.Visible = true;
        txtvahi.Visible = true;
        btnvahi.Visible = true;
        string qry = "select * from upick where ID='" + txtupic.Text.ToString().Trim() + "'";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            pnluser.Visible = true;
             lbluname.Text = dt.Rows[0]["uname"].ToString();
            lbluedet.Text = dt.Rows[0]["eventdetail"].ToString();
            lbluemail.Text = dt.Rows[0]["Email"].ToString();
          lbluven.Text = dt.Rows[0]["venue"].ToString();
            lbludate.Text = dt.Rows[0]["date"].ToString();
            lbluqaun.Text = dt.Rows[0]["quantity"].ToString();
            lblucat.Text = dt.Rows[0]["category"].ToString();
            lbluarea.Text = dt.Rows[0]["areacode"].ToString();
            //avail.Text = dt.Rows[0]["status"].ToString();
            Session.Remove("hemail");

            Session["uemail"] = dt.Rows[0]["Email"].ToString();
        }
        else
        {
            //GridView1.DataSource = null;
            //GridView1.DataBind();
        }
       
    }

    protected void hotelpic_Click(object sender, EventArgs e)
    {
        lblvol.Visible = true;
        txtvol.Visible = true;
        btnvol.Visible = true;
        lblvahi.Visible = true;
        txtvahi.Visible = true;
        btnvahi.Visible = true;
     
        string qry = "select * from hpick where ID='" + txthpic.Text.ToString().Trim() + "'";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Pnlhotel.Visible = true;
            lblhname.Text = dt.Rows[0]["uname"].ToString();
            lblhedet.Text = dt.Rows[0]["eventdetail"].ToString();
            lblhemail.Text = dt.Rows[0]["Email"].ToString();
            lblhven.Text = dt.Rows[0]["venue"].ToString();
            lblhdate.Text = dt.Rows[0]["date"].ToString();
            lblhquan.Text = dt.Rows[0]["quantity"].ToString();
            lblhcat.Text = dt.Rows[0]["category"].ToString();
            lblharea.Text = dt.Rows[0]["areacode"].ToString();
             Session.Remove("uemail");
            Session["hemail"] = dt.Rows[0]["Email"].ToString();
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
            SendingMail(mailveh, "kumarvinay.vkm705013@gmail.com", "8210172041", "New Pickup", "You have to go to pickup the food. The vahicle no is" +lblvno.Text.ToString() + ". Furter details will give to you in our office ");
        }
        if (Session["vemail"] != null)
        {
            mailvto = Session["vemail"].ToString();
            SendingMail(mailvto, "kumarvinay.vkm705013@gmail.com", "8210172041", "New Pickup", "You have to go to pickup the food with Volunteer " + lblvname.Text.ToString() + ". Furter details will give to you in our office");
        }

        Session.Remove("vahemail");
        Session.Remove("vemail");
        Response.Redirect("sendmail.aspx");
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


    protected void avail_SelectedIndexChanged(object sender, EventArgs e)
    {
        string qry = "update upick set status='" +avail.SelectedItem.Text  + "' where ID='"  +txtupic.Text.ToString().Trim()  + "'";
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
        con.Close();
    }

    protected void hstatus_SelectedIndexChanged(object sender, EventArgs e)
    {
        string qry = "update hpick set status='" + hstatus.SelectedItem.Text + "' where ID='" + txthpic.Text.ToString().Trim() + "'";
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
        con.Close();
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