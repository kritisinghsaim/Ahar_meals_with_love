<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="about_us_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="css/StyleSheet2.css" />
      <div id="main"> 
       
    <section class='container-wrap main-title alternate-color  main-right-breadcrumb border-bottom'><div class='container'><h1 class="page-title">Admin login</h1><div class='breadcrumb-extra'><p class="page-info"><em class="muted">Call us on</em> &nbsp;&nbsp;<i class="icon-phone"></i> +91 80923 08696 &nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-mail-alt"></i> ahar.in@gmail.com</p></div></div></section>
 <img src="img/blog-details-img4.jpg" height="1240" width="1350"/>
 



          <div class="loginBox">
     <img src="img/t1.png" class="user"/>
     <h2> Admin Login</h2>
<form runat="server">

  
                           
                                 
      
                                <div class="row">
                                      <p>Admin ID</ <br /><br />
  
                                        <asp:TextBox ID="aid" runat="server" CssClass="form-control" placeholder="Enter ID"></asp:TextBox>
                                    </div>
                               
                            
                                <div class="row">
                                    
                                        <p>Password</p>
                                        <asp:TextBox ID="txtpassword" textmode="Password" runat="server" CssClass="form-control" placeholder="Enter password"></asp:TextBox>
                                   
                                    </div>
                               
   
                               
                                <div class="row">                          


                                   <button id="Button1" class="btn btn-default" type="submit" runat="server" onserverclick="btnlogin_Click" >Log In</button>  
                           
                                  </div> 
                            
   
                           <div class="row">
                                <asp:Label ID="msglbl" runat="server" Text=""></asp:Label>
                            </div>                      
   
                             
                           

        
    
    </form>
   </div></div>
</asp:Content>

