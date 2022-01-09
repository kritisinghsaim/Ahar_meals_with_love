<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/MasterPage.master" AutoEventWireup="true" CodeFile="forgot.aspx.cs" Inherits="about_us_forgot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



      
    
    
      <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="css/StyleSheet.css" />
       <div id="main">
         <section class='container-wrap main-title alternate-color  main-right-breadcrumb border-bottom'><div class='container'><h1 class="page-title">Forgot Password</h1><div class='breadcrumb-extra'><p class="page-info"><em class="muted">Call us on</em> &nbsp;&nbsp;<i class="icon-phone"></i> +91 80923 08696 &nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-mail-alt"></i> ahar.in@gmail.com</p></div></div></section>
<img src="img/cont.jpg" height="100" width="1350" />
  <div class="loginBox">
      <h2>Forgot Password</h2>
<form runat="server"  >

<p>Your Email <br />
        <asp:TextBox ID="txtemail" runat="server" placeholder="Email" ></asp:TextBox> </p>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3"  ControlToValidate="txtemail" runat="server" ErrorMessage="please enter your email" ValidationGroup="v1"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ErrorMessage="Invalid Email ID" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="v4"></asp:RegularExpressionValidator>
  <div class="row ">
           
            <asp:Label ID="otplbl" runat="server" Visible="false"><strong>OTP:</strong></asp:Label>
            <asp:TextBox ID="otp" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
            
        </div>
    
   
       <asp:Button ID="btnlogin" runat="server" Text="Send OTP" CssClass="btn-default" Visible="true" OnClick="btnlogin_Click" />
    <asp:Button ID="btnotp" runat="server" Text="Submit " Visible="false" CssClass="btn-default" OnClick="btnotp_ServerClick" />
    <asp:Label ID="msglbl" runat="server"></asp:Label><br />
</form></div>
</asp:Content>

