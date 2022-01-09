<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/admin_home/aMasterPage.master" AutoEventWireup="true" CodeFile="hotelentry.aspx.cs" Inherits="about_us_admin_home_hotelentry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Hotel Entry </h3>
							</div>
							<div class="module-body">


                                
									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<asp:Label ID="plbl" runat="server" Text=" Hotel Entry "></asp:Label><br /><br />
									</div>



									<br />

	<form id="Form1" class="form-horizontal row-fluid" runat="server">
                                      <div class="control-group">
                                               <asp:Label ID="lblupic" class="control-label" runat="server" Visible="true">Hotel ID</asp:Label>
                                            
                                            <div class="controls">
                          
       
                                <asp:TextBox ID="TextBox1"  runat="server" class="form-control" placeholder="Enter Hotel ID" ></asp:TextBox>
                           </div>
                                          </div>
                               <div class="control-group">
                                               <asp:Label ID="Label1" class="control-label" runat="server" Visible="true">Hotel's Name</asp:Label>
                                            
                                            <div class="controls">
                          
                                 <asp:TextBox ID="TextBox2"  runat="server" class="form-control" placeholder="Enter Hotel's Name" ></asp:TextBox>
                          </div>
                                   </div>
      <div class="control-group">
                                               <asp:Label ID="Label2" class="control-label" runat="server" Visible="true">Contact number</asp:Label>
                                            
                                            <div class="controls">
                             <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Enter phone no."></asp:TextBox>
                            </div>
                      </div>
              <div class="control-group">
                                               <asp:Label ID="Label3" class="control-label" runat="server" Visible="true">fssai</asp:Label>
                                            
                                            <div class="controls">
                                              
        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter fssai no" ></asp:TextBox>
                         </div>
                       </div>
              
              <div class="control-group">
                                               <asp:Label ID="Label5" class="control-label" runat="server" Visible="true">Email</asp:Label>
                                            
                                            <div class="controls">
                          

                                 <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Enter  email">
                          </asp:TextBox><asp:RegularExpressionValidator id="RegularExpressionValidator1" ControlToValidate="TextBox6" Text="Invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Runat="server"   ValidationGroup="Group1"  style="color: #FF0000" /> 
                         </div>
                  </div>
  
                  <div class="control-group">
                                               <asp:Label ID="lblpass" class="control-label" runat="server" Visible="true">Password</asp:Label>
                                            
                                            <div class="controls">
                             <asp:TextBox ID="txtpass" runat="server"  class="form-control" TextMode="Password" placeholder="Enter Password."></asp:TextBox>
                            </div>
                      </div> 
                     
                  <div class="control-group"> 
                                            <div class="controls">
                                          <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn-large" style="margin-left:5%"  Width="150" OnClick="Button1_Click"  />
                                </div>
                    </div>  
                   </form>
                                   </div>      
                </div>
          </div>
       
            </div>

</asp:Content>

