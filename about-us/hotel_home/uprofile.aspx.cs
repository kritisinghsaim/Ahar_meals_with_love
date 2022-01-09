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

public partial class about_us_hotel_home_uprofile : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
    string spath1="", spath="";
  
    protected void Page_Load(object sender, EventArgs e)
    {

      
        if (Session["PassMultiVal"] != null)
        {
            List<string> rcval = (List<string>)Session["PassMultiVal"];
            string userselect = "select * from hlog where Email='" + rcval[0] + "'";
            SqlConnection con1 = new SqlConnection(constr);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(userselect, con1);
            SqlDataReader dr = cmd1.ExecuteReader();
            if(dr.Read())
            {
                mail.Text = dr["Email"].ToString();
                mail.ReadOnly = true;
               

            }


            con1.Close();


            string userselect2 = "select * from hregistration where Email='" + rcval[0] + "'";
             con1.Open();
            SqlCommand cmd2 = new SqlCommand(userselect2, con1);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

            }

              else
           
            {
                con1.Close();

                con1 = new SqlConnection(constr);
                con1.Open();
                string qry2 = "insert into hRegistration (Email) values ('" + rcval[0] + "')";
                SqlCommand cmd3 = new SqlCommand(qry2, con1);
                int i = cmd3.ExecuteNonQuery();

            }
        }


    }






    protected void btn_Click(object sender, EventArgs e)
    {      
        if(txtman.Text==""||phone.Text=="")
        {
            Label1.Text = "One or more important fields empty!";
            if (txtman.Text == "")
            {
                txtman.BorderColor = Color.Red;
            }
            else
            {
                txtman.BorderColor = Color.FromArgb(204, 204, 204);
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
                            values.Add(txtman.Text.ToString());//1
                            values.Add(mail.Text.ToString());//2
                            values.Add(phone.Text.ToString());//3
                             values.Add(address.Text.ToString());//4
                            values.Add(areacode.Text.ToString());//5
                            values.Add(spath1.ToString());//6
                            Session["confirm"] = values;
            Session["add"] = address.Text.ToString();

            Response.Redirect("confirm.aspx");




        }



                            


    }










    
}