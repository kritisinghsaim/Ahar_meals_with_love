<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/hotel_home/uMasterPage.master" AutoEventWireup="true" CodeFile="pickupreq.aspx.cs" Inherits="about_us_hotel_home_pickupreq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script src="../JUI/jquery.min.js"></script>
    <script src="../JUI/jquery-ui.min.js"></script>
<link href="../JUI/jquery-ui.css" rel="stylesheet" />
            <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script> 
 
      <script>
          $(document).ready(function () {
              $("#ContentPlaceHolder1_txtdob").datepicker({ changeMonth: true, changeYear: true, dateFormat: 'dd/mm/yy', yearRange: "-90:+00" });

          });
    </script>

    <script>

     $(document).ready(function () {
         $("#ContentPlaceHolder1_txtctime").timepicker({
    timeFormat: 'h:mm p',
    interval: 60,
   
    defaultTime: '11',
    startTime: '10:00',
    dynamic: false,
    dropdown: true,
    scrollbar: true
         });
         $("#ContentPlaceHolder1_txtexp").timepicker({
         timeFormat: 'h:mm p',
         interval: 60,

         defaultTime: '01',
         startTime: '10:00',
         dynamic: false,
         dropdown: true,
         scrollbar: true
     });

     });
     </script>


   <div ID="mainform" runat="server" Visible="true">
    				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Food Pickup Request</h3>
							</div>
							<div class="module-body">

<%--									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<strong>Warning!</strong> Something fishy here!
									</div>--%>
                                
									<div class="alert">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<asp:Label ID="Label1" runat="server" Text="Please fill details to avail services"></asp:Label><br /><br />
									</div>
<%--									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<strong>Well done!</strong> Now you are listening me :) 
									</div>--%>

									<br />

									<form id="uform" class="form-horizontal row-fluid" runat="server">
										<div class="control-group">
											<label class="control-label" for="basicinput">Event details</label>
											<div class="controls">
												
												<%--<span class="help-inline">Minimum 5 Characters</span>--%>
                                                <asp:TextBox ID="txtedet"  runat="server"></asp:TextBox>
											</div>
										</div>
                                        <div class="control-group">
											<label class="control-label" for="basicinput">Venue of Events</label>
											<div class="controls">
												
                                                <asp:TextBox ID="txtaddress"  runat="server"></asp:TextBox>
											</div>
										</div>
                                        

                                        <div class="control-group">
											<label class="control-label" for="basicinput">Date</label>
											<div class="controls">
												
                                                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
											</div>
										</div>

                                        		<div class="control-group">
											<label class="control-label" for="basicinput">food category</label>
											<div class="controls">


                                      	<asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Text="select"/>
                <asp:ListItem Text="veg"/>
                <asp:ListItem Text="nonveg" />
                </asp:DropDownList>

                                        
												</div>
										</div>
                                        

                                        <div class="control-group">
											<label class="control-label" for="basicinput">Quantity</label>
											<div class="controls">
												
                                                <asp:TextBox ID="txtquan"  runat="server"></asp:TextBox>
											</div>
										</div>
                                        
                                        <div class="control-group">
											<label class="control-label" for="basicinput">Cook Time</label>
											<div class="controls">
												
                                                <asp:TextBox ID="txtctime"  runat="server"></asp:TextBox>
											</div>
										</div>

                                        <div class="control-group">
											<label class="control-label" for="basicinput">Expiry time expected</label>
											<div class="controls">
												
                                                <asp:TextBox ID="txtexp"  runat="server"></asp:TextBox>
											</div>
										</div>

										


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

