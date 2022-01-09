<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/admin_home/aMasterPage.master" AutoEventWireup="true" CodeFile="postinfo.aspx.cs" Inherits="about_us_admin_home_postinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Post Information</h3>
							</div>
							<div class="module-body">


                                
								

									<br />

									<form id="Form1" class="form-horizontal row-fluid" runat="server">

                                        <div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<asp:Label ID="Label1" runat="server" Text="Information"></asp:Label><br /><br />
									</div>


										<div class="control-group">
											<label class="control-label" for="basicinput">Subject</label>
											<div class="controls">
												
												<%--<span class="help-inline">Minimum 5 Characters</span>--%>
                                                <asp:TextBox ID="subject"  runat="server"></asp:TextBox>
											</div>
										</div>

                                        <div class="control-group">
											<label class="control-label" for="basicinput">Description</label>
											<div class="controls">
												
                                                <asp:TextBox ID="description" TextMode="MultiLine" Columns="50" Rows="5"  runat="server"></asp:TextBox>
											</div>
										</div>

                                        <div class="control-group">
											<label class="control-label" for="basicinput">Link(if any)</label>
											<div class="controls">
												
                                                <asp:TextBox ID="link"  runat="server"></asp:TextBox>
											</div>
										</div>

                                  		

										<div class="control-group">
											<div class="controls">
												<asp:Button ID="btn" CssClass="btn-large" runat="server" Text="Submit Form" OnClick="btn_Click"  />
											</div>
										</div>
									</form>
							</div>
						</div>

						
						
					</div><!--/.content-->
				</div><!--/.span9-->











</asp:Content>

