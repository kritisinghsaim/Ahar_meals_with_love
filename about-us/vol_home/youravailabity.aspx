<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/vol_home/uMasterPage.master" AutoEventWireup="true" CodeFile="youravailabity.aspx.cs" Inherits="about_us_vol_home_youravailabity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <link href="../JUI/jquery-ui.css" rel="stylesheet" />
    <script  src="../JUI/jquery.min.js"></script>
    <script  src="../JUI/jquery-ui.min.js"></script>
   


    <div ID="mainform" runat="server" Visible="true">
    				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Your Availabity</h3>
							</div>
							<div class="module-body">

<%--									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<strong>Warning!</strong> Something fishy here!
									</div>--%>
                                
									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<asp:Label ID="lbl" runat="server" Text="Please Change your  Availablity status "></asp:Label><br /><br />
									</div>
<%--									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<strong>Well done!</strong> Now you are listening me :) 
									</div>--%>

									<br />

									<form id="uform" class="form-horizontal row-fluid" runat="server">
					<div class="control-group">
											<label class="control-label" for="basicinput">Availablity Status</label>
											<div class="controls">
												<asp:DropDownList ID="avail" CssClass="form-control" runat="server">
                                                    <asp:ListItem Text="unavilable" />
                                                    <asp:ListItem Text="available" />
                                                    <asp:ListItem Text="busy" />
                                                </asp:DropDownList>
											</div>
										</div>
                                       <div class="control-group">
											<div class="controls">
											<asp:Button ID="btn" CssClass="btn-large" runat="server" Text="Update" OnClick="btn_Click" />
											</div>
										</div>
                                      </form>
                               </div>
                            </div>
                        </div>
                        </div>
        </div>
    
</asp:Content>

