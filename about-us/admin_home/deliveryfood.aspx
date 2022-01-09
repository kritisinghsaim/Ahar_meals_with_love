<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/admin_home/aMasterPage.master" AutoEventWireup="true" CodeFile="deliveryfood.aspx.cs" Inherits="about_us_admin_home_deliveryfood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Food Delivery </h3>
							</div>
							<div class="module-body">


                                
									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<asp:Label ID="plbl" runat="server" Text="Food Delivery"></asp:Label><br /><br />
									</div>



									<br />

									<form id="Form1" class="form-horizontal row-fluid" runat="server">
                                        

                              <div class="control-group">
                                               <asp:Label ID="lblupic" class="control-label" runat="server">Food Deliver ID</asp:Label>
                                            
                                            <div class="controls">
                                                <asp:TextBox ID="txtupic" runat="server" ></asp:TextBox>
                                                <asp:Button ID="btnuserpic" runat="server" Text="Show" OnClick="userpic_Click"  />

                                            </div>
                                        </div>
<div class="col-md-12">
                <asp:Panel ID="pnluser" runat="server" Visible="false">
                <table class="table">
                    <tr>
                        <td><b>Address:</b></td>
                        <td>
                            <asp:Label ID="lblaadd" runat="server"></asp:Label>
                        </td>
                        
                  
                         <td><b> Area's Category :</b></td>
                        <td>
                            <asp:Label ID="lblacat" runat="server"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td><b>Type of People</b></td>
                        <td>
                            <asp:Label ID="lblatype" runat="server"></asp:Label>
                        </td>
                          <td><b>No of people :</b></td>
                        <td>
                            <asp:Label ID="lblapeo" runat="server"></asp:Label>
                        </td>
                        
                    </tr>
                </table>
                    </asp:Panel>
            </div>

                                        
                                        


<div class="control-group">
                                               <asp:Label ID="lblvol" class="control-label" runat="server" Visible="false">Volinteer ID</asp:Label>
                                            
                                            <div class="controls">
                                                <asp:TextBox ID="txtvol" runat="server" Visible="false"></asp:TextBox>
                                                <asp:Button ID="btnvol" runat="server" Visible="false" Text="Show" OnClick="vol_Click"  />

                                            </div>
                                        </div>
<div class="col-md-12">
                <asp:Panel ID="Pnbvoli" runat="server" Visible="false">
                <table class="table">
                    <tr>
                        <td><b> Name :</b></td>
                        <td>
                            <asp:Label ID="lblvname" runat="server"></asp:Label>
                        </td>
                         <td><b>Gender :</b></td>
                        <td>
                            <asp:Label ID="lblgen" runat="server"></asp:Label>
                        </td>
                    </tr>
                   
                
                    <tr>
                        <td><b>Email</b></td>
                        <td>
                            <asp:Label ID="lblvemail" runat="server"></asp:Label>
                        </td>
                         <td><b>Contact :</b></td>
                        <td>
                            <asp:Label ID="lblcon" runat="server"></asp:Label>
                        </td>
                   
                        </tr>
                      <tr>
                        <td><b>Status</b></td>
                        <td>
                <asp:DropDownList ID="volstat" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="volstat_SelectedIndexChanged">
                                                    <asp:ListItem>Unavailable</asp:ListItem>
                                                    <asp:ListItem>Available</asp:ListItem>
                                                    <asp:ListItem>Busy</asp:ListItem>
                                                </asp:DropDownList>        </td>
                          </tr>
                </table>
                    </asp:Panel>
            </div>
<div class="control-group">
                                               <asp:Label ID="lblvahi" class="control-label" runat="server" Visible="false">Vahicle ID </asp:Label>
                                            
                                            <div class="controls">
                                                <asp:TextBox ID="txtvahi" runat="server" Visible="false"></asp:TextBox>
                                                <asp:Button ID="btnvahi" runat="server" Visible="false" Text="Show" OnClick="vehi_Click"  />

                                            </div>
                                        </div>

	                            <div class="col-md-12">
                <asp:Panel ID="Pnbvehi" runat="server" Visible="false">
                <table class="table">
                    <tr>
                        <td><b>Owner Name :</b></td>
                        <td>
                            <asp:Label ID="lblown" runat="server"></asp:Label>
                        </td>
                         <td><b>Vehicle No:</b></td>
                        <td>
                            <asp:Label ID="lblvno" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                         <td><b>Contact no:</b></td>
                        <td>
                            <asp:Label ID="lblvconac" runat="server"></asp:Label>
                        </td>
                        <td><b>Email</b></td>
                        <td>
                            <asp:Label ID="lblvehemail" runat="server"></asp:Label>
                        </td>
                    </tr>
                   
                </table>
                    </asp:Panel>
            </div>
                                                <br />
                                        <div class="control-group"> 
                                            <div class="controls">
                                          <asp:Button ID="Button1" runat="server" Text="Submit" Visible="false" CssClass="btn-large" style="margin-left:5%"  Width="150" OnClick="Button1_Click"  />
                                </div>
                    </div>
                                 
                                        </form>




							</div>
						</div>

						
						
					</div><!--/.content-->
				</div><!--/.span9-->



</asp:Content>