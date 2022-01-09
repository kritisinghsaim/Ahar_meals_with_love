<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/user_home/uMasterPage.master" AutoEventWireup="true" CodeFile="feedstat.aspx.cs" Inherits="about_us_user_home_feedstat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Check Complaint Status</h3>
							</div>
							<div class="module-body">

<%--									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<strong>Warning!</strong> Something fishy here!
									</div>--%>
                                
									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<asp:Label ID="plbl" runat="server" Text="Enter Ticket Number to check Complaint Status"></asp:Label><br /><br />
									</div>
<%--									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<strong>Well done!</strong> Now you are listening me :) 
									</div>--%>

									<br />

									<form id="Form1" class="form-horizontal row-fluid" runat="server">
									
                                        <div class="control-group">
								
                                            <label class="control-label">Enter Ticket#</label>
                                            <div class="controls">												
                                                <asp:TextBox ID="ticket"  CssClass="form-control" runat="server"></asp:TextBox>
											</div>
										</div>
                                        
                                 
										<div class="control-group">
											<div class="controls">
												<asp:Button ID="fbtn" CssClass="btn" runat="server" Text="Submit"  OnClick="fbtn_Click"/>
											</div>
										</div>

                                        <div class="control-group">
                                <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
                                    <Columns>
                                        <asp:BoundField DataField="Ticket" HeaderText="Ticket" SortExpression="Ticket" />
                                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                    </Columns>
                                        </asp:GridView>




							            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [Ticket], [Status] FROM [Feedback] WHERE ([Ticket] = @Ticket)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ticket" Name="Ticket" PropertyName="Text" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>

                                            </div>
									</form>




							</div>
						</div>

						
						
					</div><!--/.content-->
				</div><!--/.span9-->



</asp:Content>

