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

public partial class about_us_hotel_home_review : System.Web.UI.Page

{


    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
    string spath = "";
    string Data = "", id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        
       
        if (Session["PassMultiVal"] != null)
        {
            List<string> rcval = (List<string>)Session["PassMultiVal"];

            string userselect = "select * from hRegistration where Email='" + rcval[0] + "'";
            SqlConnection con1 = new SqlConnection(constr);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(userselect, con1);
            SqlDataReader dr = cmd1.ExecuteReader();
            Data = rcval[0];
            
            if (dr.Read())

            {
                id = dr["ID"].ToString();
               qr.ImageUrl = spath;                
                uimg.ImageUrl = dr["Image"].ToString();              
                uname.Text = dr["Name"].ToString();
                uman.Text = dr["Manager"].ToString();
                 umail.Text= dr["Email"].ToString();
                uphone.Text= dr["Phone"].ToString();
                 uaddress.Text  = dr["Address"].ToString();
                uarea.Text = dr["AreaCode"].ToString();
                
                
            }


        }





    }
    protected void btn_Click(object sender, EventArgs e)
    {
       
    }


    

}