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

public partial class about_us_user_home_uprofile : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
    string spath1="", spath="";


    protected void Page_Load(object sender, EventArgs e)
    {

        this.Page.Form.Enctype = "multipart/form-data";

        if (Session["umail"] != null)
        {
            string userselect = "select Email from uRegistration where Email='" + Session["umail"] + "'";
            SqlConnection con1 = new SqlConnection(constr);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(userselect, con1);
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                mail.Text = dr["Email"].ToString();
                mail.ReadOnly=true ;
            }
        }
        //check username session

        if (Session["PassMultiVal"] != null)
        {
            List<string> rcval = (List<string>)Session["PassMultiVal"];
            string userselect = "select * from uRegistration where Email='" + rcval[0] + "'";
            SqlConnection con1 = new SqlConnection(constr);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(userselect, con1);
            SqlDataReader dr = cmd1.ExecuteReader();
            if(dr.Read())
            {
                mail.Text = dr["Email"].ToString();
                mail.ReadOnly = true;
               

            }
        }

    }






    protected void btn_Click(object sender, EventArgs e)
    {      
        if(aadhar.Text==""||phone.Text=="")
        {
            Label1.Text = "One or more important fields empty!";
            if (aadhar.Text == "")
            {
                aadhar.BorderColor = Color.Red;
            }
            else
            {
                aadhar.BorderColor = Color.FromArgb(204, 204, 204);
            }
            if (phone.Text == "")
            {
                phone.BorderColor = Color.Red;
            }
            else
            {
                
                phone.BorderColor = Color.FromArgb(204, 204, 204);
            }

            
            


        }
        else
        {


            if (FileUpload1.HasFile)
                            {

                                string folderPath = Server.MapPath("~/Files/");
                                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
                                spath1 = "~/Files/" + FileUpload1.FileName;


                            }
                            else
                            {
                                spath1 = "#";
                            }




                            //session to pass values
                            List<string> values = new List<string>();
                            values.Add(name.Text.ToString());//0
                            values.Add(gender.Text.ToString());//1
                            values.Add(dob.Text.ToString());//2
                            values.Add(mail.Text.ToString());//3
                            values.Add(phone.Text.ToString());//4
                            values.Add(aadhar.Text.ToString());//5
                            values.Add(address.Text.ToString());//6
                            values.Add(areacode.Text.ToString());//7
                            values.Add(spath1.ToString());//8
        
                            Session["confirm"] = values;
                            Response.Redirect("confirm.aspx");




        }



                            


    }










    
}