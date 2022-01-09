<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/admin_home/aMasterPage.master" AutoEventWireup="true" CodeFile="newpickup.aspx.cs" Inherits="about_us_admin_home_newpickup" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3> New Pickup </h3>
							</div>
							<div class="module-body">


                                
									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<asp:Label ID="plbl" runat="server" Text=" Food Pick Up"></asp:Label><br /><br />
									</div>



									<br />

									<form id="Form1" class="form-horizontal row-fluid" runat="server">
                                        <div class="control-group">
											<label class="control-label">Pickuprequest by:</label>
											<div class="controls">
											
            <asp:RadioButton ID="RadioButton1" runat="server" Text="user" OnCheckedChanged="RadioButton1_CheckedChanged" AutoPostBack="true" GroupName="gr" /> 
              <asp:RadioButton ID="RadioButton2" runat="server" Text="hotel" OnCheckedChanged="RadioButton2_CheckedChanged" AutoPostBack="true" GroupName="gr" />

											</div>
										</div>

                              <div class="control-group">
                                               <asp:Label ID="lblupic" class="control-label" runat="server" Visible="false">Pickup Id</asp:Label>
                                            
                                            <div class="controls">
                                                <asp:TextBox ID="txtupic" runat="server" Visible="false"></asp:TextBox>
                                                <asp:Button ID="btnuserpic" runat="server" Visible="false" Text="Show" OnClick="userpic_Click"  />

                                            </div>
                                        </div>
<div class="col-md-12">
                <asp:Panel ID="pnluser" runat="server" Visible="false">
                <table class="table">
                    <tr>
                        <td><b>User Name :</b></td>
                        <td>
                            <asp:Label ID="lbluname" runat="server"></asp:Label>
                        </td>
                        
                  
                         <td><b>Event Detail :</b></td>
                        <td>
                            <asp:Label ID="lbluedet" runat="server"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td><b>Email</b></td>
                        <td>
                            <asp:Label ID="lbluemail" runat="server"></asp:Label>
                        </td>
                          <td><b>Venue :</b></td>
                        <td>
                            <asp:Label ID="lbluven" runat="server"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td><b>Date</b></td>
                        <td>
                            <asp:Label ID="lbludate" runat="server"></asp:Label>
                        </td>
                          <td><b>Quantity :</b></td>
                        <td>
                            <asp:Label ID="lbluqaun" runat="server"></asp:Label>
                        </td>
                        
                    </tr><tr>
                        <td><b>Category</b></td>
                        <td>
                            <asp:Label ID="lblucat" runat="server"></asp:Label>
                        </td>
                          <td><b>area code :</b></td>
                        <td>
                            <asp:Label ID="lbluarea" runat="server"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td><b>Status</b></td>
                        <td>
                           
                        <asp:DropDownList ID="avail" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButton1_CheckedChanged">
                                                    <asp:ListItem>Submited</asp:ListItem>
                                                    <asp:ListItem>Reject</asp:ListItem>
                                                    <asp:ListItem>Accept</asp:ListItem>
                                                </asp:DropDownList>    
                        </td>
                        
                    </tr>
                </table>
                    </asp:Panel>
            </div>

                                        
                                        <div class="control-group">
                                               <asp:Label ID="lblhpic" class="control-label" runat="server" Visible="false">Pickup ID</asp:Label>
                                            
                                            <div class="controls">
                                                <asp:TextBox ID="txthpic" runat="server" Visible="false"></asp:TextBox>
                                                <asp:Button ID="btnhpic" runat="server" Visible="false" Text="Show" OnClick="hotelpic_Click"  />

                                            </div>
                                        </div>

<div class="col-md-12">
                <asp:Panel ID="Pnlhotel" runat="server" Visible="false">
                <table class="table">
                    <tr>
                        <td><b>Hotel Name :</b></td>
                        <td>
                            <asp:Label ID="lblhname" runat="server"></asp:Label>
                        </td>
                        
                  
                         <td><b>Event Detail :</b></td>
                        <td>
                            <asp:Label ID="lblhedet" runat="server"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td><b>Email</b></td>
                        <td>
                            <asp:Label ID="lblhemail" runat="server"></asp:Label>
                        </td>
                          <td><b>Venue :</b></td>
                        <td>
                            <asp:Label ID="lblhven" runat="server"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td><b>Date</b></td>
                        <td>
                            <asp:Label ID="lblhdate" runat="server"></asp:Label>
                        </td>
                          <td><b>Qautantity :</b></td>
                        <td>
                            <asp:Label ID="lblhquan" runat="server"></asp:Label>
                        </td>
                        
                    </tr><tr>
                        <td><b>Category</b></td>
                        <td>
                            <asp:Label ID="lblhcat" runat="server"></asp:Label>
                        </td>
                          <td><b>area code :</b></td>
                        <td>
                            <asp:Label ID="lblharea" runat="server"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td><b>Status</b></td>
                        <td>
                      <asp:DropDownList ID="hstatus" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="hstatus_SelectedIndexChanged">
                                                    <asp:ListItem>Submited</asp:ListItem>
                                                    <asp:ListItem>Reject</asp:ListItem>
                                                    <asp:ListItem>Accept</asp:ListItem>
                                                </asp:DropDownList>   </td>
                        
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
                                                </asp:DropDownList>       </td>
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

