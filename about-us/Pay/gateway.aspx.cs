using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Drawing;

public partial class gateway : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
       
        string para = Request.QueryString["meth"];
        if (para == "dc")
        {
            waitpanel.Visible = false;
        }
        else if(para=="nb")
        {
            paypanel.Visible = false;
            waitpanel.Visible = true;
            HtmlMeta m = new HtmlMeta();
            m.HttpEquiv = "Refresh";
            m.Content = "5;url=receipt.aspx";
            this.Page.Controls.Add(m);
        }
    }

    
    protected void paynow_Click(object sender, EventArgs e)
    {

        if(cnum.Text==""||cexp.Text==""||cvv.Text==""||cname.Text=="")
        {
            malert.Visible = true;
            foreach (TextBox tb in form1.Controls.OfType<TextBox>())
            {
                if (tb.Text == "")
                {
                    tb.BorderColor = Color.Red;
                }
                else
                {
                    tb.BorderColor = Color.FromArgb(204,204,204);
                }
            }
        }
        else{

            paypanel.Visible = false;
            waitpanel.Visible = true;
            HtmlMeta m = new HtmlMeta();
            m.HttpEquiv = "Refresh";
            m.Content = "5;url=receipt.aspx";
            this.Page.Controls.Add(m);

        }
           

        

    }
}