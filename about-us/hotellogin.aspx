<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/MasterPage.master" AutoEventWireup="true" CodeFile="hotellogin.aspx.cs" Inherits="about_us_hotellogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
         <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="css/StyleSheet2.css" />
      <div id="main"> 
       
    <section class='container-wrap main-title alternate-color  main-right-breadcrumb border-bottom'><div class='container'><h1 class="page-title">hotel login</h1><div class='breadcrumb-extra'><p class="page-info"><em class="muted">Call us on</em> &nbsp;&nbsp;<i class="icon-phone"></i> +91 80923 08696 &nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-mail-alt"></i> ahar.in@gmail.com</p></div></div></section>
 <img src="img/blog-details-img4.jpg" height="1240" width="1400"/>
 



          <div class="loginBox">
     <img src="img/t1.png" class="user"/>
     <h2>Hotel Login</h2>
<form runat="server">

  
                           
                                 
                            
   
                             
                           

        
    <p>Hotel ID <br /><br />
       <asp:TextBox ID="txtemail" runat="server" placeholder="Email"  value="" size="40"  ></asp:TextBox></p>
              <p>Password<br /><br />
   <asp:TextBox ID="txtpassword" runat="server" placeholder="Your Password" TextMode="Password" ></asp:TextBox> </p><p>
                                        <button class="btn btn-default" type="submit" runat="server" onserverclick="btnlogin_Click" >Log In</button>  
                           
                                 
                            
   
                                <asp:Label ID="msglbl" runat="server" Text=""></asp:Label>
                           


    </form>
   </div></div>
</asp:Content>