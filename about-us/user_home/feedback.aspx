<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/user_home/uMasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="about_us_user_home_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Feedback/Complaint Form</h3>
							</div>
							<div class="module-body">


                                
									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<asp:Label ID="Label1" runat="server" Text="If you are facing any issues in any of our services or website please fill up the form and provide details. Our representative will get back to you."></asp:Label><br /><br />
									</div>
								

									<br />

									<form id="Form1" class="form-horizontal row-fluid" runat="server">
										
                                        <div class="control-group">
											<label class="control-label" for="basicinput">Select Reason</label>
											<div class="controls">
												<asp:DropDownList ID="reason" CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="reason_SelectedIndexChanged">
                                                    <%--<asp:ListItem Text="Feedback" />
                                                    <asp:ListItem Text="Suggestion" />
                                                    <asp:ListItem Text="Complaint" />--%>
                                                </asp:DropDownList>
											</div>
										</div>


                                        <div class="control-group">
											<label class="control-label" for="basicinput">Complain For</label>
											<div class="controls">
												<asp:DropDownList ID="complain" CssClass="form-control" runat="server">
                                                    <asp:ListItem Text="None(if Suggestion or Feedback)" />
                                                    <asp:ListItem Text="Pickup" />
                                                    <asp:ListItem Text=" Food Request" />
                                                    <asp:ListItem Text="Others" />
                                                    
                                                </asp:DropDownList>
											</div>
										</div>
                                        
                                     
                                        
                                        <div class="control-group">
											<label class="control-label" for="basicinput">Details</label>
											<div class="controls">
												
												
                                                <asp:TextBox ID="detail"  runat="server" TextMode="MultiLine" Columns="50" Rows="5"></asp:TextBox>
											</div>
										</div>

                                 	

										<div class="control-group">
											<div class="controls">
												<asp:Button ID="btn" CssClass="btn-large" runat="server" Text="Submit" OnClick="btn_Click"  />
											</div>
										</div>
									</form>
							</div>
						</div>

						
						
					</div><!--/.content-->
				</div><!--/.span9-->




</asp:Content>

