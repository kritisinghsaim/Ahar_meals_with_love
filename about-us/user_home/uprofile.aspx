﻿<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/user_home/uMasterPage.master" AutoEventWireup="true" CodeFile="uprofile.aspx.cs" Inherits="about_us_user_home_uprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link href="../JUI/jquery-ui.css" rel="stylesheet" />
    <script  src="../JUI/jquery.min.js"></script>
    <script  src="../JUI/jquery-ui.min.js"></script>
   


    <script>
        $(document).ready(function () {
            $("#ContentPlaceHolder1_dob").datepicker({ changeMonth: true, changeYear: true, dateFormat: 'dd/mm/yy', yearRange: "-90:+00" });

        });
    </script>

    <div ID="mainform" runat="server" Visible="true">
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
										<asp:Label ID="Label1" runat="server" Text="Please complete your profile to avail services"></asp:Label><br /><br />
									</div>
<%--									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<strong>Well done!</strong> Now you are listening me :) 
									</div>--%>

									<br />

									<form id="uform" class="form-horizontal row-fluid" runat="server">
										<div class="control-group">
											<label class="control-label" for="basicinput">Name</label>
											<div class="controls">
												
												<%--<span class="help-inline">Minimum 5 Characters</span>--%>
                                                <asp:TextBox ID="name"  runat="server"></asp:TextBox>
											</div>
										</div>

                                        <div class="control-group">
											<label class="control-label">Gender</label>
											<div class="controls"><br />
												<asp:RadioButtonList ID="gender" runat="server" CssClass="radio">
                                                    <asp:ListItem> Male</asp:ListItem>
                                                    <asp:ListItem> Female</asp:ListItem>
                                                </asp:RadioButtonList>
											</div>
										</div>

                                        <div class="control-group">
											<label class="control-label" for="basicinput">DOB</label>
											<div class="controls">
												
                                                <asp:TextBox ID="dob" runat="server"></asp:TextBox>
											</div>
										</div>

                                        <div class="control-group">
											<label class="control-label" for="basicinput">Phone Number</label>
											<div class="controls">
												
                                                <asp:TextBox ID="phone"  runat="server"></asp:TextBox>
											</div>
										</div>

                                        <div class="control-group">
											<label class="control-label" for="basicinput">E-mail</label>
											<div class="controls">
												
                                                <asp:TextBox ID="mail"  runat="server"></asp:TextBox>
											</div>
										</div>

                                        <div class="control-group">
											<label class="control-label" for="basicinput">Address</label>
											<div class="controls">
												
                                                <asp:TextBox ID="address"  runat="server"></asp:TextBox>
											</div>
										</div>

                                        <div class="control-group">
											<label class="control-label" for="basicinput">Aadhar</label>
											<div class="controls">
												
                                                <asp:TextBox ID="aadhar"  runat="server"></asp:TextBox>
											</div>
										</div>

										
<%--										<div class="control-group">
											<label class="control-label" for="basicinput">Dropdown Button</label>
											<div class="controls">
												<div class="dropdown">
													<a class="dropdown-toggle btn" data-toggle="dropdown" href="#">Dropdown Button <i class="icon-caret-down"></i></a>
													<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
														<li><a href="#">First Row</a></li>
														<li><a href="#">Second Row</a></li>
														<li><a href="#">Third Row</a></li>
														<li><a href="#">Fourth Row</a></li>
													</ul>
												</div>
											</div>
										</div>--%>

										<div class="control-group">
											<label class="control-label" for="basicinput">Area Code</label>
											<div class="controls">
												<asp:DropDownList ID="areacode" CssClass="form-control" runat="server">
                                                    <asp:ListItem Text="110" />
                                                    <asp:ListItem Text="112" />
                                                    <asp:ListItem Text="114" />
                                                </asp:DropDownList>
											</div>
										</div>


                                        <div class="control-group">
                                        <label class="control-label" for="basicinput">Profile Image</label>
                                            <div class="controls">
                                                <%--<asp:FileUpload ID="userimg" runat="server" />--%>
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                                
                                                </div>
                                                <div class="controls">
                                                <%--<asp:Image ID="img1" runat="server" Height="200" Width="150" />--%>
                                                 </div>
                                           
                                        </div>






										

										<div class="control-group">
											<div class="controls">
											<asp:Button ID="btn" CssClass="btn-large" runat="server" Text="Submit Form" OnClick="btn_Click" />
											</div>
										</div>
									</form>
							</div>
						</div>

						
						
					</div><!--/.content-->
				</div><!--/.span9-->


    </div>







</asp:Content>

