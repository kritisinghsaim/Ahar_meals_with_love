<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/admin_home/aMasterPage.master" AutoEventWireup="true" CodeFile="addaharspot.aspx.cs" Inherits="about_us_admin_home_addaharspot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Addahar Spot</h3>
							</div>
							<div class="module-body">


                                
									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<asp:Label ID="plbl" runat="server" Text="Ahar Spot Details"></asp:Label><br /><br />
									</div>



									<br />

	<form id="Form1" class="form-horizontal row-fluid" runat="server">
                                      <div class="control-group">
                                               <asp:Label ID="lblx" class="control-label" runat="server" Visible="true"> Area's Category</asp:Label>
                                            
                                            <div class="controls">
                          <asp:DropDownList ID="Cateogry" CssClass="form-control" runat="server">
                                                    <asp:ListItem Text="Urban" />
                                                    <asp:ListItem Text="Rural" />
                                                    <asp:ListItem Text="Others" />
                                                </asp:DropDownList>
										
       
                       
                                                </div>
                                          </div>
                               <div class="control-group">
                                               <asp:Label ID="Label1" class="control-label" runat="server" Visible="true">Type of People</asp:Label>
                                            
                                            <div class="controls">
                              <asp:DropDownList ID="type" CssClass="form-control" runat="server">
                                                    <asp:ListItem Text="Economically Backward Slums" />
                                                    <asp:ListItem Text="Orphanages" />
                                                    <asp:ListItem Text="Old age homes" />
                                                    <asp:ListItem Text="Homeless People" />
                                                    <asp:ListItem Text="Shelter Homes" />
                                                 
                                  <asp:ListItem Text="Others" />
                                              
                                  
                              </asp:DropDownList>
						
                                                </div>
                                   </div>
      <div class="control-group">
                                               <asp:Label ID="Label2" class="control-label" runat="server" Visible="true">Address</asp:Label>
                                            
                                            <div class="controls">
                             <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Address."></asp:TextBox>
                            </div>
                      </div>
              <div class="control-group">
                                               <asp:Label ID="Label3" class="control-label" runat="server" Visible="true">No of People</asp:Label>
                                            
                                            <div class="controls">
                                              
        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter no of people" ></asp:TextBox>
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
