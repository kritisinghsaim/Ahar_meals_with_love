
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

public partial class about_us_vollogin : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {

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




    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            string userlogin = "select * from vRegistration where Email='" + txtemail.Text.ToString().Trim() + "' and Password='" + Encrypt(txtpassword.Text.ToString().Trim(), true) + "'";
            SqlConnection con1 = new SqlConnection(constr);
            SqlCommand cmd1 = new SqlCommand(userlogin, con1);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {//session creation
                List<string> values = new List<string>();
                values.Add(txtemail.Text.ToString());
                values.Add(dt.Rows[0]["Name"].ToString());
                Session["PassMultiVal"] = values;
                Response.Redirect("vol_home/userdashboard.aspx");
            }
            else
            {
                msglbl.Text = "invalid userid or password";
                msglbl.ForeColor = Color.Red;
            }
        }
        catch (Exception ex)
        {
            msglbl.Text = "invalid userid or password";
            msglbl.ForeColor = Color.Red;
        }
    }


}


