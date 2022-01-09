<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/admin_home/aMasterPage.master" AutoEventWireup="true" CodeFile="sendmail.aspx.cs" Inherits="about_us_admin_home_sendmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                        				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Revert</h3>
							</div>
							<div class="module-body">

									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
                                        <asp:Label ID="Label1" runat="server" Text="Sending Mail"></asp:Label>
									</div>
                                
<%--									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<asp:Label ID="plbl" runat="server" Text="Response to Feedback/Complaint"></asp:Label><br /><br />
									</div>--%>
<%--									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<strong>Well done!</strong> Now you are listening me :) 
									</div>--%>

									<br />

									<form id="Form1" class="form-horizontal row-fluid" runat="server">

	                                   <div class="control-group">
                                           <label class="control-label">Mail To :</label> <asp:Label ID="recepient" CssClass="controls" ForeColor="CornflowerBlue" runat="server" Text="mail@mail"></asp:Label>
                                           </div>

                                        <div class="control-group">
                                           <label class="control-label">Message </label> 
                                            <asp:TextBox ID="msg" runat="server" TextMode="MultiLine" Rows="8" Columns="15" CssClass="controls" Text="" ></asp:TextBox>
                                           </div>


                                        <div class="control-group">
                                            <div class="controls">

                                                <asp:Button ID="sm" CssClass="btn-large" runat="server" Text="Send Mail" OnClick="sm_Click" />
                                            </div>
                                            

                                        </div>

									</form>




							</div>
						</div>

						
						
					</div><!--/.content-->
				</div><!--/.span9-->




</asp:Content>

