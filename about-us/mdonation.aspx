<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/MasterPage.master" AutoEventWireup="true" CodeFile="mdonation.aspx.cs" Inherits="about_us_mdonation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css" data-type="vc_custom-css">.wpb_heading {
        text-align: center;
    font-size: 18px;
    font-family: initial;
    
}   
.wpb_singleimage_heading{
    
        text-align: center;
    font-size: 18px;
    font-family: initial;
}
.wpcf7-submit{
    background-color: #f25f34;
    color: black;
}</style><noscript><style type="text/css"> .wpb_animate_when_almost_visible { opacity: 1; }</style></noscript>		<style type="text/css">
				</style>
	<link rel='stylesheet' id='select2-css'  href='../wp-content/plugins/woocommerce/assets/css/select2729e.css?ver=2ffca2a26539a754b56278303b67cc9f' type='text/css' media='all' />
 <link rel="stylesheet" href="css/StyleSheet3.css" />
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <link rel="stylesheet" href="css/responsive.css">

  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
  

    <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>

<section class='container-wrap main-title alternate-color  main-right-breadcrumb border-bottom'><div class='container'><h1 class="page-title">Money Doner Details</h1><div class='breadcrumb-extra'><p class="page-info"><em class="muted">Call us on</em> &nbsp;&nbsp;<i class="icon-phone"></i> +91 80923 08696 &nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-mail-alt"></i> ahar.in@gmail.com</p></div></div></section>

<form runat="server"  style="color:#bb1919;  margin-left:35%;">
<div style="display: none;">
<input type="hidden" name="_wpcf7" value="11306" />
<input type="hidden" name="_wpcf7_version" value="4.9.1" />
<input type="hidden" name="_wpcf7_locale" value="en_US" />
<input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f11306-p11119-o1" />
<input type="hidden" name="_wpcf7_container_post" value="11119" />
<input type="hidden" name="_wpcf7cf_hidden_group_fields" value="" />
<input type="hidden" name="_wpcf7cf_hidden_groups" value="" />
<input type="hidden" name="_wpcf7cf_visible_groups" value="" />
<input type="hidden" name="_wpcf7cf_options" value="{&quot;form_id&quot;:11306,&quot;conditions&quot;:&quot;&quot;,&quot;settings&quot;:false}" />
</div>
    
        
     <fieldset>
       
          <legend><span class="number">#</span>Your Details</legend>
                         
<p>Your Name <br />
    <span class="wpcf7-form-control-wrap your-name">    <asp:TextBox ID="txtname" runat="server" placeholder="Name" CssClass="form-control"></asp:TextBox>
                          </span> </p>
<p>Your Email <br />
    <span class="wpcf7-form-control-wrap your-email"> 
           <asp:TextBox ID="txtemail" runat="server" placeholder="E-mail" CssClass="form-control"></asp:TextBox>
                        </span> </p>
   <p>Mobile No <br />
    <span class="wpcf7-form-control-wrap your-email"> 
           <asp:TextBox ID="txtmob" runat="server" placeholder="Mobile" CssClass="form-control"></asp:TextBox>
                        </span> </p>
    
      

         <p>Address<br />
    <span class="wpcf7-form-control-wrap your-message">              <asp:TextBox ID="txtadd" runat="server" placeholder="Address" CssClass="form-control" TextMode="MultiLine" Columns="80" Rows="2"> </asp:TextBox>
                            
                              </span> </p><p>
  
           
     </fieldset>
        <asp:Button ID="Button1" BackColor=" #f25f34"  class=" btn btn-defaultrunat" runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="v2" Style="width:30%;margin-left:35%;" />  
 <br />
    <asp:Label ID="lbldate" runat="server" Text="null" Visible="false"></asp:Label>
</form>

    

		

</asp:Content>