<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/MasterPage.master" AutoEventWireup="true" CodeFile="volsignup.aspx.cs" Inherits="about_us_volsignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="css/StyleSheet.css" />
       <div id="main">
         <section class='container-wrap main-title alternate-color  main-right-breadcrumb border-bottom'><div class='container'><h1 class="page-title">Volunteer Signup</h1><div class='breadcrumb-extra'><p class="page-info"><em class="muted">Call us on</em> &nbsp;&nbsp;<i class="icon-phone"></i> +91 80923 08696 &nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-mail-alt"></i> ahar.in@gmail.com</p></div></div></section>
      <img src="img/cont.jpg" height="100" width="1400" />
 
  <div class="loginBox">
      <h2> Volunteer sign up</h2>
<form runat="server"  >

<p>Your Email <br />
        <asp:TextBox ID="email" runat="server" placeholder="Email" ></asp:TextBox> </p>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3"  ControlToValidate="email" runat="server" ErrorMessage="please enter your email" ValidationGroup="v1"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ErrorMessage="Invalid Email ID" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="v4"></asp:RegularExpressionValidator>
  <div class="row ">
           
            <asp:Label ID="otplbl" runat="server" Visible="true"><strong>OTP:</strong></asp:Label>
            <asp:TextBox ID="otp" runat="server" CssClass="form-control" Visible="true"></asp:TextBox>
            
        </div>
    
   
       <asp:Button ID="regbtn" runat="server" Text="Send OTP" CssClass="btn-default" Visible="true" OnClick="regbtn_Click" />
    <asp:Button ID="Button1" runat="server" Text="Register" Visible="true" CssClass="btn-default" OnClick="Button1_Click" />
    <asp:Label ID="lblmsg" runat="server"></asp:Label><br />
    <asp:Label ID="lblmsg2" runat="server"></asp:Label>
                            

    <br /><a href="vollogin.aspx" class="forget"  >  <h5> Already register !</h5> </a>
    </form>
   </div></div>
</asp:Content>

