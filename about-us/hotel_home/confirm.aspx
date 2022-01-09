<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/hotel_home/uMasterPage.master" AutoEventWireup="true" CodeFile="confirm.aspx.cs" Inherits="about_us_hotel_home_confirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                				<div class="span9">
					<div class="content">

						<div class="module">
                            
							
                                 <div class="module-head">
								<h3>Review Profile</h3>
							</div>
							<div class="module-body">

                                <div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<asp:Label ID="Label9" runat="server" Text="Please confirm details!"></asp:Label><br /><br />
									</div>

                        <div class="container form-horizontal row-fluid">

                            <div class="control-group">
                              <asp:Image ID="uimg" runat="server"  Width="150" Height="200" />
                            </div>

                            <div class="control-group">
                                <div class="control-label">
                                    <asp:Label ID="Label1" runat="server" Text="Hotel Name" CssClass="control-label"></asp:Label>
                                    </div>
                                    <div class="controls">
                            <asp:Label ID="uname" runat="server" Text="User Name" CssClass="control-label"></asp:Label>
                               </div>     
                                    
                             </div>

                            <div class="control-group">
                                <div class="control-label">
                                  <asp:Label ID="Label2" runat="server" Text="Manager" CssClass="control-label"></asp:Label>
                                    </div>
                                <div class="controls">
                                <asp:Label ID="uman" runat="server" Text="Manager" CssClass="control-label"></asp:Label>
                            </div>
                            </div>

                            

                            <div class="control-group">
                                <div class="control-label">
                                    <asp:Label ID="Label4" runat="server" Text="Email" CssClass="control-label"></asp:Label>
                                   </div> 
                                <div class="controls">
                                <asp:Label ID="umail" runat="server" Text="Email" CssClass="control-label"></asp:Label>
                            </div>
                            </div>

                            <div class="control-group">
                                <div class="control-label">
                                    <asp:Label ID="Label5" runat="server" Text="Phone Number" CssClass="control-label"></asp:Label>
                                    </div>
                                <div class="controls">
                                <asp:Label ID="uphone" runat="server" Text="Phone Number" CssClass="control-label"></asp:Label>
                            </div>
                            </div>

                            


                            <div class="control-group">
                                <div class="control-label">
                                    <asp:Label ID="Label7" runat="server" Text="Address" CssClass="control-label"></asp:Label>
                                    </div>
                                <div class="controls">
                                <asp:Label ID="uaddress" runat="server" Text="Address" CssClass="control-label"></asp:Label>
                            </div>
                            </div>

                            <div class="control-group">
                                <div class="control-label">
                                    <asp:Label ID="Label8" runat="server" Text="Area Code" CssClass="control-label"></asp:Label>
                                    </div>
                                <div class="controls">
                                <asp:Label ID="uarea" runat="server" Text="Area Code" CssClass="control-label"></asp:Label>
                            </div>
                            </div>


                            

                            </div>
                                </div><!--module body-->
                            
                                 
                        <div class="module-body">
                            <div class="container form-horizontal row-fluid">
                                <form runat="server">
                                                    <div class="control-group">
											<div class="controls">
												<asp:Button ID="btncon" CssClass="btn-large" runat="server" Text="Confirm" OnClick="btncon_Click" />


                                                <asp:Button ID="btncan" CssClass="btn-large btn-danger" runat="server" Text="Cancel" OnClick="btncan_Click" />
											</div>
                                            
										</div>
                                </form>

                        </div>
                            </div>
                        
                        </div><!--module-->
                        </div><!--content-->
                                </div><!--span9-->



</asp:Content>

