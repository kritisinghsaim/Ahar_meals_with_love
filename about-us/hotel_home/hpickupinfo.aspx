<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/hotel_home/uMasterPage.master" AutoEventWireup="true" CodeFile="hpickupinfo.aspx.cs" Inherits="about_us_hotel_home_hpickupinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                    				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Hotel Pickup Details</h3>
							</div>
							<div class="module-body">

<%--									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<strong>Warning!</strong> Something fishy here!
									</div>--%>
                                
									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<asp:Label ID="plbl" runat="server" Text="Food Pickup Info"></asp:Label><br /><br />
									</div>
<%--									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<strong>Well done!</strong> Now you are listening me :) 
									</div>--%>

									<br />

									<form id="Form1" class="form-horizontal row-fluid" runat="server">

	                                   <div class="control-group">
                                           
                                           <asp:GridView ID="users" runat="server" CssClass="table"></asp:GridView>



                                            </div>

									</form>




							</div>
						</div>

						
						
					</div><!--/.content-->
				</div><!--/.span9-->


</asp:Content>

