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
using System.Security.Cryptography;
using System.IO;
using System.Text;


public partial class about_us_user_home_chpass : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["PassMultiVal"] != null)
        {
            oldpass.Visible = true;
            oldpl.Visible = true;
        }

    }





    public static string Encrypt(string toEncrypt, bool useHashing)
    {
        byte[] keyArray;
        byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(toEncrypt);

        System.Configuration.AppSettingsReader settingsReader =
                                            new AppSettingsReader();
        // Get the key from config file

        string key = (string)settingsReader.GetValue("SecurityKey",
                                                         typeof(String));
        //System.Windows.Forms.MessageBox.Show(key);
        //If hashing use get hashcode regards to your key
        if (useHashing)
        {
            MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
            keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
            //Always release the resources and flush data
            // of the Cryptographic service provide. Best Practice

            hashmd5.Clear();
        }
        else
            keyArray = UTF8Encoding.UTF8.GetBytes(key);

        TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
        //set the secret key for the tripleDES algorithm
        tdes.Key = keyArray;
        //mode of operation. there are other 4 modes.
        //We choose ECB(Electronic code Book)
        tdes.Mode = CipherMode.ECB;
        //padding mode(if any extra byte added)

        tdes.Padding = PaddingMode.PKCS7;

        ICryptoTransform cTransform = tdes.CreateEncryptor();
        //transform the specified region of bytes array to resultArray
        byte[] resultArray =
          cTransform.TransformFinalBlock(toEncryptArray, 0,
          toEncryptArray.Length);
        //Release resources held by TripleDes Encryptor
        tdes.Clear();
        //Return the encrypted data into unreadable string format
        return Convert.ToBase64String(resultArray, 0, resultArray.Length);
    }


    protected void pbtn_Click(object sender, EventArgs e)
    {

        //sign up session check
        if (Session["umail"] != null)
        {
           
                SqlConnection con = new SqlConnection(constr);
                con.Open();

                string qry2 = "update uRegistration set Password='" + Encrypt(password.Text.ToString(), true) + "' where Email='" + Session["umail"] + "'";
                SqlCommand cmd2 = new SqlCommand(qry2, con);

                int i = cmd2.ExecuteNonQuery();
                if (i > 0)
                {
                    plbl.Text = "Password updated, You will be redirected to log in!";
                    plbl.ForeColor = Color.Red;
                    ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "redirectJS", " setTimeout(function(){window.location.replace('../login.aspx')}, 2000);", true);


                }

                else
                {
                    plbl.Text = "An error ocurred! Please try later!";
                }

            
            
           


        }


        //login session check
        if (Session["PassMultiVal"] != null)
        {
            List<string> rcval = (List<string>)Session["PassMultiVal"];
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string qry1 = "select Password from uRegistration where Email='" + rcval[0] + "'";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            SqlDataReader dr = cmd1.ExecuteReader();
            string pcheck = "";
            if (dr.Read())
            {
                pcheck = dr["Password"].ToString().Trim();

            }

            if (pcheck == Encrypt(oldpass.Text.ToString(), true))
            {
               
                    con.Close();
                    con.Open();
                    string qry2 = "update uRegistration set Password='" + Encrypt(password.Text.ToString(), true) + "' where Email='" + rcval[0] + "'";
                    SqlCommand cmd2 = new SqlCommand(qry2, con);
                    int i = cmd2.ExecuteNonQuery();
                    if (i > 0)
                    {
                        plbl.Text = "Password updated";

                    }

            }
            else
            {
                plbl.Text = "An error ocurred! Please try later!";
            }

        }




        //for password encryption
        //if (password.Text.ToString() == cpassword.Text.ToString())
        //{
        //    SqlConnection con = new SqlConnection(constr);
        //    con.Open();

        //    string qry2 = "insert into uRegistration (Password) values('" + Encrypt(password.Text.ToString(),true) + "')";
        //    SqlCommand cmd2 = new SqlCommand(qry2, con);

        //    int i = cmd2.ExecuteNonQuery();
        //    if (i > 0)
        //    {
        //        plbl.Text = "Password updated, You will be redirected";
        //        plbl.ForeColor = Color.Red;
        //        //ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "redirectJS", " setTimeout(function(){window.location.replace('userdashboard.aspx')}, 2000);", true);


        //    }

        //    else
        //    {
        //        plbl.Text = "An error ocurred! Please try later!";
        //    }

        //}
        //else
        //{
        //    plbl.Text = "Passwords don't match!";
        //}




    }
}