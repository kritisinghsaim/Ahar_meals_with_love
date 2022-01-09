<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/MasterPage.master" AutoEventWireup="true" CodeFile="sharebirthday.aspx.cs" Inherits="about_us_sharebirthday" %>

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
  
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
  
    <script>
        $(function () {
            $("#head_txtdob").datepicker({
                changeMonth: true, changeYear: true, dateFormat: 'dd/mm/yy' , yearRange: "-90:+00"
            });
        });
  </script>   
    <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>

<section class='container-wrap main-title alternate-color  main-right-breadcrumb border-bottom'><div class='container'><h1 class="page-title">Your Details</h1><div class='breadcrumb-extra'><p class="page-info"><em class="muted">Call us on</em> &nbsp;&nbsp;<i class="icon-phone"></i> +91 80923 08696 &nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-mail-alt"></i> ahar.in@gmail.com</p></div></div></section>

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
    
         <p>Date of Birth/Aniversary <br />
  
         <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtdob" runat="server" ErrorMessage="Please enter dob" ValidationGroup="vl"></asp:RequiredFieldValidator>    
         <br />


         <p>Address<br />
    <span class="wpcf7-form-control-wrap your-message">              <asp:TextBox ID="txtadd" runat="server" placeholder="Address" CssClass="form-control" TextMode="MultiLine" Columns="80" Rows="2"> </asp:TextBox>
                            
                              </span> </p><p>
  
           
     </fieldset>
        <asp:Button ID="Button1" BackColor="#f25f34"  class=" btn btn-defaultrunat" runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="v2" Style="width:30%;margin-left:35%;" />  
 <br />
</form>

    

		
<section class="container-wrap  main-color "  style="padding-top:20px;padding-bottom:40px" >
    	<h2 style="text-align: center; font-weight: bold; font-family: cursive;">Happy&nbsp;Moments</h2>
    <div class="section-container container"><div class="vc_row vc_row-fluid row"><div class="wpb_column vc_column_container vc_col-sm-3"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_single_image wpb_content_element vc_align_left">
			<h2 class="wpb_heading wpb_singleimage_heading">Happy Birthday</h2>
			<figure class="wpb_wrapper vc_figure">
			    <a rel="prettyPhoto[rel-11413-2103497971]" href="img/a10.jfif" target="_self" class="vc_single_image-wrapper vc_box_border  vc_box_border_sandy_brown prettyphoto"><img class="vc_single_image-img " src="img/a10.jfif" width="300" height="300" alt="Happy BirthDay" title="Share day - Apr 29, 2017" /></a>
            </figure>
	</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-3"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_single_image wpb_content_element vc_align_left">
			<h2 class="wpb_heading wpb_singleimage_heading">Feb 15, 2017</h2>
			<figure class="wpb_wrapper vc_figure">
			    <a rel="prettyPhoto[rel-11413-541523172]" href="img/a2.png" target="_self" class="vc_single_image-wrapper vc_box_border  vc_box_border_sandy_brown prettyphoto"><img class="vc_single_image-img " src="img/a2.png" width="300" height="300" alt="Happy BirthDay" title="Share day - Feb 15, 2017" /></a>
            </figure>
	</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-3"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_single_image wpb_content_element vc_align_left">
			<h2 class="wpb_heading wpb_singleimage_heading">Happy BirthDay</h2>
			<figure class="wpb_wrapper vc_figure">
			    <a rel="prettyPhoto[rel-11413-1088973728]" href="img/a3.png" target="_self" class="vc_single_image-wrapper vc_box_border  vc_box_border_sandy_brown prettyphoto"><img class="vc_single_image-img " src="img/a3.png" width="300" height="300" alt="Happy BirthDay" title="Sahana" /></a>
            </figure>
	</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-3"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_single_image wpb_content_element vc_align_left">
			<h2 class="wpb_heading wpb_singleimage_heading">Happy Wedding Anniversary</h2>
			<figure class="wpb_wrapper vc_figure">
			    <a rel="prettyPhoto[rel-11413-319815184]" href="img/a4.png" target="_self" class="vc_single_image-wrapper vc_box_border  vc_box_border_sandy_brown prettyphoto"><img width="300" height="300" src="img/a4.png" class="vc_single_image-img attachment-medium"  sizes="(max-width: 300px) 100vw, 300px" /></a>
            </figure>
	</div>
</div></div></div></div></div></section>
</asp:Content>

