<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="about_us_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <noscript><style type="text/css"> .wpb_animate_when_almost_visible { opacity: 1; }</style></noscript>		<style type="text/css">
				</style>
   
        <link rel="stylesheet" href="StyleSheet.css"/ >
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>

<section class='container-wrap main-title alternate-color  main-right-breadcrumb border-bottom'><div class='container'><h1 class="page-title">Contact Us</h1><div class='breadcrumb-extra'><p class="page-info"><em class="muted">Call us on</em> &nbsp;&nbsp;<i class="icon-phone"></i> +91 80923  08696  &nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-mail-alt"></i> ahar.in@gmail.com</p></div></div></section>

<br />
    <br />
 <h2 style="text-align: center; font-family: sans-serif;">Help Line Number</h2>
<h2 style="text-align: center; font-family: sans-serif; font-weight: bold;">80923 08696</h2>

    
<div class="wpb_wrapper">
			<h3 style="text-align: center;"><strong>Regd. Address</strong></h3>
<p style="text-align: center;">Ahar Meals with love</p>
<p style="text-align: center;">Block 2, Pune Tech Zone,</p>
<p style="text-align: center;">Kothrud,</p>
<p style="text-align: center;">Pune &#8211; 411038.</p>

		</div> 

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
       
          <legend>Contact us</legend>
                         
<p>Your Name  <br /><br />
    <span class="wpcf7-form-control-wrap your-name">    <asp:TextBox ID="name" runat="server" placeholder="Name" CssClass="form-control"></asp:TextBox>
                          </span> </p>
<p>Your Email <br /><br />
    <span class="wpcf7-form-control-wrap your-email"> 
           <asp:TextBox ID="cont" runat="server" placeholder="E-mail" CssClass="form-control"></asp:TextBox>
                        </span> </p>
          <p>Message<br /><br />
    <span class="wpcf7-form-control-wrap your-message">              <asp:TextBox ID="message" runat="server" placeholder="Type message here" CssClass="form-control" TextMode="MultiLine" Columns="80" Rows="5"> </asp:TextBox>
                            
                              </span> </p><p>
  
           
     </fieldset>
        <asp:Button ID="Button1" BackColor="#f25f34"  class=" btn btn-defaultrunat" runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="v2" Style="width:30%;margin-left:35%;" />  
 <br /> <asp:Label ID="Label1" runat="server" Text="" CssClass="text-success"></asp:Label>
 
</form>
    

</asp:Content>

