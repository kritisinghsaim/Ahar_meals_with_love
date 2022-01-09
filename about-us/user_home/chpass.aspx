<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/user_home/uMasterPage.master" AutoEventWireup="true" CodeFile="chpass.aspx.cs" Inherits="about_us_user_home_chpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>User Profile</h3>
							</div>
							<div class="module-body">

<%--									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<strong>Warning!</strong> Something fishy here!
									</div>--%>
                                
									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<asp:Label ID="plbl" runat="server" Text="Create/Update Password"></asp:Label><br /><br />
									</div>
<%--									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<strong>Well done!</strong> Now you are listening me :) 
									</div>--%>

									<br />

									<form id="Form1" class="form-horizontal row-fluid" runat="server">
									
                                        <div class="control-group">
								
                                            <asp:Label ID="oldpl" runat="server" Text="Old Password" CssClass="control-label" Visible="false"></asp:Label>
                                            <div class="controls">
												
                                                <asp:TextBox ID="oldpass" textmode="Password" CssClass="form-control" runat="server" Visible="false"></asp:TextBox>
											</div>
										</div>
                                        
                                        	                                                                                                                                                                                                                                            															

									<div class="control-group">
											<label class="control-label" for="basicinput">Password</label>
											<div class="controls">
												
                                                <asp:TextBox ID="password" textmode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                                                 <br />
                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password mismatch!" ControlToValidate="cpassword" ControlToCompare="password" ValidationGroup="vl"></asp:CompareValidator>
                                 
											</div>
										</div>	
                                       
                                        <div class="control-group">
											<label class="control-label" for="basicinput">Confirm Password</label>
											<div class="controls">
												
                              
                                                <asp:TextBox ID="cpassword" textmode="Password" CssClass="form-control" runat="server"></asp:TextBox>
											</div>
										</div>	

										

										<div class="control-group">
											<div class="controls">
												<asp:Button ID="pbtn" CssClass="btn" runat="server" Text="Submit"  OnClick="pbtn_Click"/>
											</div>
										</div>
									</form>
							</div>
						</div>

						
						
					</div><!--/.content-->
				</div><!--/.span9-->



</asp:Content>

