<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/admin_home/aMasterPage.master" AutoEventWireup="true" CodeFile="feedres.aspx.cs" Inherits="about_us_admin_home_feedres" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Feedback/Complaint Resolution</h3>
							</div>
							<div class="module-body">

<%--									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<strong>Warning!</strong> Something fishy here!
									</div>--%>
                                
									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<asp:Label ID="plbl" runat="server" Text="Response to Feedback/Complaint"></asp:Label><br /><br />
									</div>
<%--									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<strong>Well done!</strong> Now you are listening me :) 
									</div>--%>

									<br />

									<form id="Form1" class="form-horizontal row-fluid" runat="server">

                                        <div class="control-group">
                                            <label class="control-label">Filter By</label>
                                            <div class="controls">
                                                <asp:DropDownList ID="reason" runat="server">
                                                    <asp:ListItem>Select</asp:ListItem>
                                                    <asp:ListItem>Feedback</asp:ListItem>
                                                    <asp:ListItem>Suggestions</asp:ListItem>
                                                    <asp:ListItem>Complaint</asp:ListItem>

                                                </asp:DropDownList>

                                                <asp:Button ID="show" runat="server" Text="Show" OnClick="show_Click"  />

                                            </div>
                                        </div>




	                                   <div class="control-group">
                                            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ID" CssClass="table">
                                                <Columns>
                                                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                                    <asp:BoundField DataField="Ticket" HeaderText="Ticket" SortExpression="Ticket" ReadOnly="True" />
                                                    <asp:BoundField DataField="Reason" HeaderText="Reason" SortExpression="Reason" ReadOnly="True" />
                                                    <asp:BoundField DataField="ComplainFor" HeaderText="ComplainFor" SortExpression="ComplainFor" ReadOnly="True" />
                                                    <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" ReadOnly="True" />
                                                    <asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" ReadOnly="True" />
                                                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                                    <asp:TemplateField HeaderText="Actions" ShowHeader="False">
                                                        <EditItemTemplate>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" OnClientClick="return confirm('Are you sure?');"></asp:LinkButton>
                                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure?');"></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>

                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [Feedback] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Feedback] ([Ticket], [Reason], [ComplainFor], [Detail], [UID], [Status]) VALUES (@Ticket, @Reason, @ComplainFor, @Detail, @UID, @Status)" SelectCommand="SELECT [ID], [Ticket], [Reason], [ComplainFor], [Detail], [UID], [Status] FROM [Feedback] WHERE ([Reason] = @Reason)" UpdateCommand="UPDATE [Feedback] SET [Status] = @Status WHERE [ID] = @ID">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="ID" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="Ticket" Type="Int32" />
                                                    <asp:Parameter Name="Reason" Type="String" />
                                                    <asp:Parameter Name="ComplainFor" Type="String" />
                                                    <asp:Parameter Name="Detail" Type="String" />
                                                    <asp:Parameter Name="UID" Type="Int32" />
                                                    <asp:Parameter Name="Status" Type="String" />
                                                </InsertParameters>
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="reason" Name="Reason" PropertyName="SelectedValue" Type="String" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="Ticket" Type="Int32" />
                                                    <asp:Parameter Name="Reason" Type="String" />
                                                    <asp:Parameter Name="ComplainFor" Type="String" />
                                                    <asp:Parameter Name="Detail" Type="String" />
                                                    <asp:Parameter Name="UID" Type="Int32" />
                                                    <asp:Parameter Name="Status" Type="String" />
                                                    <asp:Parameter Name="ID" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>

                                            </div>

									</form>




							</div>
						</div>

						
						
					</div><!--/.content-->
				</div><!--/.span9-->



</asp:Content>





